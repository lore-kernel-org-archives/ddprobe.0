Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C51C1632E7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767132834; cv=none; b=QHGWUcAKisVKg4PBqOQjXbxPG826YQZ40ZhBanSjCa5IVHGpEcm51BG7BYJJM0n/jjS0rd/zZOhyN50zoLW8Oj4rtKzxf2s0U3XwNHLVPF/CUC+w7g1L1Syjbw+ilCGr9NAVSDyqGBr3kIZQMZkz0fzCnJye91Fa/sKSqM0MzvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767132834; c=relaxed/simple;
	bh=DGoy5Md3cJ2jW/lG/99Ekf06HfHGrjucbbW4X0HSG40=;
	h=To:Subject:From:Message-Id:Date; b=AlYlk0Pw9y0mzoO7aF4OqW+9BPM1G4GITgYbMqz5pv4RfisxhKJnSzyz4NlZc25pYzdGZsZS1po1vQsYdfExNrg4SRe+w4ym4CYkRMnqHWze+eKIr2LDbFSd3Akih+d7DPZ+P40mztMnngdKI5lY+BnaaRQ3LXmTj3Lb02htEvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0ng5tw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0ng5tw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C7CC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767132833;
	bh=DGoy5Md3cJ2jW/lG/99Ekf06HfHGrjucbbW4X0HSG40=;
	h=To:Subject:From:Date:From;
	b=e0ng5tw9IHPHdBc3UJKBNUbXr+qXhdL524PKYsywrUt32ZkBCs3nnZPkUmOI4UZWe
	 3sF+rScMg1+PchT87KSZfuxi3HFYtRMfLyt9rvS9YxLzdGs/Vln0zIBVoxz2NXnsiG
	 9idDimIIFvQ41na7DPrJEEBBCUngMwjhSFGuHYJIJPUY321IuiNMDwk7CyntFil4G5
	 fBXC1IjK7eeP9++OXMZdM5LQhFC4nSnkOHfLNnjbH5IxbLTuqsJoR5JpVJhXoFmOv3
	 FMORbtBj2JlmfNNRyOymD5pT6z4/G7O4PV23Nbmd2OZryTx87b+t6zSglq7954K6NM
	 ED75p1IQSfToQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95311EE57C2
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713283358.31221.13764173076126211555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf7e0039e744d8b838a8be3d763a91a5ee0b5b0f170d63b975eff42b66dc845
Date: Tue, 30 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767132833
