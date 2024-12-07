Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22815481B1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733545554; cv=none; b=WREQBrcifPvPBerTxkJmJF00rwqNbKxWH76qFVJ3i9BFcA2YWqqAayFW4HTaWyJUBjPb1jSlCoGRJPJXg6AOlj7k5lp4xa6XR7kAegcMr+pkwA6n7Qxs9zBQTXJfbbYbugzrE6pUUY2mFmjlf708hXPVW2HTeR1FB8gfJz7qYro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733545554; c=relaxed/simple;
	bh=VBbn/WZ9A74gb94wkCC1Fo9tY65fKSlU1JmpXoufPAA=;
	h=To:Subject:From:Message-Id:Date; b=nz4U4bBMiW5boc7rFdzluLCItlhBwJpm2I63pTyJY15Z/gRp4ioO+gAh3PeHKD/IPMAnAE+UJscCKQw/27bOZw2y+EJ1632TVnNPuH0M2qItKBlEw5RDXBm4xjP17hSFHx2p0vOHeJfd0ELDKkoaN5n+jgvmfIKSa8hG3u22yjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6A/ZvcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6A/ZvcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80DCC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733545553;
	bh=VBbn/WZ9A74gb94wkCC1Fo9tY65fKSlU1JmpXoufPAA=;
	h=To:Subject:From:Date:From;
	b=p6A/ZvcTAlCeBv0ZD3IGPU4iwKRO8fMkjWU3B3qzttbE10JewJriWPRtmvCJMOjtz
	 iTHwMuM8fT0k7K7KXN6w6zo6kzRkr7+/Fs8Zgre6QzkEAtx6wyTt+uG8LTxt9jhUcv
	 az1y6YmpygxycDrajp1wOy5IqaJBcrw7UUMGbzeuIVfgj+tMi16NvQCFNXmUnsFUzu
	 mlFZZDAMb/H4zmV+V/YHy0RCao1FYV3qtYWtpyXfg0suFpIS6Q51CKCA1EcRiMvxd6
	 WCfB65PObZ0ROe7T196mJ93rlC+RX2QiSEQ93NWNlnTtAs3c+vz5bqlkvh5rLYa42m
	 qWRL/rdKWiqEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A45E77179
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173354555364.20307.11727168073281390283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21f9ec921365f07b85d0e748073e0b50c8afc346a3f2b5c61f28867799ed3bf
Date: Sat, 07 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733545553
