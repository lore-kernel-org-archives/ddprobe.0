Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005DA22318
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722579954; cv=none; b=OAu/9Rwh8ADYUUZN7GGHYAb5mIyDFT1DHPNaDWs4l7dM+h4BKj1JKoNF8BjQ5gYZX9vQ8NmBYlFjX9Z831CBKZzq9kwZVgwOSbpRli5QBL6haI073OwufMhFbbv4+1Vrt7FR+MfWJXpJjTG3Yytx/aHpDWWItCQcoJxqFaWlJkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722579954; c=relaxed/simple;
	bh=xKTgiSrgku1PmYCHTguRPLq6TkSmZ4xnUmujF7CUIxk=;
	h=To:Subject:From:Message-Id:Date; b=I7bWXoBC8bkMPsrDnd+BA5mP5NNoCXtupOQ9fZ+EgV9yLkcC1CpuNZqALSE8NT+WDbeAfOGdzYJM4E3Qb7yC2NWU5gaq6AcU8hrVgs2SSPtCBkkFmdsWQAxjUjQOQcn2aqmBOhF9n+9gDNWOgAdX/rKj8nks0ehXg9MuuSicLy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s61/dSfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s61/dSfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EF6C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722579953;
	bh=xKTgiSrgku1PmYCHTguRPLq6TkSmZ4xnUmujF7CUIxk=;
	h=To:Subject:From:Date:From;
	b=s61/dSfZ+xMdBCo1yCel4f3VSbtdWzCciecKzav1pgHAe63qZirw3zi4ZH36MzZxY
	 +0hpELiMxibe5ArMMwWQoTkDNVHlAsZK2dDUoZUBld079TdSgZxaeY3MfwkH5n82Rc
	 j0OBSxLgDApCStrw/1M2v0subLdslxAWWXu0Ll9elci3F+ZFuQ0VqXdCnhAnX67sc3
	 r2umlTtfmabiDsWgh5maJLxxF/DtKi0SffaZhChbJJ26znNbuody/0mmZACjZVrv1/
	 P+GnOQSlL3ewgqeyyfQoeGM7hx0FrNK0nYeuS3oezvsvIPMSNZJAP/BbtTDt6iFwQy
	 0Vm2YfR4EWPTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE11EC52D71
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257995365.24009.11866118736250950059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178588115b9269292a0929d617b3d837cead325efe4c9b666794739f496b3dea
Date: Fri, 02 Aug 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722579953
