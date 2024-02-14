Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E5E2905
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707875897; cv=none; b=Auag1naOFtFgSalh6clfq3xnIfzqr9dJSf0tY92jeAc5ouHkVU8MAqJJprd2ZDsgjiQFw/2QwNhCZcRrCBSyAlNXoCv9GaGnv/dBijtvyVu16paBt7nfD4J4HRCrmOGTC5BpdmhXnDckWdnITy1Vdq1Hi7pFpgdJ4fYaSbDnQlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707875897; c=relaxed/simple;
	bh=TlhSs1GxqFZHb1e3uqeOjjYOxeWXVFTRRmxLIb8FIZI=;
	h=To:Subject:From:Message-Id:Date; b=ESUWPu/1A9w3dRYTZI8IG58uVq4Dftl7dtWCh9qeP0RLq+1G6xZxBK6VwAzGD/9B2pIoizsz2bxIrLBOA3XFNsGXMo+z/65Zc5DgczcCk5J33dLwZq14WJH9/63Ivgu/77rVVa98M+gycDj9qT8Bab3TsvCjlXxtHgiA/U+BGO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4bIIQU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4bIIQU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 859FEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707875896;
	bh=TlhSs1GxqFZHb1e3uqeOjjYOxeWXVFTRRmxLIb8FIZI=;
	h=To:Subject:From:Date:From;
	b=S4bIIQU/Ov5DxR551GD1aMIz95ghedDnsbg7ALSbyi2mC95ae8Lq19cTKdmwn1jE+
	 Bv+JMiyzS62PWCNcmsgT8D8t1wfrZAcTzMUcT2f+tFMhas0qUEpDmqE/uKuruEbP9a
	 +0V3JFx2VF9juV8fmrH1dSyYAJnVMW/JexzERS/+6V11wo4SMqNuB6xF6TpDgOQB5l
	 Vnhqvm8bH4LV2VjIbX3B/YOBvUh7T4l07N5Kxw8Qf3M8Af4BtJrQIez3q7wzdC8Zkm
	 Z5lmDcf8sLA32NHlCXY5w24RT3+EeyFWUUvDvAdBaQfH79C9/CYqeISXtrwsF7EPuO
	 4TIaQ37uxVbDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BDAC48260
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170787589637.15701.4569002575742176421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cbd022814a14704e5a5fae2eb2483689e3a6c60f5ffa9b497c784e675b7d718
Date: Wed, 14 Feb 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707875896
