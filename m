Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA122FD695
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772297094; cv=none; b=HZua7/i53dNCQohhc4Ani30Jgdp4yn3XTFiXYRtcmxFQjLTXyCbiVeyRqZ4q8X+daRk7FtxzOMerD5j41XbrpH7mQtdM5j5hxnmT2lZdt//bpjcPCfgiovDp4w4brsBBHzhTZSfrkiPpY0E/59nlATilfeI5iD8gccAMM9BOuw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772297094; c=relaxed/simple;
	bh=cUQ7/rBvgxjTYoTUf4n0wliHEAgpH4+mTKNN6rpaBRM=;
	h=To:Subject:From:Message-Id:Date; b=vGEbwxgoSzs3IYybwgnqitUVT1aF0HLuUTI6HTPbrPr49vtpuYxUHRK+D+kA2Tc/6+PeMYklO5XpEHF70p9aWzQU/trrm2V1eZy+NuAWIHN39IUwfi3ZgsMiHFHcTEMUuJTYifpP/PcgbB4fZ7SlZhksQAlVPDhR7NJ3Wv64qKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qH8kKITV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qH8kKITV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3FEC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772297093;
	bh=cUQ7/rBvgxjTYoTUf4n0wliHEAgpH4+mTKNN6rpaBRM=;
	h=To:Subject:From:Date:From;
	b=qH8kKITVCULYC7CvSUM+AHutReuVUpcKNCK1VVLpFRF8KQ7QY+Tqu4U8abyf4O3+c
	 1QtWVRk0Do2+JHn3ouzphNQTvTb/e2xWntPlkSe43C5Jq4DcxtT6TJ/tswwpOXvvqf
	 apA5iO/2B6reJhRYksKGCCYmCbwonZLpx0NjB8jhBJ3FeZ5jzUzbfJ3/VlSUzcyAgM
	 MDFCFZIZsX1xj4gjs0/leOPFDmJILGAAwExZdiwjZAwrCVEPxUv3EFsnPVFonsZpqt
	 KjHC5SVQ3JyiiCNFyXujYLJq8z5NW3wGguRVKDJ1nkoLEzsgw6AMzi5g+efATzVTQw
	 FtDHQax/BKqTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95273FEE4F2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229709358.17285.1402997521451083161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff39c326dac7f4512cfa160cf3a03d95c7f0e41a4de1e512bb5b671dc544e31
Date: Sat, 28 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772297093
