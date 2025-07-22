Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BF317A2F7
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753146595; cv=none; b=L/6++4Ivssd0nUzqiJPrK05IhqEpNeFqaPyoD4ds6JOX3e2hQUfqvtATaHS9InHmviQ2bUrUl/38hIfedtoYYEL2vKIzcXTaYQ7xeoO9nUeXs97zFmi8GqawvX3YJW0TH7psC0xBQGAyFcP1f1z9ZMIcaTpzMCwLgkfrw/9TZgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753146595; c=relaxed/simple;
	bh=mEdHBih4BCSRq2NtZ5OiTon3nE1fct4LE1BuG01kQgQ=;
	h=To:Subject:From:Message-Id:Date; b=ojdOACarbdvnyZ/bDRptyHtFWqzjVw3bAAEQ3Xwm7UgfAwi7+7cVe6olYFSqi6Pa9mmyeHJ7pYy3C+AJzhCETfg+H7Ks35hQtADCrQHD3ot98cSnF41uBv8LfgPEIFpPyiQbpGCeMDPpFM1Q0DSmGr9fD0fOohvX1KaFZaPzGjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khvrfyRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khvrfyRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4224C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753146593;
	bh=mEdHBih4BCSRq2NtZ5OiTon3nE1fct4LE1BuG01kQgQ=;
	h=To:Subject:From:Date:From;
	b=khvrfyREbMJSJ3c76+Uc9uJGwxFm2MA50WKOK6G9EAJSBAKXe5jPVZcTSdeKMBMlQ
	 yOfiuenHzT3ZtQe6lXynl6B2N1GzdnU/sj880EVNams1X+0Z9Gq4fYqjs2c69kVrr4
	 68yHorbxTL1y5QkgK+d4h6D4a54vt5iapzler8t+d8LGedikbex7L9m83ssgmeTraN
	 llvvz3wEpSn7auIZdURJ3RI7pmaA5AW0wuMRCHX33bZVpW3z9kFVOu5uqjvq7wAkhA
	 R5KZYhj1ci+hyXh83YpH9rxOD6r7IldyTqLV4HxD9erONSxR7HjgCo+P6APNGDjG3U
	 hycql0qHQJi3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A5C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314659358.25228.6913845352570212831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b409563340a54f8039e906f0828389351ad05ec379ada2f6150921904b7c9263
Date: Tue, 22 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753146593
