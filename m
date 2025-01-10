Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D13A20766E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736495754; cv=none; b=SPBLF/vWjlJDi+ARTBPUlwS6EzRggqXR3gHNKVnCQ0YYHCrQHQMl7smmtYKrZD9/GI7vqkLfROv0vQ1rwabVoJomuHJRMTIoS/t/2dDr2CBXG6SDp/aHpdkyjtCwLr+Yv3FL3C5d7GwwFVrbQO+TDKoOqnJ4Uh4xzZwW9f+K63E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736495754; c=relaxed/simple;
	bh=nj9WKOBhjwlhyWgMv47kCEhSqojBSThwt8dWFkEqizA=;
	h=To:Subject:From:Message-Id:Date; b=KDZB9v2MSryj0SR+hBK0Okp8LLRd8g/lf722oqHBoz1m83WRAb+xZ1b0V11bfmaCWx9yvSrKdA/f8nghZEjCZhtuQMU5sFj6KPyRa5bH01G72nTmohdhyrVFpjMWfuGgkFq1utzEK4wN+uALzhqDyo/78Kqa88IG+Oa3+/6j3Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIwolbaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIwolbaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD191C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736495753;
	bh=nj9WKOBhjwlhyWgMv47kCEhSqojBSThwt8dWFkEqizA=;
	h=To:Subject:From:Date:From;
	b=LIwolbaZBab2AOAwyQfkuwr7pJ1lTR6AjQcIc2+KB4Kdh48OidjqMDYujkhfm0ZEX
	 CA0NT0bmY4TUcncHw+mu3kqPWww42Rw2/tmv1NHMEsZgOmXoK+7CzI1QeKhvOQ6/tP
	 wMydC5fjaa2/04eEv26mzaBxrUgeg64ai9VAza7nQCLJHtqW//KgH/ok5ZQ2dbJNtm
	 VSgdEguc+37Tct3FqhxNMyEWbuwXJ2L8YS7Anw5PB1RV62VN2qnxtpwkQtTPdvEIGA
	 W3y95cMTXTcNaQJLZ6j5+p3ly6HoH/G4XGj8Vh5eTc9YiRb2hbI5MyQCuGaFPV1kVx
	 a5e6nh0wDa36w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4BFE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649575361.31763.4390858936170006090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124e336555eafe7e14cd5dfe6e885e4d17c70d61f3251e43e1ed260382f76b85
Date: Fri, 10 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736495753
