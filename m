Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F6818FDDB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760935194; cv=none; b=BT1h3syMODa25N5F6fnOCZWctuEyJW3jW+lrOE8shHbkJ7wiB+iMdRaLiUeJ7GlF/Kb5Q6mGu0RlldiDbNhR2h/S6s1MH1+xZ4MUpmn0U9eKilOQELfSx6rMPUR5+uOaOAktjJFtmODLGgdm8LvvRbN5Rk/YGK9Gosfofe96Tm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760935194; c=relaxed/simple;
	bh=vfYANj48Vfd2IQbptfpwLhsGJWDXjjAQjV34bD3ogwE=;
	h=To:Subject:From:Message-Id:Date; b=nj0K1l3KR82eQms2BaaZtwT6Ra8PLEWEWm7wK+BzVhbxUPdqJ04VuABRES0jzy2IibABIL+2OLeVSZx4jTMiAcFoMLQLlhUzgaDrvk9RPq4IEAR4sbEHrkIavezUFiO9u4Q5BVJiQ6L8H3u8m+AvlfA/AMcOtW8iwIuBOsq3UaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1hnQAT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1hnQAT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4468C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760935193;
	bh=vfYANj48Vfd2IQbptfpwLhsGJWDXjjAQjV34bD3ogwE=;
	h=To:Subject:From:Date:From;
	b=b1hnQAT7Epfo4SH6pdPK7eE+fTKhXwrGn5k1AjFOf2wZTqP7dmAFl44WlVGFEgFTy
	 7bXd+Qo60YE5Ft7d7I5pGa5HKVhidJbC76xU48jypzoU1tfI5xJuuwNOUh/DTGsSdX
	 hjRjU1eS2IZp25sjDbhro0pPydTiomzQAa0l08zNLFKBcWtCNH3GAjE0+5oFbFVLa+
	 esBvGfuXhQEQrNw7/7Nq64zr1cJ0uB3ROddg1D/8gm2+vQrVjgbRrjdPcfXzhFzZnL
	 BIWG//k1PyUGtnKP0BR1vH12DKczyQPgqM+f2IqbdhQo2hgCIT9JmLtpyza0xw4pZD
	 X2NvP61uxGbhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945C1CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093519357.23276.1374053888851815099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728f0bc5212bc635bc0ca6f65c8ba60f7666fdc978381b11608ac7f123699a05
Date: Mon, 20 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760935193
