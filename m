Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595F649B5C3
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791538234; cv=none; b=p8n57G10JLFkQryt4kRszPww/pxlDQdwkMexUDa1yWDGSFHfU2MHLTXDvroPktf/eaGgAsiB3JpLHYHSHJY8CP3A3HBm2cmt8qPqUU/4qh2Yt09MfT/b6vX4kGWosGyUsDjEQZId3ywnB6SjIY3dZgC3JBiIMNQtXl4q5YFtwMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791538234; c=relaxed/simple;
	bh=u5FMKRi/auUlTBwcW6KD57ZYR4VIbErNU8KO67j3XF8=;
	h=To:Subject:From:Message-Id:Date; b=k8uYSbxIvccI95bSgAcUzHzAYl1+gHF8nEGZBrhwuZt+gy67SWvyO5/poV9DFKkalrL62I7gZk1t37I/kbjADyGQ+p08DGwSmuITFftl5byhXbPOpDDLaHaBikq5k+eafzTUqGLjiwhZmfv5Jdp/75HeOhsxdgfkRioO4RdSQl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFqwDFbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFqwDFbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D90C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791538233;
	bh=u5FMKRi/auUlTBwcW6KD57ZYR4VIbErNU8KO67j3XF8=;
	h=To:Subject:From:Date:From;
	b=gFqwDFbMf3bznztrxzJS8pvsySuMZ/jiPrC2hqSoFr1ijt5LUlVhuPDZirFoOLyBB
	 TGo95CARJnW55QMAbuY2TPi7cigKCjaOyGmG2EVP5TQP/DwRQS4VeZLOVss/vWW0mQ
	 yHvj+zk/OY5fYsWeVu+te40WHHqFfG/k1gwnvaqeyl6OqlB0cwMagp4mCtS6PZuml9
	 rrCMQNxpJKhka7vBQJPJ5+tgY6PbIx8QvUt0ryRm4HYJ0zXHa9ywU1B/elPrPrWoMO
	 CTlk9aM8MjlK6gixxMYmQaMLwdQfa51LllnTG4hBNutp5e9V8nqIUB2aRiqqyFKyS1
	 S9/lO+A3Yc4Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EE8CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153823371.900.16617736572099161772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9065e5f8ee530733c68c7e4e4a61c4a4ceae7891a79ae9588ab0460e9f3e6b6e
Date: Fri, 09 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791538233
