Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BD6175A6C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784430514; cv=none; b=IILfQEtQEJotLiEjRAedR+/FbsudKmq3c/vIGcfMdrROlTwAJt1W+zoGc6LrAcgEfdAiOu7DpyhyFjDV/hqApDE2wf0FY17P4OIOrYhiYr48TMvy3Ri95izI4Tt0f5G69qBaKEXpexjvDin5Zw+5A/h2cMvdwSeA3KujtE8xYW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784430514; c=relaxed/simple;
	bh=vwowdWLmzXUtGLqclGGTkSyj+sCk9STjNLwaW8CPW9E=;
	h=To:Subject:From:Message-Id:Date; b=ZvY1Z/B08UD4mmLGr6PNQhbszylcTR9fJzuF6x5L6SJYUHYWO90uRfcwGOieI33Yq8ZAQlDyurQRuyTevN4LMObpkQYqq4JM/L+rFHzJ4uA1JVbxkcXalN6n7hAkDLibcZxbXhlSRs/ztIDWtjOorILQzvHml/tYh6iK7g2Lbkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5il4TtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5il4TtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E03C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784430513;
	bh=vwowdWLmzXUtGLqclGGTkSyj+sCk9STjNLwaW8CPW9E=;
	h=To:Subject:From:Date:From;
	b=o5il4TtCnmuSVKOJ5TyZDnQCSk7RMH1s/FWbAr3y/HPjAU/LviXArCRZxxJoB8pdX
	 l0vr2sId1u4KjdViAsNdt3PfznkQnyt/qp/CKmPLTVOCvIRdxELSSMtATI24eXbcWU
	 qzm1DIMMR4uUraJWi98SIdecquV3U7Od/y0JuHTjML+lW1uE13IxmtuRGbsSWpGwf5
	 GVr0nUHx61l+Rj9yS/h0IU1rz1vGVIsM7ZJkUFrWQaY+RUYqgTqAlv14PVM/sSUkfD
	 FQYyGUiaHXHZnV8VfqQn1epkFO3brMbK9D/iwtC0xzLutWil1MSOtMitmJ2vweJklk
	 7zNoHJCBy7bhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5B3C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443051368.2138.8054688637298430376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba2dad5a5481f38110beb637ccc2d2a431f283171f72cee6ddf70d2bf7207b8
Date: Sun, 19 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784430513
