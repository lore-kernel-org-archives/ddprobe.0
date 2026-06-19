Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3575432470A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781852194; cv=none; b=pBtNiuWmqhAkcFAFhlvH5Qvm9sY2rarpsw8ONeRC8alSrEdXSNw0+4SmgVIJx7vW6CiNAPqsMd8jYeGGv9C+H9soLaXIcPo+MppanHz6qCyrOkO1jDXykA5zGku9MGnCv51ACRf4OprnheDg3ml5/4uyMJ8uuswcQV9FCicDBNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781852194; c=relaxed/simple;
	bh=9XGSPDXQspgbWWSgiGOGxUDEu72OtpEsWx0IcxYghs8=;
	h=To:Subject:From:Message-Id:Date; b=LDkwEG2oJWJ2g83PJ9ZK/tNzVwOJcQjEa4KaJqJq+msdlu3FS7nO52D7q6eDLJn19hrf5VMQjDIUes+cXK1291+o0NmHfLvy5w4nzDMz0HMFErN0ar8td8ez3cPOWtupRIGkI2rftBIWYeuSFie09FB2Zpqdkx55fuFUbkSvT8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjktyrUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjktyrUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF242C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781852193;
	bh=9XGSPDXQspgbWWSgiGOGxUDEu72OtpEsWx0IcxYghs8=;
	h=To:Subject:From:Date:From;
	b=VjktyrUVj4ify7Msk3bxiR2X2QxA+R83V4QEzrEkuxbyTKrKiKPC5VGcSRIOxxcjq
	 fOOdj7Spoo52QtrO0h5zBkPAEIqM4SOO5NbHtUOXvE49Sm2i4lRMHFlTkO05kYoDrD
	 c1BhYaRtvucaL76dZPzErdOxIlcm1dA+MiechDwnxoDHhrD2arFWe4K2mBemac7+90
	 bD66vwNnXyIXUyNNXt7bssxoeS83pF5jK6j18OGgt7ayJWFArY8F8KR5aJi9y9lAF+
	 4MZQVti+Agh8vr7qV2ki51AMF25gQ/dhXbnvWlE6pAS/uV7/7yQ1EGDONS55mFdXCP
	 RBHN9+ZjWPruA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D98CD98E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185219371.9447.18430732487438536619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6339fd2881daf7ddde84b195f723434d67e2c0a2a6c1dfec152359b7460db1cb
Date: Fri, 19 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781852193
