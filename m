Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1235E3A6EEF
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774559694; cv=none; b=bs+X4Jrj+y/pNYNZE4AwmWZtIwLhfHfoe1KiHejPPNR+eUBcde4x7gFfXZHyceNPwAa8QgDkHYx+h2L6OfAxph3osP4kvpgWjKhCybA6YKQHFZkswhr6wQnxPwaX02yg2fLHPaDC+DwAXMT2E+1cgfC854F8vnN+WothXNcR54Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774559694; c=relaxed/simple;
	bh=AU4PcUlGpeGWee+8nHGxCrbNA+YrQuSA3Gf00bcdj80=;
	h=To:Subject:From:Message-Id:Date; b=jJVaV15J59Go50eANNku4ae07CmVUI5ja06dUcSSk3tt7aQjkXVtqywRkS0XZxgNLQudD23Mn0hi/lEDXGANCY0PyrWhAAE/qrGSMJkG/W8yFuFhEHlS0S5pXUAXJmCGpzQdhg/rCvxqeXsTDUbyxidsBD1Ie5Klu9PEJ0p5Sg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ou6FYRbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ou6FYRbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB8DC2BC87
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774559693;
	bh=AU4PcUlGpeGWee+8nHGxCrbNA+YrQuSA3Gf00bcdj80=;
	h=To:Subject:From:Date:From;
	b=Ou6FYRbSx7N/MGzKk1TmvGiQc6Wm44iBvhn1z6LqNmzkzRA23JGNAowkNLoNUDrmX
	 JeUD+AcDNJNAmarOOydEB5U/qfT/obHrzdbewIg16li6E2RpyXdNhFU+ZSz0yPUcdM
	 8+DTy9OOOzFO920xCr1h+Iu2JhKFqyy2LhDZdiklQ4To5FJSAUe9V7FbxQh+btzzXN
	 h+3zqp65zyx0rnZyI7SSUPBELSTpsm3SYePLefirtYIDHNmNk5lzzwfr95NeSqkkVp
	 EfDZCiXPbnv5KaJIxzjyMHIhEBun/sCs+pfjpLBJ4J2qAJjd+8ZrFaXRe/TOsetW99
	 o3SLFrweM8WeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7AF10AB829
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455969362.16281.11870012032340749202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e81d3068926e9677447c5d09623cb706bd720e48310868cd7a1409e2a8ab38
Date: Thu, 26 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774559693
