Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B56142E83
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758328794; cv=none; b=Kz9541eyVuCAAm2Hw5rtARfvCubYRbglGDADNT7Bf3nLE+roSZOtAUfArC6h+k9Q4FuLbgbKJKsWTVobkSFNfhRLYrMuaQga9DX40bOubzIVaVpSyJVJaAjlmvmzd1GNmN8vyQ0YNc/00GA5GrXkgfqNxs6qU+aTVB1fyVolU3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758328794; c=relaxed/simple;
	bh=xI03Pj0qIi+GedfO+w3RO+9ZTyfzMwBplIBTMF0h/EI=;
	h=To:Subject:From:Message-Id:Date; b=EA1etHLJD+KhCL0+xlR4o021ZRM2Hasq8ffZ/ITAaibFOVEBW/cyPCUFIhLoGKXZ8CyfkR6zA9JTdrxok1nzvaMIRGGMNBuhgZSKdTNtt1AsvII4KSOdQfoDVOP/OueUglbqHllWkxfPkVC1JaS0ctRY+tNhRoA27ly1ugLXEXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjspKNGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjspKNGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1487C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758328793;
	bh=xI03Pj0qIi+GedfO+w3RO+9ZTyfzMwBplIBTMF0h/EI=;
	h=To:Subject:From:Date:From;
	b=YjspKNGoDWEbt8F+b3LPulnZ+3doBjwZLCE4PG7HdWjtHbLLtXJ/0LD49P99TAs/a
	 EBj82yaoRPgiZ2VuHn26UC8aRgNRUUDrpvZQINEIryMEj4wueRB0qeN9/dI1AO/xCI
	 lttT/8aw1NhBV0COpUNM05L224wuimYQZQjYUS6AdJDzkpbfRE+p1DuCqCWmhMb7m0
	 AHbAPh8bzotrhotl+WkgCJcO2f45QxEQ8cTnxLwDK+MVvpJVk40u5G783B7cFM5qPX
	 QCeEoGZLa+A7WJqBCRLSXBxID/2KbyMR+2tzSNW9KDNfCemNODPI2tIjoG3fW71H3a
	 rR/ehjm8V7xJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB5CAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832879358.17466.8381482364764225180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c70290d7d6d3a81c5d585602b118ee4333f6e7d1da1bf11220ab823f320db9
Date: Sat, 20 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758328793
