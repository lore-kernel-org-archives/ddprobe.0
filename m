Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3299012E7E
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736634354; cv=none; b=LTGq1hK9AWrU5ge1gUsD/PM8+Sr2zM3VOiMaTirVT1kfbB1moNf9GIm9xpHVQ123HaIoGt9wCqaj3c7j7ALKISmsFIDsq16S/xHGnQc37VHcRXFo8sq9DbZa2GtkyNpZBfxWu0ZzQxNtJydqgqpgpHRRO44kcn6OV96VQqxkYMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736634354; c=relaxed/simple;
	bh=+N2J4UKW0+TTbEPC+5v5WrEbIGVEm9IkgCSIba9PY/Q=;
	h=To:Subject:From:Message-Id:Date; b=BdEltADwZV47KPmB83Ny6Gm1AYudAYSOjT3vCcSN9Ku7ToH5aAmutjBElzBmn/mp+itHPkTj5gvX0T8NPSOEhmTUwCZUJGrQu1LZsL9sjFq/wpj0jomhnRmBH2nxvp2kB3Dz6x/9i9uK9VV59fL2XpcrS1F8PnM7J3VjW3wKGIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XW1EbYc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XW1EbYc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30EEC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736634353;
	bh=+N2J4UKW0+TTbEPC+5v5WrEbIGVEm9IkgCSIba9PY/Q=;
	h=To:Subject:From:Date:From;
	b=XW1EbYc2UoIFPUdbhIQgxgp33jdtvce0gfSky3d+KX1GV1J9BzRPVCrPsVXnjQ8J9
	 sZ3ZwlqabkYleO1Ea2/84gqGjj1cYaFHLuoTFYMapiy/lzecdHYagRqSSvpzo86+8h
	 yuRGNRj86Nld5qKhfvZWpjj1Qjt0ncbND6zLadnhMGTVIv+MXVnf5cwyWSj0PmJoLZ
	 wIMorsebBQ/6BZyjbDedfBBtwOmPMcFuQAc+N4dsbrmPXLuzO0oF7jDVTYfnimATUc
	 unyWLM1JvWyDc9XxcbrFyxNzczmo1Ywi141j5PkiEuBeeQqm4HVDAwhXqlE+LK6UCc
	 iyfiNSGYMtExw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90828E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663435358.15030.11806243246279718499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f486808f0a6bee6078c5d760e7ee1c7c2b9951433eb3306f763127d173f668
Date: Sat, 11 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736634353
