Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02CA35C6B9
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788150634; cv=none; b=h/8klgSVJDAWkM/96yPLu2vYyg2gixjcKkakjIMlwoHWBoEYXqwiOgWe9gDii8/j7qu12+A8KGSEYvVGWOsq87h6uk9SpD6gnWY8ayOy6xnQRKCiFUZW9cBmrfn/hGoWoZlts7L+9/msB4LQeuXX5/nPBSGFRh0ehVZE+kbfPPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788150634; c=relaxed/simple;
	bh=M6e2KqVIlyN55bjUyzfdVR00yw8Z+Qh9RBFI0Fq7cao=;
	h=To:Subject:From:Message-Id:Date; b=apAjFaZ0YX8nOA/d0cyfFhUrBjBjBaPPZtaeoi1vqZ8hpq5nhmPk3SJ3szkhrRUxkc8qJFm75CPGwxRQCvg9mLFWriw1kdp61cvDrI/TZXx4Ak5kAUQ2LT0Qf2YcgZHy4aVZcyp1tuOgfGJ0U+TufotAVNwhobvbuPKyKURrLes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDFtF4C+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDFtF4C+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D00C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788150633;
	bh=M6e2KqVIlyN55bjUyzfdVR00yw8Z+Qh9RBFI0Fq7cao=;
	h=To:Subject:From:Date:From;
	b=aDFtF4C+GxcWl5RG6+GjQNezaWdfmKUmm8pjdsyui09X4y3ERgriledOIPhwI4tkk
	 i65V69T+v7e4w8cQ3DKJuk/e0huEf6+PZ4DQRYWZ6tZthvfHc+jaCCsTLW4tU+Bn9s
	 Epd8yxrabUcK+zKzyx+Sw0uEvhSHB8jJYxlW5CuT6zSlppfAw2O19zf5iilcFcXVSy
	 nYP60ir80BW9CE5jFurpUXNSK8W1rY6seJEqOIuyw4tF7lWbtUOHYn6CH5k6D+iGCP
	 E9CEUqTUSJUWEn+tQupyedka3rq8rU+0xbPCRmL6sdKDo/F6Qk0VTxeyXyw7nsKabW
	 sN8xsM3D+kdUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBFFC61DF0
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815063369.16767.8091747324473698988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73348bcd113227414eafb399691fdb49328834dbf74e9fd4bc2cfc84526e77a2
Date: Mon, 31 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788150633
