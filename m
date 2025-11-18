Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A252C3702FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763497914; cv=none; b=EFDAUJqUQ1ljKuRUGOhJAXelTeDNg6w3zM+lD6iWX7fKci/3txkzLGcSKuZ2ivyCwGHSgBGk4hfse9cLBcKUIT3wTg2dOlvxl6GRDpCObGTRgplts3p3WpGf2TOlPlKB9Nq/mfDzuqkLVEzqYeuM8qScP+I2fSz8A+x/S+/iJJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763497914; c=relaxed/simple;
	bh=JPd0+zIXVmSSN+ARyq2of0cwSPIw1ACKk2JkuNlpY6Q=;
	h=To:Subject:From:Message-Id:Date; b=tSsWSf1LNEL1vZ/2v4SsJSJdKwylg4yZsl4DiShAwPxKN4N8eLysPOKt1ac2lg27Znxrj/bYli+0MiZFsfQlMCy6uAB0YsaOzEP7ka5bL8b8se8wm+QsgNjhlSnf6cyiTiOhq3LzJXj92G83I/qT082cEifCZj19Ff6Y5FPSIck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayhFKkIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayhFKkIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EED28C2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763497914;
	bh=JPd0+zIXVmSSN+ARyq2of0cwSPIw1ACKk2JkuNlpY6Q=;
	h=To:Subject:From:Date:From;
	b=ayhFKkIE89NpB4BLlMSzir2XTDrn1Pjmog5hcdLL2H4h9PdOhvTDpBf21h1RdVGiM
	 O0U6gITPoP9DHS2VfiOviVR4H8u8I3azlNcSwocuXBrQscGXNWtIFFIWuAPkHEzFdg
	 tKqPoziz09Spdzc+BDw6U0as7G8FECU/cwRNKMOs3V6ZcnYh+er+dEO1XlisOpufT4
	 EkYfS9XzNYavb7ZHW54wlirjp7oZ8kDy/BBqjNW7EdO5IE9/wDbmo5cASBn90VS2br
	 7pmr/8lYyw4spL2hL4pUF9CYdbCcGIMpa/4nbQnDzh6lIQmgFtala3SCpN/fZ/tRt6
	 Ga4dkejRo8Mhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC2CEE34D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 20:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349791358.7988.14136496737055235640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f621a8262f311ac3ad5e004d17b1ae3a1c93f2356524cdc5fbb4db254ea08a4
Date: Tue, 18 Nov 2025 20:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763497913
