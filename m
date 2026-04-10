Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87EB3446A3
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775812653; cv=none; b=pbKLhWNmbNhMTGCx6jQ9c0mhkzSTZcAyD/dMd31+9lonDRyZHl2jXK8CWEfpi+0O3wCVBBmfBgZuzKzsymc7De7RnGfXVeE7mQ6/IGcBD5GDATSjnqcKIFbkfcWmooTtBehU4+Tbrw2RLPS773RQLs8acayj5oAzvEX/SyyB7ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775812653; c=relaxed/simple;
	bh=9oij9iTjeJlcAkwZ9eOdh+1q5p6GjcDa1kjJJexflyo=;
	h=To:Subject:From:Message-Id:Date; b=jzbLockoHWAy+yfj2UyfA/11Ro5my/KYZkSQYW/Q9kaHJtMw2xhk9c2pl1WeiKPCPFet+CRjVvBRdTar+sri8MZx2tFkseyGfainRkwW7R1TAwDRSVA3L2ZEL0XPlwEv34qQv4wn1BbQlqq5jJdI4YnqqQqEazSYcyd8pBfRoZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwG2o5n+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwG2o5n+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC066C19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775812653;
	bh=9oij9iTjeJlcAkwZ9eOdh+1q5p6GjcDa1kjJJexflyo=;
	h=To:Subject:From:Date:From;
	b=OwG2o5n+9/Z9yosGES0sLQbryLru56vXwN0LFDieFStYWGPR3JNBLRDfbKmYhyh5O
	 52/1VkKYyjiry82Zl8RDc497aRbzjFXNszyDmr3QivWUt93pQVuGGfRCEsm3dgiSQW
	 a+s/x7B11BHCZihZJrhyrEkCg6Ag696NQUM9s2LqEC/8tmXYRnEU4rsnHykpCl6ijL
	 3+FJjOgcI6IHGvkeDb9B5G9Ir4ShXfIWkDDPTa0VSf3gwu0Muz3FY4+QvC/+psCrxo
	 b5Vw01MVoDmZnblW0ZdNpEuOGbCP5olc/v0xtgzgYKeDrVkwQkzv/Oviyz0T66WCp/
	 Y4UbIAtuXOtuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B019BE99056
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581265368.25188.1460282933514241902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccc29cb3f7b2b085eda7e0b7f4bfd671b9eacb1cfef4de2d421b12bc260ac94
Date: Fri, 10 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775812653
