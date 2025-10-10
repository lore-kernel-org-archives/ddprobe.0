Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228A327B51C
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760137794; cv=none; b=JYiEh3Jp8TElGD8UzBIl8921oPvAWUuY76tDmG8veULKU66DaOWoE/m/ZCmeqIPDTamOEFB4t7ZraQtKxgu9fg/5nGrdfM6qn+HRpjXcY0AcPaEe9Q9prk/UwlWk61Wy13ESziZbi0lTU5Mw00UkOoe85BFiGO4B9mzOxZFTnKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760137794; c=relaxed/simple;
	bh=3BXEZP/RuLATgoDKeL762XTlXDIS22ftw4iiCgHhRBo=;
	h=To:Subject:From:Message-Id:Date; b=KDk3yaorzAOZUlU5byteOjo1T9bnOdC00PLUz5rbhv26OKwNku/1vUG6UpvObz9TLW9HmNlXfio12axk+ucK+Zmn+SCSPGmUBz4W2tKTymT6PeHa4IAhXuT6QecDbmHKRVq3uNc4v1XTOYGAbbqhPd1I4aqOuBlmlsdYlAqdMgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMLso5q2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMLso5q2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B9EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760137793;
	bh=3BXEZP/RuLATgoDKeL762XTlXDIS22ftw4iiCgHhRBo=;
	h=To:Subject:From:Date:From;
	b=GMLso5q2Mx//TMJA5/CHmiunSEuvrPy2dBDniZSJtJC0uQTr6PZs3z0Y4JpmfDu6U
	 /RSrnf8KCB/OgqKR+Kgi0OIBpAF+BSQKh6xu67ciUApKrLBrLDT3wv3MtBecGEQFew
	 CN1e1PKnpIrLwm/d2CErCYmtnhjVVC3gqd2OGVTgNom+5482qGYeJw5aA84ZTt3hzC
	 0OJu8T7DVXqoWSi4CvdgEMahN6ON/LIlz2d/qPW15pMRHQCQ1fdJVc4+/i079ONzLK
	 x1DFLQMsSQhdig8slHxV1jm4cOFaZWT7gbrxv2N8YQVnSk6RGGn3THx+iaUCXFWdON
	 mdFmvuwlKMFlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92166CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013779357.31649.12986712431964839706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805d1295171882e4810a685329058fe730e1468830fcca2b20f11ca44348b3ee
Date: Fri, 10 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760137793
