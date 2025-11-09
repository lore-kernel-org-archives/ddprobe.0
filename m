Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ECA1494C3
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762668594; cv=none; b=OPJD5dJzZuzG09StizBHVTrr9jHf1apjsUdG2NLs9kv7q6sm+6J9dkvcQu11hNk9f4BIEPACHpbFMGWoyVl/P8pQw++pxh5wqlXlIY0uDASBJqzYk/BTTRas1klhxtErxM1veUW+v28eAnWLk9lZejIMOxUQLI8JhxWjGcUM0is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762668594; c=relaxed/simple;
	bh=8K0iw5fKDxf6gs+jNeDhaFeSEPD/mcsjrnsbL+lgebc=;
	h=To:Subject:From:Message-Id:Date; b=SlvupH/bJvflxZVrfVbBtcXfLLNHAsOXYzrn6ycCEY147ouwA5Bx5LY2kAKjDh8mE+QjvjsFI/qqTSn331yJH6TeqMoGYSxIfvxkKjAUb9dRIRjAPoM3a0dJLMwhYLy3ERSzHUo6FDVuRX8ge5r654cvx6T0Mwv2qiEEK/UIwPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSUbzDGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSUbzDGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A213AC116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762668593;
	bh=8K0iw5fKDxf6gs+jNeDhaFeSEPD/mcsjrnsbL+lgebc=;
	h=To:Subject:From:Date:From;
	b=pSUbzDGGsQCI9jegso2g74PC398F8KQKBHP9JtEYv+xjqfbpEc06T9OEmZJM02OMm
	 JmprIIyIiSOBrKoy1FiRiEUVdrsk2bjVzfW9ujZeddieuCcpgmt22foYg/ID5fmQg2
	 Q9F6ZX0Mg/03Td0k1wSghJ52FzIlDZAAAhTBJKhGiANzj71U3ym1OUOLQSV0J2sAzt
	 KJvtSSWnDSUjxpRwduxBwyVqk+KdgCPNEYpD85NumVkNK9qkHQ9kJb4uGqjdFbF5MS
	 5uLXyVHHbjNe/v5vt3y3PvPYM+ia6IJlG2X0yUtr/IrZKEzGkQSqgpLO9QSH8r0wZN
	 YZS5LYePKS/lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95187CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266859360.19057.12875571985895134696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb463e0218318c64177256a09974608b0c6a0aa94d90b602b3c764fa009c43cb
Date: Sun, 09 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762668593
