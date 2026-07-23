Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88318311967
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784792374; cv=none; b=fuD+amS1+Hk/mlxq0GNmqdiDFz0Jgqso4FUOvRR8pZqpn21WHbK/6oOTznxdfjnoDx86d9hMHUBgVGyS50k4gjkOlqG1QW4ABVyqxSvEl2A3jt/tjjfzjohAfYONJaR8cQTsn62/aXIsE5PV+VS66XXW5IPkjIIchvatozqRNrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784792374; c=relaxed/simple;
	bh=cr6+i2RwCJplAkWMOz/UkGKfH6aPnA0gk71xVwe0KpY=;
	h=To:Subject:From:Message-Id:Date; b=ELxLzPxVuegjw/sIgIYp413tGtpkSjgMHXAh6T9ngMVG+9qe910hzSj+kgNpMAsOx23gbZN1reGgKYpGm9XD5ehNNu637qiPdW6hQ1qsAzFX7VdUF2Lf5hFBrE9e41HaAcEj745lzgsI4wT5YF+/HtJTcfipqCbsvAd7j++jrH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmsR+Sm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmsR+Sm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 124A3C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784792374;
	bh=cr6+i2RwCJplAkWMOz/UkGKfH6aPnA0gk71xVwe0KpY=;
	h=To:Subject:From:Date:From;
	b=tmsR+Sm3BL8EvvdZuphnkdrVTLUNviLsNcPaipfMbeOneFH2o4nVLBq/T+SSEtWIA
	 f9dx0HT8cU8nfEIDaMZdsJAvRSkLfDUCkWFarm0HhZI5pOC1TjxRrdiXItcXdQtEi3
	 Q4fEWT1pFoaGBLaXFu+n84tFwEoE0vEUYfPa/Z6RA+Ete7IAP6bWRssU5iTVKhUKeF
	 wNjKEelNpgHxvA6NDBSKCNxRrbmruWUtct1rvlhkTPPYkzhLFfIx/WK9jT1xtD7P6L
	 dJeVA+ca1pNdHZtQMmrrK4YNbF+jDmD9qb4hljTvYheYxep3l1NwJgElexqbRTketv
	 hgp/vGmW8Ta1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAADDC44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479237380.31627.12495129024759511850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db15296b338a96e1044d730b9d6880e20f307a2976f281b67fb5898d53f2326
Date: Thu, 23 Jul 2026 07:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784792373
