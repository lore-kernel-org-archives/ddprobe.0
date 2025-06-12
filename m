Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D670C1A5B92
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749700793; cv=none; b=NCvw54DlptyFUs2brHU9KZziv1UVfzBudsqBJpxJQAaIDxkQRQZj5gGv67SG1cPWGUykJPl96JoS2HvbwMs6ZEkmVMle4ZzWzGQNmnOz66uRFNZQi6ll9NCo7nrlqfgvNOgBL2rekoUEH6sA8r99KDV62SpmWb2ngMaN3Q6DuqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749700793; c=relaxed/simple;
	bh=4ONu3kBuLmssJsppemui/H8NJzZO1bsAoPGSt5U6+hU=;
	h=To:Subject:From:Message-Id:Date; b=LmI8n0X1ItGOuSZB7qWITtkkv7UbRyTouFLkk7czrpkz8moitHR0V0o/KjYUUXYQczS2ZsNhB/9Kp+uG692RCEzjwLe5/EFvFsOcsFfLD2zltdUJCxgC6nIT+a7nHCNx+FrDZW+VIjSpGheBDbGBGKfxTg3i7bSU0eLQdMB7Ydo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCvuNDxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCvuNDxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F0BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749700793;
	bh=4ONu3kBuLmssJsppemui/H8NJzZO1bsAoPGSt5U6+hU=;
	h=To:Subject:From:Date:From;
	b=iCvuNDxfYRf8voANtXEyQrSdwIMP6o9WreLnPEjclZ8IiDMrfcPdYSeHQdq/hYSoM
	 9HsWUYmOItKUvif/SRLhg3wIzqPfyKuk66F5z4AsOANYmc2vYVOtEDVhCCQRq1m8hM
	 3aPiAJfAUQVCc/ExVeWpfRGlBgWBjXKM+zUSo6dUKp/wnbjmz99Ypjm+ZSatxatY8o
	 NORdbchOXOW1yAo+2NNinsZ8cPC/DKz2g4641XY1P93q6P0ddKQcs+NkAYoznCMO2/
	 FpkdVmvbOJ76KsIB/8/Q9wXsXGDaG92EX+5E5OY0nO89KKFVZc4TeSRICTKW1hxNM4
	 Z5Luh/wtV0hpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A6C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970079357.25244.10614504053529857923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c50f133b5f23b4a240d09953f8058fd7f7ef7f931a5f036f4aa6dedbc84d331
Date: Thu, 12 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749700793
