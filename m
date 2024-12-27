Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBA117753
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735315554; cv=none; b=XlUWrHnbCMRVUIyPJvS1g/c7HbZnRokdqRwz0orZ5g1sFA1IEmH40tfbkgmYoRY91eKRYnggGkaM54vz0H3YQ/dzVUqn1fHshopDg1DPLwwVq156p343UJfx3nVE/j+kCmaBIo0esYVorjIarZ7krqF2s3pLs9LtMUEjIOfRxgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735315554; c=relaxed/simple;
	bh=WxdEszlfhUbxr6sP6zFECbdu6Pvjc6doRyifCjnMoxs=;
	h=To:Subject:From:Message-Id:Date; b=K1e6lb+wgPeolfPx25bPUPSlEvhSJu398Tw+QQCO4Pi3moHE/y6cZbszb/pwRZPAtpn5mEatHPlCp3eTGxxYEaV7GA6dFx/zFKwWAaf7rkhxyU94dhOwfvD2sfmaQZip210YfDNXzruJYZp2lALU2ydu5VcjNbr6e3f4gmgeaPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erulbBAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erulbBAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBB7C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735315553;
	bh=WxdEszlfhUbxr6sP6zFECbdu6Pvjc6doRyifCjnMoxs=;
	h=To:Subject:From:Date:From;
	b=erulbBARvVGeUrSgW+Cln0gyw5PSigNAioFwVGwL/yUWr17i9irUXJ60xWFu5yySf
	 6W40Wo7vYGwxCJKMEVPSqmHJz/cqSbbUqxxFy47gDsA4YRQdGcLNamJWY6swx2F6QX
	 o9QtWDK0cbaI6HfAPxObo9rq9LKUIVNHcvq99hDzG63LZFDEgOWNcr55/joeEhhwhq
	 fQsC6rw1G4PaZ1urcsJHN1nF/zFgHx26YMRJw3tLpsIFbCTLNC0V/c5NYlW0ysaCFR
	 Y/f5B5uezbwrBFBEJ5pjXfwyHE0ag35qKRU4UmAadgEEUhG+IZt3KgivjM0E4BPwQF
	 1se0frNcY6CEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F57CE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173531555364.1843.13028806937756946847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7cbaf97272baeeaee65f6bac8d77eb71ccf31852a3caec5ed9cf7683c7ef46
Date: Fri, 27 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735315553
