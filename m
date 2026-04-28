Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243023F211A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777373854; cv=none; b=cV9S3suIESK7S7Yjrp+zlQL9hf4Zl7VYze6+Xjlb/hQzmDWGTmVnhjr5dyg49vp/Bjl69kAhXyghuIFMpeLC1PLqXSujnMN4+cgZSMIYELwyjuMge2S9XEFeKEWSH2eiX+Xc8S4zos+aN3pG/R0QIUGl5W6ipIaBT+XRYtyMAyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777373854; c=relaxed/simple;
	bh=rp+JqvSYlDqjNvl2vKfPbsw3ZrcYlHoaaVd5eMBPXhI=;
	h=To:Subject:From:Message-Id:Date; b=DTMSuVG8EUzRl8fYYrZiRap3F7xBQ1YYWsGQJMEDRHSLYsm8+4hHLY4eC/vOE1SHq2145+K/iUhIuOFmHNcuvNIz5toKpR14GMPY3nDs8GwO/hKxhnkhSDW8GQkQdTNKQVFt+OwqdUYehAsYGE27YrCma0QTBn2AuJIB/X+wzZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNM1XQ1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNM1XQ1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71ABC2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777373853;
	bh=rp+JqvSYlDqjNvl2vKfPbsw3ZrcYlHoaaVd5eMBPXhI=;
	h=To:Subject:From:Date:From;
	b=vNM1XQ1LPzTgrgFUa1lYGpDOVQnSs9tw4UbLKVLc7IlAg2EcUGQNQyAh2gx6Yj+Mj
	 iRkYUZhW8jB0EusDaZvtBHjmyUGdRgRmx8tdxtqsx6bTHL6Vz02IpF7dxjnrDTzg4U
	 9WWU8w9zmTI/MUTaRDiR9sF9+6Q9oJmyiFhllU/TT1mqZrNS3Vv51wLj1uRIRFoxuC
	 AjsABN+vJUF8Zza6btIydo8CXUmP9qi3mSVrswFXOEIy7rfddmBRLluUunlQYsqxPT
	 KbldhjK/1OPsjXu5XAfs4+xMTFUgkxfdLweChdgMsBBFrJmdBYtSKqdQhdD94OU4CQ
	 HTIbqzCR/Gypw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EB4FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737385368.24565.8324466716685456127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52521cef8b02a2d47b9ab84fc48e5e1e666aeff3a01dcb765fb2e00214990c58
Date: Tue, 28 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777373853
