Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2D31B86FF
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721507154; cv=none; b=KOLr3XBDLgLbYDEPDWFfxli/pbsREiXR4b1wsjo2OICkPQnnZIZRaFAZbr97ezPtjNPywqpwjw/43JwLzn/OBQR7PNE4OC8h59/tnemuj2ZgGmWsuHNcrcb24QZq4TirTgefZg1Dzm/GN4UZsh7DM9vj1i+tNqO4mvcuVOpL0sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721507154; c=relaxed/simple;
	bh=MF1t1ucCSkg4O1u9UQncoQA/8zR9yJykCcmC0253LyI=;
	h=To:Subject:From:Message-Id:Date; b=BRYOgT+klvtTUgPW5+wS3Y7FKRKMNWi+8kuvrMA9eVj6GPytsqF0aykCduiRwn+Qaa9L6RrlS7i8zXYEvQDdFM95jaBoKOXLwidsppv8Hc2XhcBSPBTN+1V4r3LPNimClfE5AmkeCwjtcpFNHzLJZrDzK3NWtHL9FHl7nTa8OHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhpH11WI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhpH11WI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4781C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721507153;
	bh=MF1t1ucCSkg4O1u9UQncoQA/8zR9yJykCcmC0253LyI=;
	h=To:Subject:From:Date:From;
	b=uhpH11WInd3Lt9GZhwPbqI1nuj5qmmtD7WiA9iI2D4GJmW21HzZ3iDAthcgiDrb9U
	 sW+eNyXV6ArUms0aYwP2/D/3d2UoKY91Hb3Cr12mBnkrzr0Tuc3nsPgZ8wCLWQlwpW
	 5C/xcq9Vt9txJErW0f9yueFQY67owiohvRJxrushGnS60hQ0FPBNnz0y5wb+bHTGwJ
	 e2dHEsPHoQTKO8Mg0VnPwo3RhIDgS7/MurMM9y0ALKU8R2pibW7DB8xy45rENMIOSW
	 JeFyO88fDuSkh0tV8uHwEWbAd/9x0ViPd6fav3ipYNhTxSYLehbu8FD9I2NU9JpK+1
	 R5RmHBrRd/E+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04D4C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172150715363.30870.9648384197830266850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1885681702781b44969f43a6d81295c9ed1ae8aaf35fb6f07fed325d4750b649
Date: Sat, 20 Jul 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721507153
