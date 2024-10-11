Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233E52AE7F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728647754; cv=none; b=KXRrYZvMhHNQuAzKIDmlJpI6LWzbTrL8HDxjldgxifJfQAh8mUSPx4hmgi41ksZXtsNrj1B5a/dGwx0/99vJw8gJC5ycB6K+enVJvESCHnohkvjdLgcaEc7lxOAAlfdQ/YLRUfLJtIq8aC2rTIoeuvrFZNPirVgBPGt7vw9wgHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728647754; c=relaxed/simple;
	bh=1yzMOiaAM1n8js7MWisPBkf+8PwfZBjQen+NOfHu+Is=;
	h=To:Subject:From:Message-Id:Date; b=jTpAcnZeUGhb7O6f+37Y9P4ZZTEfCKcFd5GIIJApa3VHSTqyp8QNENDL2NsRaVe3/xuwnDd8MY7iYboqbtiurxHa5q71uzuMwKZ7V+kQS0ppS7g45ljvVSdSZt3Qt6Yz7DwMTdnbdeUn2fm24czDtmRC5pEGTAh/zwgQGSGozlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwcJsBm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwcJsBm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC73C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728647753;
	bh=1yzMOiaAM1n8js7MWisPBkf+8PwfZBjQen+NOfHu+Is=;
	h=To:Subject:From:Date:From;
	b=QwcJsBm20gr83W/KvOVJUPPAuMEvW1Zu2ldPXnh5z0HfOzWF5CmDdxKpX0bSz0pDU
	 mHTlV+UWvuijNdNrPCAAneMbZ9gTEHTKSvuIa0RrG8t4fd5613plISbxVbs+7TqZGX
	 d2/SKFTA8x3dmw4GhASjPOD7oos2DJS5LvacafMGCyg+cmwKfdcQxk8jglHwXX7k85
	 2XCQfJsnPi5dUjXQypVKoq31TJEbq7tfZtl2wQTLhNeqEezMngvWn58Q4auvl/HNQh
	 g9CzUYXE8pVDpbPvfbHUt11po17Sd9wjhqz2C3pu3rZGh61qhVaaH8xMjexs/1TQuk
	 vIZXqYAW/pZjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C994CFD35B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172864775360.18395.7322565111459927834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0f84c64bc8401dab3d67a0d0a2d010cd50b658228a9c4b2a74b394f84486a3
Date: Fri, 11 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728647753
