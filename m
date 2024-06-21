Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8160812D771
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718949743; cv=none; b=F2/vMOPHbDB2nE5hrWAMbGbSYonl3prj0iM4IHIAisdCb9OnU5I/KRB0V+YGhjoRbRL04/DbCjRBD4Tufo6wH5yd94JuxVJ42tKfThtNHXyQS2t/+GqfZ7srJR9uHT5Qb2Nxg1nrLWbGUBtSKhmi49VIFh7erAP0MXQvBvt6OTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718949743; c=relaxed/simple;
	bh=KWOVv0d0lAqNAoZvkVykxqViy+2oHzdbW5oy/PxHlaw=;
	h=To:Subject:From:Message-Id:Date; b=r7AV7ppEGdnq1W8SuR9wq3YqcT7wrYWHQ/tH0b+x4Qees6FafIFuwvwlxm/SFMHAHvuBBO/4+nHhK1JSAuC4wXPM8TXuFSqJuG97Ha7CuuTf9H8ckHFxUzGeiqRxReTr44GSUJU9tQkBqq4WjwIYUKcpNJGF6XvstaLyMtCVhR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmUHSU1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmUHSU1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4969C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718949742;
	bh=KWOVv0d0lAqNAoZvkVykxqViy+2oHzdbW5oy/PxHlaw=;
	h=To:Subject:From:Date:From;
	b=nmUHSU1Hzh2Ds078ufXswWJxBq0UPetbrT9dIV1WevDBfoHkcNf1rOtfol+rutoXg
	 EXZlM8wJ3xitl2z9/qdRgmJU3U+rMGOxroeTyfpCPhMMll8Oyy5D9uvkcEiu4mO+qA
	 47f3sbFYNpUKKqWm9dV7uQCoMocxWPAvwGJiFmbqbixHX0TAQCp7k+EwkdfMdMAdkm
	 BTbWjH/Z5lhfgRf/hQrd5SQDnx5vh69A6INCW/vI2NmQamcPrmuBGpu78fVNzGAP7x
	 B5kfApnmv4z49jCX74s7jUqdRwygU/BWLPQPpsQIBDWclw585zwTHtw5LWE0g7k0nJ
	 KqBy7n0M2fdUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAA1EC2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894974282.16196.7652161963219053204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d353a9fbcca1c674535fbcab191b356412c67432904654b10ecc805285e0a6ec
Date: Fri, 21 Jun 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718949742
