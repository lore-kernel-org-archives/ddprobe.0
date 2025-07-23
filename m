Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AE122A1D4
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753303193; cv=none; b=bFo9W3fmKDHaPc6xn2ma8sG9opk380haY46k+GmboAk8by3qko0chGJZE2KKX96HWI41OWOZC+8AbHZEchh2yskaaQeaO9vmxzBecFHWxCTnHFV3KAxQqaZ5JQUBO/gadrs5TpEAYPEOxEblcS3STFg7BJpyBg5ui9tOdYFIJWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753303193; c=relaxed/simple;
	bh=o+sRKjMznSS74iWjS1Fzfz4tTAN9+RzdaJ2Cdpytmm4=;
	h=To:Subject:From:Message-Id:Date; b=CzsAHfWpSgM15+dVJQxazEIJFhWsdVis36ssJBlFizOeCPVLnYRiMrl+g7aXD417riN1J7Tc6XI5iEjBwopYArqrOn0PCJBZtoVOuwb+UFN5dRYHDMuHDRrSyXmWXnJIcMNL097lzdb1iBmSVrwkz3ylB4QSeBejicGfDebjtPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jg932LwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jg932LwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C0C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753303193;
	bh=o+sRKjMznSS74iWjS1Fzfz4tTAN9+RzdaJ2Cdpytmm4=;
	h=To:Subject:From:Date:From;
	b=Jg932LwDp0LBA4RvsR4Re8u0Zp6Ha30a4nM+o21J0QKfcd0gpfky/jfI2J+18DliF
	 8Bq3cNi0JjcL0Uo9TH0U5eFYvnsPrxFaGmsiHKRKqj+lgvRT2e5suAPYHaaeS7paW1
	 dxgjWun5WZN1mewJe/+6QmXVGZM1Ehfz5dp+SUmJl1zP4rl9tKnYpI/M81q+o6LdhQ
	 xdLYlO0VuG/JYgEsPFWYKjXlSgHO6+5OM2Zcz3hxiIk5hyCrH0edCXB7ZKmcqB1TQh
	 s6YBziaFpOCatbI8Q6n/eXO8fiU9Ehb+Q+dhDUww5G7At+jAdFSGkvGqWLKXSoxZOd
	 JipVi22T37uLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B75C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330319357.21460.4486429655271083468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fae2d982f43fc7e7c314a6eb2e3ad00f06664a08520dac8d1dee9727bdefa4a
Date: Wed, 23 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753303193
