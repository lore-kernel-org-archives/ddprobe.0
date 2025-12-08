Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97892F39BD
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765164774; cv=none; b=P9MrBGiaYVN04LvqcIjvyxEP+9GP+pciu9jh9ri8xgo7UYH2tnoAj3QS+Ln97kUl1XZaC62hinWmzRbsj3ZhPvrk54t55s1qIAUJNC4uKPRhb8aI3plP1IhPOBy2lDqhnnR8rpttn/muQRvTVet1GKB8ozSJxVb8XHfJJHufOXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765164774; c=relaxed/simple;
	bh=1GOrfwEfB+mVoqlFjvamsHyO4DdJ787ayivt4MY1d34=;
	h=To:Subject:From:Message-Id:Date; b=bR8qrTMJdQQ+/jyjUGCmMqM6mKKA6CF7tIR7XN5AxWxpYUmlhVQp+qNkadTU3vh9gZSZX7bpdfRLVRySmJ1/Qv7GNzg3LP0cI9Auyr2R/Csse8ioeaAoW5vFN5XCOTZoq9QaQaeqDKU2hen68h8f4ebl3/Tur5RWR2RdgwfFmg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoVrU6X3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoVrU6X3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A048AC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765164773;
	bh=1GOrfwEfB+mVoqlFjvamsHyO4DdJ787ayivt4MY1d34=;
	h=To:Subject:From:Date:From;
	b=MoVrU6X3Mm2+j7OxkIN4S+yt86pymTl845YrfGz/7lPLHbLKNLFoLxPJRfkPz9+bO
	 g8RfEAV+4orEXsc7VOgFKJhiewnn2c9C8uD2YgiSlPakWLCA3qDc8Cu5ICVqwOHcdh
	 Qm6BZ98cye8tLBGG9PqapDmRcEX4WszjDsdAZUCgbP7sMvTw7GnL3muj68Wkb+TxFg
	 R+nZd/AlkA+R9CmB9QpXW6OSHtN2zVCtD6XQw+qu8p9GuPxJbo2UmOzMBfj/pCfJ3b
	 N0zVEoiIPHzEEgSo0omcx7yJWaj9xMLuNu8MBSJ1LcbxiXa78DxXm6P5Pru5dzFKZK
	 aZljwxeNm5DeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB6D3B7E1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516477358.10116.8278931972090219669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9b55441bef5c6592429c2b11ef8f65ac884939f9c133f5fc5166b3a2615506
Date: Mon, 08 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765164773
