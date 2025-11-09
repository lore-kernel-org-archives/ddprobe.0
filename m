Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121F025771
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762649994; cv=none; b=IkxMP7+ng/18naPc7s12/XWu+eGQ33+vdOZtKAlhjuch0UuR8cBNeazaziMUwozNfVwV/haH2oedab9EvalAfe6A2cXgCMp6ipBDVCJugxfZ4bAuaHdjfYqZ0s+gvoFRAQ9HJW3vDyAMVx0IzlY0X3yyU49FkwCfX/RVnYI9l7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762649994; c=relaxed/simple;
	bh=rexYykQ3gZhLzgqY6ijRdUoBwI2+RveSr3qHPqFbdoI=;
	h=To:Subject:From:Message-Id:Date; b=DGBGevTqHJoT+4e3KKkXsloeBwkuCYFWK5qYASFKuNgzuhNiDFqzb7KhdpC0+HTB4bKhg/SejNd7zsLFu/oGqRkpsqbkjtVFoq5Mu1Eb8F+YsUrVhrsV5tPSRfhQzXaLuKRpj6/TlKYaDqrWyKyUVtRyIn4tAlKmKBn32SmONT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILXo+vvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILXo+vvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A41C116C6
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762649993;
	bh=rexYykQ3gZhLzgqY6ijRdUoBwI2+RveSr3qHPqFbdoI=;
	h=To:Subject:From:Date:From;
	b=ILXo+vvIOQKmceQl/YUEGEiOvcN6oqEtNEJPG7Ln78Xsr3P8KlX0EZNDLwjwesknz
	 YDkmQi787E/Zq0lTOZsCxgmU4XfblzGHfoTjQYKKhZ+mlL302yqidRXA+K47bDXf9q
	 RzYd9bYZTosQxgO1onPPvscRuex4CEaUKZxGAtVily8kNUg54bKqaoLoA1rgovOqcL
	 8n4VeH/DSFNfcaMFYEll9MZKLgulXFMuqWeVxOHwSx7DSD4I58YqFIobpYAVdylqDn
	 bNYzZhu95m64cMDJ+pFG3hBpUm/MoKC+VNoFACxoQDkHrddTJs7G/5jyUvRxQhdn20
	 QIeuM1KH3CgXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9241ECCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264999357.31642.18025863806085552617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef0d087be53589303843bf07c3f87b8ccf4490b0dbc25dc39b3b99bf917b250
Date: Sun, 09 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762649993
