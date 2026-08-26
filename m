Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B2830EF86
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787758834; cv=none; b=A+eSz/9TW/+EkY+iHw4ocdwa+zeA4+NcL8Miu5p1kpD2eFNqApSWvLQkCcVcUhdflgSoPvK7ZTJCOR7wsyWrzBbqLhedgxNbJy5s4LrHYLDNpJe4TL3HDHJNUtWadWEVzqtMtI0PaHW+QWdB+T63HrAzh9xyxGRIQ7waROzeVA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787758834; c=relaxed/simple;
	bh=03CRq+CKv+7EqQXG34WS2M8wyUwDX1Mv/jS4dmXY9D4=;
	h=To:Subject:From:Message-Id:Date; b=aNgq0p8rKdQR1iNyNG9uKLUv/y68zhGUWVTS45QZPWfFo+936p+9Fe4oC7Je/0/CzyTSKTHK9Dy3TaiePcJRkcL7RVIYjxvYeXB/qbZ2TYu/F99KJxjZgQMDZLGjiL6XcnraxcMWQ6dH6Yph/9n37IRaB+LfCOMmEKQ0l7czgmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhuRtCs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhuRtCs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC389C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787758833;
	bh=03CRq+CKv+7EqQXG34WS2M8wyUwDX1Mv/jS4dmXY9D4=;
	h=To:Subject:From:Date:From;
	b=nhuRtCs5B4khvpUOCv0dQzp3UogEprOzK3rkCDOlttAlo3DBrz1/QXvw1NA85YCLL
	 DBfWgOXMu1j6AoqMfB8dOeFxkU7UVaUVao6JLR2CNO4ZaGd0XzmsqtXTWGcAjH/qoN
	 Dpoh3ettQSU+d5edhHcNZ0P0ztc2rqsU2B/OOVDYGdyLeRHOKZ07/p6i8c+fwAVFro
	 8KrGDiNrLdGfVWNCoURp6Enn7xGp3U+IwhI0kGdtTfVfG39w/f0Rh9JRdmQ/c+zwSe
	 QkzLmC0imCx6pqiFYD5dMRje1mOXPufG1ajGicC0xg3ozUIAD23NipP9sr9P+INGBC
	 InZfDH3vDdJfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B75C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775883368.16573.8934349855744191642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5098fee9e0c7e795f1cc7f35ff0d97b38a371cdf91dbe77fed5e3306adb5524
Date: Wed, 26 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787758833
