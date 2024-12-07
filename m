Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F6D22C6F7
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733568354; cv=none; b=Hawn2o9D4W0/ySeCTNUdPcKLMuLWRIhG8YyEwP1zdZolXEjXJ2z5Md4EB/3fNrT6SD906dTwFznIeKoF9yB3aBOY1HzgasU/RhMc+hyKPBI30OhNlOX8dWbIxx4uykueZJIOKsj7IYsz780rnyz8Yg3So6u7/FEtRilJcX3Q34Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733568354; c=relaxed/simple;
	bh=lrAkBv3jtswFeAHeqeFomJ0CPI7h/lrx69U4PSlZ87c=;
	h=To:Subject:From:Message-Id:Date; b=QDW+IZPjbpZl3Y6N1E5BkCkFlpLkgRFz4SNi0SnpkbFw+VjigQiYtSStLpgtleGYnzL6NKGSozEOOMd65z7J5iGWXOuV9Ok2wR03TI7zynceOiMsv4aZAVi0uxYoqg8KvDlyiKmkhn3cG4ZuY3v+3ZMYBXe+1AZMKkqRvL4sjlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osVBD0wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osVBD0wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9438C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733568353;
	bh=lrAkBv3jtswFeAHeqeFomJ0CPI7h/lrx69U4PSlZ87c=;
	h=To:Subject:From:Date:From;
	b=osVBD0wzLeg7nqqBM16fwe4htLta8qH9A7YHEIAdlKZjmB/Q7YvkjMOTqHe6fo5Mw
	 YbP7XKbpzPBWrRUI3SG1csETLss34vgFTqWRcrtYSr610mBmwr+c91LlQLgGbsW07R
	 7Bm6vccqcN9HxBudYsOBxw5cEyUBdfD36i2a/QObwtp9nqbDtDnP8jthEePMT7xtuL
	 pDmoIXFkPjgtluDuaq0n//7DKQdcMuNVr2dcJrM//p98qgyST7g5XOLnxz05lfkQF8
	 1UQ9HyZIoR2cweQuYsgXmfkSM5VS33R8euhbLdDD/MEG8TdtTy2jjW6/XMKMO5/t1h
	 CBaKDVSOOfj2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5442E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173356835364.18328.15236477384796062484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7729b49effa7dbca555d9eb32664ac0334e0dc5a5e98723b2a0f7c34f173db42
Date: Sat, 07 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733568353
