Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B19222FE0E
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791649834; cv=none; b=KlRgN2fRmUFqnHC3ICHV/Qi/pIr2YX+xZaETnb1Q4RPtNPYMIs7wiYmJaI+B8+/OSl1b7mzZSaBZVdYp0vkjoU+nkkCmLAlbd9UcO9g2GPgAfzKoHngRGuH5E/eUfoUTdasM2TVvCTvH4yYj5AFX4umZbAO+QPia/yL8FwZBav0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791649834; c=relaxed/simple;
	bh=3mnUAjbMpXrxBheuu0KNAmSXaTB4r1Y5iSqh95+eq5A=;
	h=To:Subject:From:Message-Id:Date; b=q67CLw2HsklFyk08ZHTX6olgHaNtwk31Ly1l6qqJLOzMvknTyViGrGXWbt/ANYj2dgz0wuy0AqLkmOkaYWx+v3TV0cEEv2YG3/4WQuA49uJpISIRcrXCLETM3ZZ6LaoKadDAI1ab6RRSzAtA1BLeMkC9v77GtNTMX3l/PCjKrvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAzEAsBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAzEAsBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EDCC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791649833;
	bh=3mnUAjbMpXrxBheuu0KNAmSXaTB4r1Y5iSqh95+eq5A=;
	h=To:Subject:From:Date:From;
	b=RAzEAsBvbACShnTLPvM1skuejzNJ42+knO+KOILJIA8kUA3olRTvBBQMTJ0ztODcU
	 tCzxfA5bUSBeJihUXLxqhEQR2IYBOBBDWn8p/gnMnxqM3pcFwNHZ6CwiY1FiXcSeB9
	 w9RULJrf/fzl0Z+D3anl+uVBsrYlMq6gKAXtTfOwSERHVOKc8bPs2FkB5ytDd0Gxth
	 t4l3WixaUvOO3ElIo5eNIu8GtrRjJfSyFBmY+9iQ8Z/JMH7B7HD+bS/qE7hecyz8i3
	 HWKGpdJcXudmO2xpOCBIAJfSAtnwq/eJjNlVswQMWAKVJcPFHj6HEji0P2zxqxzs8a
	 ee9THrjqkNSpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA43CCA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164983368.25816.878192106403722702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b7245ba481cd633b09dfd0394310bd5064e7eb8565d0ca3fdf5c432fa9cad7
Date: Sat, 10 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791649833
