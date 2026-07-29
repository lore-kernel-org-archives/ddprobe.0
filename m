Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C66D417D7A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785361834; cv=none; b=j67iE/vIeBCnXMswSaUs9/Lex/ZSxuFCx0l0wHkDbfIJHQEqsQKu/UZRRI/Lv3vlfKuCqoMy6cHpyIsa4wJmhsl5mlblaInWY/X12RqSPE8mfzNkQtMm6XpyBT7z02L/5ramV9cPtuzJghuFdGkeNEzp7iX5fQneNA4gC2ajL0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785361834; c=relaxed/simple;
	bh=qBlQT/zskqlYih/+/hI2fM8WL+rKfe6z+2Igpn0cP9s=;
	h=To:Subject:From:Message-Id:Date; b=RHGS+08L6FfZ8ix7gNGcIT5AGAR/afcB3hTHudmtB7Cu2e5NqO1SBt2pbp6jdo/GNwduBfpDQAMjpp8qU958We1ZxGt+lU8V4zkPTI90Gc/Y1E3LmEhpixttl2lcOCEtufZzzGB8lUfG9eQFBbtPQv7WPYygMgNzXE02zjWp5bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxN7vyKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxN7vyKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13E5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785361833;
	bh=qBlQT/zskqlYih/+/hI2fM8WL+rKfe6z+2Igpn0cP9s=;
	h=To:Subject:From:Date:From;
	b=cxN7vyKfjxzZ8iojOXL83Db5LYfPG+11I1bzH0gpZhkbTjUhdwkEURrj1F0ZXaxMg
	 03JGa6koJdPcLhqOAKrXXBUmM5aTTifC5TZrY55db/OmAceR7brBPLe/d90pEPGjxC
	 rzTSDRK6GnW2CvMRSrfuNmID4AKfBk1DrTpASaVdOkcr/pF9yLT7UBIG9gEePYcCqH
	 cOR4jBk+DnC1CSbKK7KHTi2joCQf4bYR/SG3cm3xp1mA6udAM1K1ZK82v5WCPYYyKW
	 8WgJWwvI3ZbezNmGKS4oAatfhySyzUjGiEDQNyzNmfQfz8BbaYfoFd8Jnb4ibSrZlO
	 Ra9fGUSnmvJ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE03FC54FCD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536183370.29508.473402240275859459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e5b060b5c1afca5c4f1f28e800a0dac730046dbb8e45c96ba8c52452079d66
Date: Wed, 29 Jul 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785361833
