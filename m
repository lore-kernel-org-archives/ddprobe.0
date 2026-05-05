Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42754351C1F
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778007454; cv=none; b=D/B8s+jGzoRoadOtdXIHqHhFfTXL2ZMe8/McpGYyDudwDzPjAIKuvrw63hQf6JNZWUrnseypdRkDr4PW+5UmD4+iEK2H3qi+SX+NiMZqPpAIXPMaT07Ynm+yhziKhQF2mpZBP/95t04RQtBTmlsUULbYY0fU13pqZ81XiYKXld0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778007454; c=relaxed/simple;
	bh=e1iWuPPTu7E1UoRSTN+ntmyy+xbBfwZhfO+p7Ys1ufQ=;
	h=To:Subject:From:Message-Id:Date; b=tLwpWn9xQbZ8LSKrFo1H0zeil8OIEP7abYm2COapxYcJ2iFp7A1Q5hpPJSzLhol/ZxB41Rpu59XFY9Uks33hQ5prTDXpP8Fa9kYd0ZcHeDmtmanopD5yX4brOrKSHWXft7yppmq30XB/1kF9Z/shlJHAP2YciBryk6bP0GoDiUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2xTDP/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2xTDP/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0569C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778007453;
	bh=e1iWuPPTu7E1UoRSTN+ntmyy+xbBfwZhfO+p7Ys1ufQ=;
	h=To:Subject:From:Date:From;
	b=n2xTDP/D9NLQ9Hy/MdxyB2R6ZrnrgLO7aTOSQT4wNEDsn/x4UluKy/xp1prkqeu2C
	 Bu4Jmb3ybWNnPpHyourFsvJrtM2Se7gIcqipiBQcleeqqZBMVl5Hk+DeVDXpsc2QgE
	 jdnJ5nqZUHi+woBBwymKp+5b+SiMkTakJMvOOzGNCmYn0L1nXtO2ajvRFwg8zVQvN5
	 +vKIStXTJnfvkxUqVpw/yOAbVxPoURUrOm5FtETjnlwhoGuuNJZcF+xrq86rBf3jId
	 /ooXwfOsg7hOIut/tRIXLAnr6590RqYYGPntkFazVVtpH0mAnitDAZbwkJKhPcM782
	 36j5DKdH9eo7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB381FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800745369.27363.13964505691913063561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be54b5266d00fddb2314133ed48813d0c8ab9b073a6c388a4b2d84fec6924c53
Date: Tue, 05 May 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778007453
