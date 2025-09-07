Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC2A1A0BFD
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757216394; cv=none; b=PukzqvpQMTxbDejWhYgZMfDELyL4Akoq40XXkskE6/QSPweivHRsYiirn3eWmb2H1LlZeVmLSluNdhUkdcrhCAUw12LRl4BAPXxw4dgaE+vH/PiNzefdLPdHBSEzwOuY+ehmkwg4gonQIuZy9gn2mOa9OFGBe+3vbPTEh/6sAlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757216394; c=relaxed/simple;
	bh=sRM2G+vbWb0uf4CZsiiWaz7rdeAGLZoi9WOQwp/ZTi4=;
	h=To:Subject:From:Message-Id:Date; b=iE49LNI0ojLl7hzeBvBy8HKmVeoP9TYbtxpm2xCJaZEJG64Uj0JttDyaV8FKIGNyYjwt4UmWu2f+hF2oRNw+a6aT2FqoRMALuBPR9BweAYb02Qx0yh8dFtUg6kA/i6SjGIy0HoClYjM/zDeK2VZF7cxzfcQgHHrGOKaHOwiF3oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TScqKurl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TScqKurl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F9DC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757216393;
	bh=sRM2G+vbWb0uf4CZsiiWaz7rdeAGLZoi9WOQwp/ZTi4=;
	h=To:Subject:From:Date:From;
	b=TScqKurlNVyVSdoNlXdCDvrAnOnVzTgOtJ76uFhftjiS4eFKP+hQx83EHN5uHmckZ
	 dPdYtroyAUubIJ8Ym6AY8pwu6EAUKDTNU1vxAVXCyNeYjgdvIbZ+nnIQnpoTe7ieCK
	 Z/X5gJghtkPvHszVOhujPcR85c4jmLbAv0XqqYaRjZW98HYfoLDcUbFSm8lc8W2YLI
	 VrEEmD3GnGyCrapDbSqjkIIi0N2GdzZMZQa8nIvCfPsWwKEptpYo1fHKf5NZlnkDMB
	 wggw+lT4dKN15UCrUwyhWKyNttG/8A7YbxNJbYYhLFjLXWN36SMBNsMhzRqgLLu7aP
	 gXrp2HHM543CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95349CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721639360.30231.17843043483078910281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e48b6399923dc9e6282d9aab5d1d632db1152fb0ffd2e67e1d2ca9661abe92
Date: Sun, 07 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757216393
