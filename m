Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF3D17A309
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780840474; cv=none; b=PvSM9nLI+avFziYzO7QUj4Uv+7YnB6xA14bO2yy6X8NzLp4hw9sF6bYaNGADu9jVJwPPK8fgzs8mN+/27soh1FXCk1WiebHAQ4134egh7FtRbu9wpIcO6p99MMFpLhhOW+wBmnyqqJ0ccT958wh8Id/CU01NJ0b+ZAgZZxfQhmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780840474; c=relaxed/simple;
	bh=DdvNbWxqf5f1y/bzA28Lhb7cN/Y/Ks5NcaWhYNBUf8s=;
	h=To:Subject:From:Message-Id:Date; b=HBKVWvL9OalZYRp0iIJxhLyE75ymYTS76DKUA7boMz9QTNLKfRrLYE1h4bZ5q9qCOaRqSFP3FFI42YYnO8suJe+MkSr2x438xXJ2MsrcrtJUUt2j7tm6ZO+xHOs1DwqvG620GyBOCXv2vbFXct/ozOMcdDg6768qNPnUrJFS4TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJ4tVzOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJ4tVzOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EC6C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780840473;
	bh=DdvNbWxqf5f1y/bzA28Lhb7cN/Y/Ks5NcaWhYNBUf8s=;
	h=To:Subject:From:Date:From;
	b=lJ4tVzOpkTQnVHRFXWKEJ0XOP/oFVrD1Bi2cF9aQ6s7QUVvJSfua95HjqAXk1bt+n
	 C8IUvveSwAcfGuln4Ks/3F1GlPKAZXoQManKEcL6YEdLXR9ftyT578jn4tLEav5WYc
	 OetxerjqKiC5DXOfy/jkBfsZmdkpYRk/OJizsU5Vwj5mO7X0M69M/n6+XZu/vbEKO4
	 tSbIcIQz41ZUlhDbewxistbEZocYCOOLfOf30rx1OCHmSPlBr2lTI5w8KpH/SO8/OW
	 a904eVfAOd+7+A2tHtwv/Hb5RHlvmK6Cnwawcs3mC6JuLbYIpfdVDbj7IydJyccoH9
	 Im2DtrTstnZ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE33CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084047368.28177.7481302649891404676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd3e3843f02e580b1e707da533fc553300e74db2aee643319408ac1d0774e8c9
Date: Sun, 07 Jun 2026 13:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780840473
