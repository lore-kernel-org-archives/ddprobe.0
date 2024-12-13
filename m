Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D621E105E
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734098154; cv=none; b=XC6TBrRkUo9jnAFpmBpW9J2WwhZRtSWR1v5rz5Zs1spCnNXOkAllBMaIletPma1xc2DglrpI91DACX8ncoubrFBIYG3KZArzCESWVdvU5h24c7Cx8J6Zr51JH6JpdiIZJm7HR7/31QYgIONSpOrxbgmZ3oEUpFLGGuYWDbNRSGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734098154; c=relaxed/simple;
	bh=2bJKCfJnPkQbzBbnm0hVNHlMHijWpPAlq9gqyKw6cCw=;
	h=To:Subject:From:Message-Id:Date; b=Xczj0F8bZOJsYqJvNxGGFcPeEZdH7yD7j44qe0FtDkQSF2z7wQ2OzsRtJd9eHoJS58vJdp9MOSsayXUOiAC+eeM9CJxtpPVIInLSOW4jdrc3CywNRRqNTAJxv6IFfiT87Rcyyys1TVp/KgHWmgYltb24FOr+Kir8XSEqLgnBumU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikeAwPpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikeAwPpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B197DC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734098153;
	bh=2bJKCfJnPkQbzBbnm0hVNHlMHijWpPAlq9gqyKw6cCw=;
	h=To:Subject:From:Date:From;
	b=ikeAwPpee8HwjgS8OZtNoilBVBpUA8eaLdhf5rmpf615u0Sj86r29XB0JTbfUR/In
	 UNQvRsCLn369HNw7h0ObGHmGrlywISgSkQ3qw4DBkbWXGBMop5Nu3z2Z338VhQ9qs4
	 gPdHKiLB/vP3hpvG5N5Kre66Mdg4wWBKMg1uGJn4jEUdSTw+f5+t9NkhBwyTMSKNgc
	 X4OgdLGpjnu3Xg3DHtlbU2Kd0L+JJlcfv2dL4CAtTUID81zlAj18/1hjba80Pl8dlF
	 Nn+PaOScYGGNjSLJ+08rGwDwDNtwuRJ9AOSrsnnBAkE9OLlAWjUHO5G2J0e4hAjEFz
	 W6l1vPwu2Kw2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0459E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173409815361.6686.8874538424546260986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a00d5a559a2384f1836bd8c01760a36b95dc85a09235da498cfff0995ebd37
Date: Fri, 13 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734098153
