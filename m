Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C8E29ACDA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750877394; cv=none; b=iG1ATKXMKwU7v6g7pLLUxC6hDQLpJaZeCTPweuUVAN+TUenVNccS7w8t7AG7Jw1osxIM1Nzn/n3dYXTuHSeJ7OkgyIiSro9bmnLDnLrUiG4Ct5I/6+8GuW8pT5sdVridlR4Ce8cT1Sx9aqWIChco+m/GXDB2THE/rOyPYBCakxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750877394; c=relaxed/simple;
	bh=zx7JcyV7zAsgBLqY9fYE10l4hA9tr9AWHpWoLzNM93o=;
	h=To:Subject:From:Message-Id:Date; b=ZnqunFp/elUwm2fhZEHGAz3DzeD54UjHahJT+8GilfGpSoIRsqix80moNEBUTGgNX/ceildCFMcBZoeyW+9ueRNjO46FmVUf/TxvlDo90HXFjQaPoMFRZzc8EOrWOLcicJwIV5y3MdtT53psXe8TUAAr9cHuFrMug2Yy9eVffTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRTzJSF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRTzJSF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE58C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750877393;
	bh=zx7JcyV7zAsgBLqY9fYE10l4hA9tr9AWHpWoLzNM93o=;
	h=To:Subject:From:Date:From;
	b=KRTzJSF4HUEPUM5qw4/Ph+gRDT6y3tH+z7WWm7hWnOdQAaAit6kFD/Y0VU3Ma0R5z
	 VY/5ThoFtA5dEeUv9YtHh8/HpVPeHYhgekm+TO07ekFaYuN67ukY1X1R6dQJzjruAV
	 x0GBFa6YuiBbMQXVe5XC4eu2HWTPci+QmgtqNxjKKhkvhVTLILiQZp6hJUy4Rvlxqi
	 aPl/l5Teu9ORn0gvXGfd1JqkfimJiFIBFL4S8bIquGP2g/0Felt+PoArZz3ayuvo1z
	 NIlG9CGf651c58EeguGI2Ts+964X7bxqcFW7xRHgvn8sZxwo9So1NWUuX0D+WwyVu+
	 c/z4hUf2ikmmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A58C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087739358.28953.16880972407773511871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c643e8cc7eee383c1027e451553fff9bc9226ac10486a4480312f2688bad673a
Date: Wed, 25 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750877393
