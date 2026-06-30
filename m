Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485873DC4B6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782842914; cv=none; b=seJi8V4rjWEMLDXDRtWv7ERnCfhEdCvkVOEfGdoLrK+XGVIonKHpozpbE/qz6evsCOVDud5RfhIgYnnvuRpxctAtxnqP7hrVgp3XuBQI/RKBIpO/HdsFVsvS48Bp2KvTCkfS+uf14C7FDb0mj6vrGHEbg32/wYfQQGN6pT/whjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782842914; c=relaxed/simple;
	bh=DYlzUYiPto8cVjSrPOV5filvr+nnuKqjfFioMhSEwMA=;
	h=To:Subject:From:Message-Id:Date; b=bJSG5Q+U+sbQPO6dmGurA5FZov5Mo1xMwITNTHwuuT/Un9yAR2nsBA+lO64uBWeLQTAO+oVnTNkEZWIsU68vzSXnY1T04vyGNv2YT8IwAHyNhKEUZsr81zREl7SxzNX8bGQ5brgjDmCtQB14L6c1KejOCBHLc+hm0Vdhy6VmfrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeBT/bI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeBT/bI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF101C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782842913;
	bh=DYlzUYiPto8cVjSrPOV5filvr+nnuKqjfFioMhSEwMA=;
	h=To:Subject:From:Date:From;
	b=LeBT/bI9hPw5twaEJcHavQLXR4ZUExHTERfY/8vhRuCUeyypqu6vfzXeBpcZGmmA0
	 yPutNOmK4+g2cCPHHH2hT9OUDCyMeuagZSEUKM/z6A3qyJIz7KSkJyD3JH+y/4vRjy
	 SUumZdMnuY5HB3wmVJNx6OZpKTy5f1T3nOmBVDGf+SrVJMVwghu/W2luFCVx3Fc82R
	 jD3DTyfANKfUyexmNb/2gMg/w3mWI7Gw3WSYjQZV9rxN6c3snrO3pLhqa69+Em1TZE
	 /+7UYET2u6h1Q0DzS068yWHyk9wiX1XslRPhOjcQ7lMnNSLSlK/vBBGs/QW7T8qXkE
	 OobthDZvlbQsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5205C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284291368.25508.10262173534979890394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e82bf03028639f46db433d54a2d920c54cb9547c39ba8cee6bc2a43b2caefbd
Date: Tue, 30 Jun 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782842913
