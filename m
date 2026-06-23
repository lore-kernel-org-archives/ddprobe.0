Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DC9388E55
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782237394; cv=none; b=U59qjdxwcZvqJBnGXnlESjGpGtVHiV+3K6y+p3LlYAhsxtaNXnaqRSP1NNckv2d6dSrBXhJ0CRIX2NKrz14tsoYzaGERuz9qQZpKWCVcwzjf7JZalNDCYh8IejsJ1w/c5dnwQdA7889+LSq2VNEm78MA6KANDE0fao0cAvQVIYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782237394; c=relaxed/simple;
	bh=Pz0M5WhFTAwHhH5W8l8eaPPpx+n+UWE9XHFCax1gNRc=;
	h=To:Subject:From:Message-Id:Date; b=LvvWMqUeEy8sAcCAbzatn1PmvqlmTq7zzaMIspE52iF4bRvnzagemFGa6S1a4kQM2YjMLwj3nSp5ZnttplGeFuw1mTrtH3VQ7E6MQasFvrEPZg4czQjKjAnv4KlsgH982VAzRUdaHd4IT/KjUC1cHrcZ3BXJW7VnN+6MmR6naFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Anc7uycv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Anc7uycv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9409C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782237393;
	bh=Pz0M5WhFTAwHhH5W8l8eaPPpx+n+UWE9XHFCax1gNRc=;
	h=To:Subject:From:Date:From;
	b=Anc7uycvYUmuNiTr9ovNqF0q3GsxwopgqITfcZNW/EZOv9yJqadAeAle0fjXBUSpp
	 BkwDhrK4ZvP4kV2SSSTPeKCxyXbel74cFaBtdgQ3kXD/AiwxvjzLDHNp48S3pz6YGP
	 +CiNqWgy7+ChDBkIxyL12IFk8kdrncyccZoeXGoywciT9cBof2HlynZNgMixW6rys+
	 IboBHF+PSbhyiYDSqYk3NK0MJavPbTMemfJcITUWWy1iBh+T22lbu9Sl/Pg9thjhXw
	 /ozKNGgiyaLotqMuflXy9stqaHwxxqSg8H52X1hcq2P3VSxGVJP7OqLTFmFfjqkmHO
	 SUOp4WBPQcFFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9BACD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223739369.30756.11611932185502697298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c9587d54b36795b3dfd29cd68bd231ddd652f3ffa000db79f421f0b1ed5e74
Date: Tue, 23 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782237393
