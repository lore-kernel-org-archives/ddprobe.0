Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424252E36E5
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754594395; cv=none; b=NEQ8zeI/zQJfaDwjJYHwNyWPWmP9zDBmFvodY0yRY1OMEH1DftRfTu1VLWFcboFpNpeV7zFaCBqbOnocFsRE1JrY6DKgv7UtF8wwxXQHrDitmU+QECiOfyOsbRbI/4LFeIi7sSCM+Eywj6xMMCoasU5GobkHhWc+aYcnQEm8PwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754594395; c=relaxed/simple;
	bh=t0BP6PoBUEET81zBRi47NdXe66Q1yo2D4IokLbWUMEs=;
	h=To:Subject:From:Message-Id:Date; b=qgS4VRxFw4Biipk8111if9WEqnuKfI2SY6iIdIrISfzljvvgaU5LM0GRKOyNtFGudfHELsPtvIRetvNu1zTGeQte1p/Ksf3W6PtCDIFR4QLBf+bgGlwypNwIEPJSr0TvbXeW5vZuZdDDrbBVvYNojrR9DfImLtIdB0i6k4Z/1vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCZ30kMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCZ30kMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4186C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754594393;
	bh=t0BP6PoBUEET81zBRi47NdXe66Q1yo2D4IokLbWUMEs=;
	h=To:Subject:From:Date:From;
	b=OCZ30kMfA/YBzluSdOp6LpGb/qfTzTKtOhjdAw2y+ovSI0MoAVaOus2TCn47H0Z1D
	 +YId/5dS/4kffmffo+cK5bE02aMWAEl3+GqX/r7LixZQAdttz/ekp96/FJySTKsbec
	 xsN6Z/vAHEa+iH9F9PkxtdkX3oLiMlTkfU+52qaYBqpk+mSeu2q0HL8GPoHet50Bwj
	 uWrfaVtCh/iaLPjKF314+EeWVBEAGzQZyBjbZzBYBBFL743gSSXWtRZtBKWSTV5CwT
	 Yha84qmopOQjLfx9XDp4vyJdOAVBzSwvCUw+hBXkWPe6FteFu+QcYhJ5Lum6YvcCw7
	 +rOuiiMwarY+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E6EC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459439363.17499.14071109401404271615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f230f1d0f06686997ae2b3e7c27196bd901cd4d3e4a7da4a4ed01c0398875b5d
Date: Thu, 07 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754594393
