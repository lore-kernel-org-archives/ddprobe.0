Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9582BE032
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764234174; cv=none; b=JphxGz/faBJAWNG0zvIo70ojxE56tjZNV2RR3ALAlrKijxBagNsZp74EJRDyqdUFTPxH0+fyjlKjzvqRLQv3xljF34aZbhGuS9OIZO6r8wKJZDsm+W9280PpJ9n0QksC0aZxBUjpYfiqii5RMoO9BcFI6gC8t/yYdRG91tHU+h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764234174; c=relaxed/simple;
	bh=Fu1fri9MTQAzKuup0jnjV93d/l2QoHCTczTbXvH2VJ0=;
	h=To:Subject:From:Message-Id:Date; b=LlBK9X9isGXRVTZrFeTChX9/Hu6t+w+ZwUqREcwXJfMKkNF7yjcX7WEN+q3sBtNH5n8bEWiOvIM9Pb6hI3JJDy+yNb64Y/VFFKekj931vTVDgMwJx3cunixpmlUSudHVrxYIwDiI9n4IaVXmqgaGRzR8Zvar7ttk30odwcn//kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vM8U8JtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vM8U8JtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C4AC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764234173;
	bh=Fu1fri9MTQAzKuup0jnjV93d/l2QoHCTczTbXvH2VJ0=;
	h=To:Subject:From:Date:From;
	b=vM8U8JtHCxwCK6G4zqDKSBjWIyW50QO9p+g6A/HVZ+26WJajhGjj/JZahPr3IdMWO
	 JboaBPKggDYljU/ukOeu+qKP02oxyASMqTjm7HlmwHuGtpq4y2Nma/8XjjB2jSNas4
	 4JcH4G0PuPl9XlaebOJIsHITxcrk1RwTfyOnHaw1jOWWXv7GqABGrNB1S3aecEGpA6
	 YvGuaIimXzsxjSa1hKlcO7EZnUw+pEzPTFhfu2BkxkCCp0wxMyFVs+8F1gWZJ7Aawg
	 nazQYX1wsnCQx4dUduCmdBfipHwbaY9U6dHKpFwzYv6rEBjBjkifL5rjcrhV1b5otx
	 kxb1DiYn6+FQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB58D11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423417364.6077.1748030733445125429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8428718dbb518479910e44013be0ef6df486c9dd832f54447346b6cae88034
Date: Thu, 27 Nov 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764234173
