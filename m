Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583E12475D0
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787370034; cv=none; b=NMX+zMq8uxhHuOuUByiwb4mKXmlQXE3Lkbu5a8ANzM1eN5yQ3rxx+slgc3TB05x5LaBz5gzRdBE58iCyoGKeDUa4TQqGbvAsKVKwfbFz7OsfPfc0sBzPsNzoX5LUXTpFl+48TgVOKLuh2WITOF3FeLVDZZGu8N/BAAKtpyxWrvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787370034; c=relaxed/simple;
	bh=QqD5TmU5MukU+T4JNansZkBKyG0+KOIv5uB7yrjWfLk=;
	h=To:Subject:From:Message-Id:Date; b=Hk5vGUhXZ27cxg9lLzs69KxBkk5eGj1M7VMFn+bB/kW07W3FTlmU7y1Fh13bmSqTKAUvFsa1QbTLcPSapIJsAD2JcFMnCa3UECSzOJMMEl57TgkQZhzqwWUrRSX6zlGJFDsaxXA6eihBke5A1Z6O0vIuLAVxhmVu/jl4d2ElRkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIqnB4JG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIqnB4JG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2418C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787370033;
	bh=QqD5TmU5MukU+T4JNansZkBKyG0+KOIv5uB7yrjWfLk=;
	h=To:Subject:From:Date:From;
	b=hIqnB4JGodslOnuAMglwlU2V/TAhLPeFOF/Fsi+1jrfmi+icQGbp08XgGunghBULx
	 /Qe+Qs15p6CPwQSEXyPr59XFydw2g95C3FLPUunUpX3xvJEbYh/StLfSXm6jGCjvlX
	 +K75C+VrwqbeTT5s+ARQS/j3TrNijTdOKL1/Aw+N9+lUjDTQTwPoBJmTDqzAM8c1VX
	 dTbgwW6Kx730xXvZP0JZ513kUJf7mZmZP7Xg1PeIM6B2P2SfCJcY7Lb+5iSPluHuRZ
	 OIzGS4DY1uJYRUk7vyhLF4HkjHa75mVGtKF8BJlwGyMBysHTkDw9PoBBCEJVtKx3Rs
	 oVSpHUmyCbtjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1144C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737003368.11069.36655820223204060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a57b5e694b5c8510dffb852d7e17a53b32d25ad11f2ad49f2f57cbc498269f
Date: Sat, 22 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787370033
