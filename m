Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D423D1A9F99
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754984393; cv=none; b=TR4PWY6yMr6HA9ZGw4jr6WuVDGIeUMt/YW7tScrwuI0J4bLgNYCXC6zc2kX0ZmrTbt45TnwvcV5AxKYPQhGBix+dL67nO6b61/mqkN4KzTUgGjJ5HetChqp1MzaE+rpDU5Dkp9LNyvrPNhhtcxWbfjpDLpmZ5h0Rb6Q1AS31EyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754984393; c=relaxed/simple;
	bh=oJItvPeCNTv70igOLl2pzBJHCucmprE+Ch+gZgdzYU4=;
	h=To:Subject:From:Message-Id:Date; b=DjQSNjJ5aszmrhUApEnOt5TuLk0Wax92S6LYXg12jSjG8Eefp/1BqVd5NszcqIuO9baoJtMy5X+wD5tq0r3NEUe08lcTB+4bpSHVt+gEKjqXUyHJ1l+Lm2KKnB3eQca9ZodcN29/m/cgim2sb3pXjhN8/ZVCzdAgQjSSV+k1oS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pM8d8kA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pM8d8kA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DE9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754984393;
	bh=oJItvPeCNTv70igOLl2pzBJHCucmprE+Ch+gZgdzYU4=;
	h=To:Subject:From:Date:From;
	b=pM8d8kA6OUxURlA8se7MAJx8LP83U0KOaOgXQ0QtK596vWlO9HnlQCrVB6lXKuIfb
	 KoK14EJb+BI43OgeGrtDKEdtUCryDGrY6dtBPE+kTRFDZFqS2OpF23nsVxd6tbbEEt
	 nP4y8ytZDWuzU0Fk+pahPhc5NlUq3ZFJnVhBtMkE5owKu9AS1RpNh/tUkiqcgmQh7t
	 EM/Q3RV1a/FFp3kBvCLpy6tcu8NCUvtyj0tjkNpYPIIDf0xU7pjrh0O2a/FWBGOhE4
	 cDXLHKouL82xNP/WgObuPBZeGVvheArMjpTdqQsw5tOtL9C7l+X0JvLBoQoP4/kG6z
	 eZGWm2EEWZqqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318EC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498439358.21938.4374739805838128819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f8792a8ceee537e6cde11f5ebf18df7c11edd72ea4103656b082358bf74e58
Date: Tue, 12 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754984393
