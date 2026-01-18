Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB232BE031
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768731834; cv=none; b=jvJt4SCELaCk4NKhhuSsXd1O7TyFVsZx42yt5F7OsSXqm1HxTWdF33rFxgcM5oi681/+eqp5w0vxrv1ZfcpyXdlq2SLX44GmoH2J/X7bBX9W0ZTAWIkqv+lnnBkFKAuFwTOlFoQxS3OTh6HmhL/V4GyVgcm4kgIm3/8S6gl/41E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768731834; c=relaxed/simple;
	bh=Hn5F6xbkNo3N5CnpNIyNKG/BiwdtZJ+YmaMtDntgVgA=;
	h=To:Subject:From:Message-Id:Date; b=ZcNe90/CR5WGuLOzq96QGWZdD6VwVEeS91j0hnE6Wsr3TccBlJTPLNk+ybNYaskwknw2fJm/yQ9rbCH5uDalS8isLSWCjbqc2DeJzXik7ZSA+y/ZLq5E0Y/mq5iv1KK/Xk+1rmXOXoeW8kN+u7LWmPgQkxf0DfgP3hOzmMdE5EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WC9IIQ8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WC9IIQ8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A5C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768731833;
	bh=Hn5F6xbkNo3N5CnpNIyNKG/BiwdtZJ+YmaMtDntgVgA=;
	h=To:Subject:From:Date:From;
	b=WC9IIQ8fUtHAfTQTKw9KnRBPH/OG/OsknxhpsyAZ9Nq8fPK2s3scjaVn43Ll0TJPF
	 EDW29Avqr31cceQpxQ06y45tQzaR4m0VbOFShE3Pfu4jCigphkg7XbBe7aOYWimobQ
	 Kr3oCgxu92rNLaA4MAOFjkcd47OkqZvzv4RNezpYG3FQpa7Dwd90pCPdmZlgJ/0wAu
	 CbPi7BIbN3YMztCdWzK78mEL5fxVUTUBz52+2A/v8YW3ReJzIqoJXPEjW0eTaCFhhe
	 g1saCFtKYQ/oPHshhP7CEC1CeOoc9xYg/jVQa9Foxeho39qzlyXGWW3LhIK5zOWis5
	 pw0k8eQI6Eqxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D13C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873183358.21456.9978176819860056482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0acae2c90a28c6eab3cbecba6aff462649713eebc2aeca01433c27f8d2d44b0c
Date: Sun, 18 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768731833
