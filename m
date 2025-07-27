Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7CCEEB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753579194; cv=none; b=JAZuQ9UVs2WOND6U8MWuuOiwT/XFFNMQspx7QQDzHJY7eW+tWZSc7x5803ex9qMhinb6mq2XGLWUgh0DiBjZEWx3a5jV5vZzYDIy8erTkrVI6skcipLgchi1RCnNJLgfwHu9zk19qoy0hzmwvaQLHy3+vZjBlv/qxQ7/vNlhiGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753579194; c=relaxed/simple;
	bh=jyMwukSrWdxavSjlml0l7X0qo7pi0Hy32jgDHoBVXdA=;
	h=To:Subject:From:Message-Id:Date; b=cKJT8CyVmH9DU2DyXfIAVEyIur+w9UYmlhC3xFAxUKCNaNJ1wo829w9kY6LKmJqq5vV59U4yB9eP3/hAvrq96YWmkmYYrFdf0bF6aG8HlKpSiC3sHy2o9Prhns1Yc/1lofOeiIG4nOy3x3PTVcD+GDZMK0Kjgxcm0gT1nUCDxZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HB2sbWgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HB2sbWgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3824C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753579193;
	bh=jyMwukSrWdxavSjlml0l7X0qo7pi0Hy32jgDHoBVXdA=;
	h=To:Subject:From:Date:From;
	b=HB2sbWgWiDKxLNftCelPWYsByWL9Vp9Mg9C+sxZ6AE0GlsaCrjmETsvmcU9GK0G49
	 WG1+DOcpdWw12b63Kyfj39wzsAFXNssRMR4TvT+5kiNGfJlOeeK9XtLji6/7/OAH4w
	 m3UPGJOW0IaWv2MN367yh3l4ZOSs6j1kGaHGxxhEh8msibib2Nuesp9Y4oJ40/9HKc
	 3fWegfQJXc+PWj1NtL9mPfLnEBmpDAtj/rCyWRuoHGPAQdtkVUn+6M+HtQoQbtmgtR
	 xSjlASCs2865Pft5QqFyWABK74crTVfH96JCVxgz0aiwQvzH93FQaYgEffolB6RSDw
	 5pyXS+QtxcNrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B6BC83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357919357.27295.8541644659229620821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9fe56e4154170c9b0fc9b5b384b23d50c86b4a1bf06b14aa11677ffebe80013
Date: Sun, 27 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753579193
