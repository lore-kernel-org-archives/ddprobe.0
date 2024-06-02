Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660523C2D
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717344323; cv=none; b=DA4sHH8SZwubpWbZUqJAkJK97nLjCwdbNkvzSrDDm2M+8e/1j2liSdWMth4EHan2cp5NMBU4CVlcGNGuB3cGm+9aCjB6f7A0wPkD84OPonufbPBaK7gNcQCnkM8HH7vgc5r2Sz/yFw5K42JWHfyR7Pl6/co1JzY0Sm8ZPr1iagE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717344323; c=relaxed/simple;
	bh=m2zKbP0r5NTY5ADimA3bK7DRaBHUNVZdeWDcwFFwQFw=;
	h=To:Subject:From:Message-Id:Date; b=DKg7wFgHKAbHhYAAclGOcdMGl+/oPNY54vvf6dKgUKC14/GlMJM/hAGuIbmPB5nc/4KJ3hxP2yqWBJ/IU+GddG9+owdp+my6tj2OVoYmGVBS+2j0a1/Wx/dMjKN36ExuUMSidCSdK/80N/szTNaLSSyIIuOcjSnaShlkAI/7PuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvVV2VAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvVV2VAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F12C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717344322;
	bh=m2zKbP0r5NTY5ADimA3bK7DRaBHUNVZdeWDcwFFwQFw=;
	h=To:Subject:From:Date:From;
	b=pvVV2VAY+xPmroeBOi3sqEhbbS8929ww+wNX8uGwhdYr6+BISvXQOZ4hyKbj1BuIo
	 QCsB80kjEdwHskdiv1ocFQlcqBbTltR9kDS4KXArV8xVqu1gGSHnJO15VMZDgtiVwA
	 HcFI5jqUBgIDJo0aBm0axCpgr0Zw1MGTZYnX4jzN1CgL3WMYo4JHrvwxVdBTvwM4MZ
	 NHTYWR7tQ8hedS9FyNmGxF2Inq5r+xO2pvQz+thlPk7QZ+QGeMsGHvGKSv314k9pKL
	 UF7RAiLOr5opCPGbu4pfn2nL4NadIrfIoU0133ulAqrvvaf2BGnqcA4r73YH96P7FN
	 P/cqyJ5xFXkwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BAEC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171734432276.8173.496196836002358306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ea3d567548f66c3920723f43d5519b887df3f042efa14c948900f19e4c04e7
Date: Sun, 02 Jun 2024 16:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717344322
