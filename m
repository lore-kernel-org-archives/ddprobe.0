Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222B14C9D
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752728394; cv=none; b=dCWLQvRIOqK/otrcoIalB1yVRLnqDwgmnBYu8+Bv3Tcek0RmGYnh4Helk7qxDAaqC2rR8ITgS9Rb8Onprjip1JzWC6SNCpj8jn/drNOp48t/xy11enFPRzq/cEC3vjM9ECDtWh6tPB9R33ow6+x87kXFX47rWubS3wxHBHglygo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752728394; c=relaxed/simple;
	bh=YZNU6PURS/ZtUWpa3HEYIwIPhEsz5lOeHh1rUSn2FMc=;
	h=To:Subject:From:Message-Id:Date; b=eYqnHawsdl8SRmitQqDl0ihYXLjx4egOu8sA3ol/r37CeZJJ0s/zpT6kq8eU8VtZ2HJcT7tUIIhN+LnIhUzUTaVibaoggyEGVe10n3K64cplkMSoFVShlnrKSVf/Uo5zJfMR5EpsUraV87XfOcO+q93I0LKW+fkkB/WsMBRnJxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tu7xL4kR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tu7xL4kR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D1AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752728393;
	bh=YZNU6PURS/ZtUWpa3HEYIwIPhEsz5lOeHh1rUSn2FMc=;
	h=To:Subject:From:Date:From;
	b=Tu7xL4kRBNe5Jam7SVOsYIE8yh46n6P+WS2hG/NRFvldeVuaRL9t6kvXi+e05nBxn
	 Ky0+MTlRkKsrADNh0IoxLISAktPJ5+LzJzmXDeGMnzkDcquUfz4kFzzYWsztLOVxhm
	 QtV17/p9IYhMvlSP1ZdKasKWkgT4cxq8fDI2juhrVFgJayIvQzmY6FnukpdfU3gue3
	 0Bzqn8nH6B5YqxKQTNLljlH6b7/DRDKrsoGXytkjNr1UER0i0giusP8qIhlUpKtWJ9
	 KIqWG0VRgD3ogusWVMymqQnbNQG3z0taRkgV5n72iYvsC3AC6XKn1Jg/RolKhYd27f
	 68f3ynVVWcCqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911FEC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272839357.2910.2684038359176224418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923746728ffd9d64b6b1525d783e8510a287361326a0a8457f04cc392dde3b12
Date: Thu, 17 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752728393
