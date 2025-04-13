Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4348C13BAE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744555794; cv=none; b=OwxO5yqSmyUnkkTFw8sLe2QnHBmIXbi7Y9jOZTbZT+pmxXRY4fSxqS6rF9zI/snK5viiT9QLbP02EjtkwDsoquvhD60+YPijybfskVo3letkMVFO1B83tKicktREJlsn68u7OhryoqKrgDEO6KhicH5rtZwBAxMiC93tPqKNQGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744555794; c=relaxed/simple;
	bh=+kHmYt6r/Iy3WXjQddZ5HI4BHmplZlxuw3x3CVlb2KA=;
	h=To:Subject:From:Message-Id:Date; b=DTMatEyohAjNvys9YQJCWRD1nf4A0hm1e8YWqmfQSyM7j+y6zCnMuwJUyzTng5E+u2KCMXEvtsASjHk0F6vxH1hLNe0Q7FAaVbPG/nuQ00DAI31OPz5rUsupzDVaygcq3YbzmckE/cvovhAki7vs0uYegA1yFcxBLvYP3hzFJMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEM+Vay3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEM+Vay3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED75C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744555793;
	bh=+kHmYt6r/Iy3WXjQddZ5HI4BHmplZlxuw3x3CVlb2KA=;
	h=To:Subject:From:Date:From;
	b=VEM+Vay3s2flS9LMOubyXI1RpMAlO9UJqgdDm0gUSU29C7dfnjOba9wLVexqKuXda
	 2OxO3FyYyNxrlax2A3D39QJSeN58wC1jU+SJyakbLhIra447wpNTkg1kOx50xIWxI2
	 MPuOW8fC23A6oyt8aAds+DnqAJsBKHPR0KE1YI2rg8JCfVH0qmUs9IL7wZmh1GCUAI
	 zxgNmqNLjyDPnI7ETKSDmeU/6SeWM2Y/QAREnqqUAc8knRCm1Uf6PFHQys8/xuFT/y
	 mrDiUquObUPsYnHW+xRRpjB/mP8GVQC3QUF0uQoaMGaMuR9SCYOL6UG6XlXN568bF+
	 3uTBhl8xL2e4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9497EC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455579358.23702.16040651306944255929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb7be69f13549ff114e9907d9804ed02bf50aefc6ac5eca83f02c8947b09bf1
Date: Sun, 13 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744555793
