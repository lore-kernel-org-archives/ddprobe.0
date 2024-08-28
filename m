Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE0674BF5
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724813754; cv=none; b=SY4SpFKAllgHK+VpL6sgztl6uN1UN86tYzRxbebZ1EZ2U5QbjIjnpa137DibcPk/6baodGmj0q4O7x/r+ZrmHiLwVajhoRXQjxZTfwIQmC++4P7CHo0P3aAzixZt7uUVjMgrnlENZemeBoQ9V2/D5JIZWwud/GV+PPcNd7XFI2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724813754; c=relaxed/simple;
	bh=44Pv+r0sOZkEviZ7esHN5DXwRAdis1YPy+rvl0MsHL4=;
	h=To:Subject:From:Message-Id:Date; b=a181qaZFHrW1NccHXf2YjjmtFBHtllolRK1wsSRL3NQP4De6Zl5c2BMfXvJe61i4HJec+pBImgGUDo4wEkgl+yz7FtiZQFP7UsmwUVdmTYf2unCMobI1Ua7GMRR2LfXM3atlpP384GEyvsh+oEkAD0YJw0FdDcSiWOL+EvnWtuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggV7eweD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggV7eweD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2AFC4AF14
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724813753;
	bh=44Pv+r0sOZkEviZ7esHN5DXwRAdis1YPy+rvl0MsHL4=;
	h=To:Subject:From:Date:From;
	b=ggV7eweDNpnCNNyTWwf5R+1wFSszaGiyrZiB9Eh84qQGZn0qTl9m3TCEOBLv0aWLe
	 3ICCsLLeicUkcs09WQC9s98NXNS98fdFWdZBiIgvmhd1hEHRr77tvgFT01we4Rt5II
	 rRGx5K+J8VUMm2etWr2Elbu+ye5r8LrnRB1lB1p6Vlm3awnthsiXkl9qCRQ/SvbPKV
	 WkaGC4QvFeEImZh+a2TDhJsNXrm2p4CJgZRooHoGmCBfWDyy1OIo6Rt1A1Iey6Tvsk
	 0qHtQXmB5wQaO8zHKzMWg08adxJuVsa84eNl1WlkHm5L09Emx6CiQC5KibDSkbTzwt
	 gOAd8+b5AHupg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EDFC5474A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172481375366.10444.689490465161243836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4e3b2644b48c005f7d3d4ffdfed08c07723fd7a870ea860c0f7b992b3be493
Date: Wed, 28 Aug 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724813753
