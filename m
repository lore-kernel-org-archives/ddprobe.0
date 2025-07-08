Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1832F19E97B
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751977794; cv=none; b=lv77u2iAxgGk/yyESYufExy0CXQ2EkWvnb/FeRwTSF/SKRgDALq1ZDJOg1HDMxLlKk+hKP1be8VEn+f44HSlzMmweXdDO/NjGH7oM+RIHZvuYH7TFIj060xeCL3xBLy3it5GUczCkgn0lXTr+ap02jwNn+iGBnbvIFcBaKQuZp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751977794; c=relaxed/simple;
	bh=Fzqp0opmqNotdjYGYMPjLyAI+vP5tpLcpkq+2ateLl4=;
	h=To:Subject:From:Message-Id:Date; b=O5JocWiesgBpjUicLZpw202zWIs4Gxrz0eajt2AjoV3V4LhzvA2p91bD+aQuu+jkbXumIF40dSsLRvG082sxHuxgYYt/P4zUBLGhGtdcOk1VyTqqE5GnQG0LpxIMhAhs8v0ZXBlyd/oMm5bONDd0WA3TN1JQ1sfRTsAOvfUY4lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLnjwp4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLnjwp4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A4DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751977793;
	bh=Fzqp0opmqNotdjYGYMPjLyAI+vP5tpLcpkq+2ateLl4=;
	h=To:Subject:From:Date:From;
	b=CLnjwp4bCUhrYuL8zI2T4UMJUYQt4Lh2m3Ez2IcO1nsF7B8uMfLs07VB2BDrikRpq
	 vqucp7tQU9gwLwa7JO+qRmWlXGTzgoMo8aHyFWZ44Jk4834/bkSoNrSDrRBpXzqCvL
	 5bC9RJQrBVegdJWWWzvvDuO2OYvl+uQLAXnJvIg9CeLZY5RGlXjmUdmck0T46a48oI
	 amguQM3npBCXvopa3IiST9Ch7giLIrsWn0hJy98sdhNE7yHh6N0e3142A9HFoF1na8
	 qHJ6c4MMKttS72GOCtZswVsPpFJn2oYsWwkowIqpCuXkAo/XeXVgBI9XXGulC/vId9
	 nZKppoXocJMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEE1C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197779358.25930.6700690142570453518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7decdc63175704a05ae2a6defd25858ed6e7a18914a5135cb8a3823108cf0b
Date: Tue, 08 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751977793
