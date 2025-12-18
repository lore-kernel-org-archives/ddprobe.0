Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26735221FBA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766087634; cv=none; b=WtpqC47wsovVQrw4krTRIHAZc+szj3DJDlFP122/7XcZaQaGqZpS1n0hiBSY8g8Xt7Z2/aVPmVtNl+b5XY4Er6B4Yuff1FPDZaMQ3oVy8y9lG1DgLDTgAnjurIJxjoIXnkqQzDbNrOQi2sy9QSHMvQhPznkJX/Rlc1C/pKHIHiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766087634; c=relaxed/simple;
	bh=24Zq68Z0m69/bCz6bc+4+H+XSDwIKndUIJfB7orX/7E=;
	h=To:Subject:From:Message-Id:Date; b=N7AaCuW5Av/rWpe0Iqxwdnqgcc3vwygSzrfxUbLfWuiuep7OW6dcH+44FLMjL005jBC0jQt6K+CMaEiAS+po8+UHdTUMuzqgAFDeN7TT0TWnnAFEHlVeevtEryGyIIgNrbQWQoVqdJNNviOGoCHI1xXLPv8K9E0CEMdcNpCIdj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+8IdgoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+8IdgoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E9DC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766087633;
	bh=24Zq68Z0m69/bCz6bc+4+H+XSDwIKndUIJfB7orX/7E=;
	h=To:Subject:From:Date:From;
	b=n+8IdgoVHSB/v6F4rTpd4USObJylt8PP3C1roYCrVu4usL83/4GWSlgnF8Zv0e806
	 6eZzaILgpks/PmQcByS1hKiSmQSyG6R/MIYR15O0O8ttm4DQkqJTK3NoOjeEi4Thlo
	 FEzlGWGZHe/j29kSR+fvWLtK2M81DTvTp2JWExipg2D+vBiTmv1bztt7VSIpbR7m4w
	 Yo0VzaKl19PpVDhlg0BppdWPmgvcorHGjY6eY9b3yLP/4Ee9dn7rwZp1XwJzv13I87
	 +22UsSP3XI/Vyr9/Mw7DwtVj8WtEKFEDpdE2WeZ3mqtW57uZZtZAGeN0iB0QO/Kt8i
	 Jyl+pSP0Nc62w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91062D6E2DC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608763358.28589.16293280581306502282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba20feeea403e443bd6a912a7da5554e9c5c35e8842103b2e2b78df5f0fd5f2
Date: Thu, 18 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766087633
