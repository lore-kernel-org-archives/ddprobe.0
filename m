Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3230B1B85FB
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726411554; cv=none; b=jsUahyV8my/5Ylp71961vrtkAc1uXKyGZFMBjs3PEv28kN+NpK2O5LwBKZ6e8JnTgotgOYk+7xUz4BA+IxGMgioPRfvN21QD89wVjOmGKn+zX0UzMeiJSsnjJTdVCqjsWNiCZJscdRkrwgwXjLxfy1Hw2qRtu+dhwGYHYBAeMIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726411554; c=relaxed/simple;
	bh=M33+tuyXxXp73JTrtZf79sxrgjqIbvJH5124w54VKHg=;
	h=To:Subject:From:Message-Id:Date; b=XKUtiT56CEfZZ4Wr72Np1AgvcUoE24eioPAVfbuNq8D4IkpYU4mWAgbRoIcSD7TuGnFw87gEnfNSMo4gHkhBhSiDSIUK+d7Pcbl22UwSJjIWP87zRdgsFImqlXj5BKcVj7ns6F6RY8x2gBexhmxdbHKyxUNGDN11mB2+8vXisM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9dRKM/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9dRKM/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13BFC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726411553;
	bh=M33+tuyXxXp73JTrtZf79sxrgjqIbvJH5124w54VKHg=;
	h=To:Subject:From:Date:From;
	b=T9dRKM/KO+ia9+Sz3/XbmH59+rXsBGh1gZEj+OcVeSceIpjiEiNO9lExjznvIyhOw
	 EXADZlcA9j/6mAV8GkewDwtwNBlINPLuE5PHHZ66d5nrdOILeFDMzOppg3te4bszR1
	 7w3G5TsbSuVCUluh9uOHIg5uzoCIKlSMe6dg0ewHuuT/iUsrd6SlKIoqlBasXOI4It
	 AXx3IfZWomHQrp6fYBJEV9PLDJWrtb5gW57N2ZQwsh5UHwnwPIOk7g+32Z65xQesy0
	 fM+R5zGMKd91FrN0bY8EECkYatPLwyx3aP4fAccLv7KWWNci+A2BJZMgv27XYToZVi
	 Vx6zXRGk6G6ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AACEC3ABA1
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172641155360.27067.6448141789279864373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9786a3cc6f84eb78d962ca59a8a545bf54f59dfe9914c53e84abed06bd913bdb
Date: Sun, 15 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726411553
