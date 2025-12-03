Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FD7340D90
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764778973; cv=none; b=pWxDeADssBAPdfEY+lL5ke6PXdcESCSN4DRqkdSL5jJKCBd0ek0q1BZM9SazXKLpqRIkpHvxMf+xJ+EQUb8CnskeTs+ipEz7SPRuYv1TBISZkQsdKIQQk9FjumtDDFk+lH6BFJbHKyNki1EjbWhYMWtvW3+st983C0t9UfiyTf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764778973; c=relaxed/simple;
	bh=GXOupp9+GT8A9ekiIsNPrdMBi8oSnqVrBycPGsSqmEg=;
	h=To:Subject:From:Message-Id:Date; b=sDoZPxAA+6KJVWcHjnP7fDO/dRinpFCottyqINU+AwBPQtTsgH2MO9J6rZQWW1/Ex6EcLqawdz+lUAo6vKwK5QEiwVSTjQe91M4Oni/931GMpmjyQbXCltOO9H9l0Gx+l35NKP5l8l4MJISjZvwQgqw5VyYhIIObTOGD8vUM9Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lg4jF+di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lg4jF+di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F40AC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764778973;
	bh=GXOupp9+GT8A9ekiIsNPrdMBi8oSnqVrBycPGsSqmEg=;
	h=To:Subject:From:Date:From;
	b=lg4jF+di3Ws1I3IpXkxiIynrE3T+hmzg/wR0lfiJe7H8INIV3RcSLWV9qtKQP+dis
	 1wQEPabT7CKNk6oWcgb7lpTUTLL8bSiTXKWhEZrFyNqdpNiAZP59NH8b+BnssBbW/i
	 lpzIWIfNmRXI0BK5STHuXE/M4hPOByF1w1Cxh3nAM5qgc54A0gtMYgidoBkShOWG8v
	 yoG5JVPcr8OtJqHc2UyoB6uX33j2g+LY9dSgfEWXOe8osseRXGuUMMCP8DNI2VSu1K
	 /g4caP/8UgYHUMW8jQEr7O0UPU1mBoGbKCWTFbjDD6R3zv7dR8JDjPTyk5a6ykINxz
	 5uUjiAS5+0Gxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E5DD15DAF
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477897358.20582.17947876566889167377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ad7d6ad1d15081740abb362ef0ccc9efaab867620776816d6ee65bc63168da
Date: Wed, 03 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764778973
