Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C7717555
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751904594; cv=none; b=LgDMmeKZEDngibZqyi6oBccauLlqhAS7EV/YsIqS3C1wfnhTXKwGn3wudh10krS6vsz+jAQozfRWcbfDNf1oh9z7gGL+3Y7mAZ3RDNUB4ICUf12uQu+tljFb5j7JAflLvkHIExj51bSiFEuQT3f9dUJ+pwKio6iZnaZbNvocAM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751904594; c=relaxed/simple;
	bh=1hAfLyj87k2IctKCES2Vg2MSPPhm//XsgeQQXfanCmw=;
	h=To:Subject:From:Message-Id:Date; b=S2qI+mWiMaTfDZHsqxv8AXBpJZ4kffnLx21foS+Te66dNIco+ZBnVZoodYkk+zDSdT1XpNcEUckWM0qjiUzio7K2AsXA/s8fvMOBiQGwSsNIiYogD19zM/GMyD8XE7HUVhxRQGLe7aXYb4OdgqIi0JtQiEsN1iFQalVyWd6SmHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzIVHxyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzIVHxyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BB4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751904593;
	bh=1hAfLyj87k2IctKCES2Vg2MSPPhm//XsgeQQXfanCmw=;
	h=To:Subject:From:Date:From;
	b=nzIVHxyPmIq69W7vSbEzUm223zshlJQE+CH3AsFyCKPKPBdlSdJiwPrr9CNXq1I4n
	 Vjq+J98Mu1PWqQXvKcm7oYvqmes/QuJkexUS70ubKx6cUI8T1uATFVLuYp3Ip5bvGH
	 OzA9paqJVwyvSNdUw+0WxL+kH/NwAVhPA961jxLvlHtfpJnUnwl9CbHS6KUTUHK6Es
	 2l5CetfOJ20eYVgAHnYZshMxKX0gvIdzQxpgq22w5Fr5dTkBgKarLd37PIipaEoGCQ
	 hGnZvaP1GIFLfMGpr3MuXXMSj/LxIEoN2NvZpLPdhYJrkD2Vk2JRj6mdAnH5QSvXGn
	 Iai8fufoES6Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9050CC71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190459358.17779.12238375940738823813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bbd8731f400eea8488e392dd6bdfd208a32405b91ab6e993c9735f737aedad6
Date: Mon, 07 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751904593
