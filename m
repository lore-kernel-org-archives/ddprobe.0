Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434138462
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779735754; cv=none; b=cVzVHnJSboG5472bHZwBe96H2qk9q+qHQLP6BhOR7Q0rYwRSiHw4hKx6tnM26bSkVWziiLsUWexakFmKAd+QhbxhggqLliPTOl6mOsDI/UV3go3qFiwm80rLFQDvLe2hqe6boc0x/HixeiUOR/a4Ak86VzEJNcz2UGxIjmKzFoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779735754; c=relaxed/simple;
	bh=wJWiesr2ad55v04tXj2vSEUZepR7le2+AkqNKsxxubk=;
	h=To:Subject:From:Message-Id:Date; b=I76kjx/UFeowbtbmEh1+h2cTqKTQz/m5G5W0H1k2U3jBf8A6rF9bl/Ro2IMdgk8g+JD0SWCTLTHcFJGXPsDJuzn9EAsSYkamZFfLHj7GDM0+7ah60iRV7RmE5Ayv7T/ltPPyXFB9cd/ZA9iEgJeB0mRT0OPWVEXCsmCAzYNBG6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVppbq19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVppbq19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7AB6C2BCC4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779735753;
	bh=wJWiesr2ad55v04tXj2vSEUZepR7le2+AkqNKsxxubk=;
	h=To:Subject:From:Date:From;
	b=cVppbq19CB7dKUh+BWDXVmFbqFCHCqyt0N3V+EihkV1F1P3t3lWbys+kK9pXYIoLn
	 +Vftob5Z/BsbpVo4EYGfm1dz8LabYrtKvKPNnFY9P6YvHH487P+164mVEMcJ3jRQkr
	 4eAA7hLEy+ODKFm+4IFT+q4ozQcQGoyIOgbZ5hhVaHemMPnfqidz2vPsVuxa2+1tyh
	 FDFEPS4y4J+3tCPJT73NB3CaWeuDIFOGffNy3wgAXgI42ILrOW5ab51EI0USVOKbBg
	 cLFCRLZDeX0mGoncwCsRSEMERu2fhKwr/Mol9MIqu/Ot5uLaAIBcg5bd76KQ1wFv/N
	 1pdMkHgPcyLOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1D0CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973575369.16685.6430327528980630966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c4095fec23603bc5e8c1ecf71a387d6212dd7fb2fe040d79911181fad3fda9
Date: Mon, 25 May 2026 19:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779735753
