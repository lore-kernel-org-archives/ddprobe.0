Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5919F8480
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718677703; cv=none; b=ryHzcoBw++jD/0ygEi7e68aF/mDJSrRGf8rs2+8n4vojd/fao9i0vb86a+MR2fPHjXPQGq+FuWI/Fh5GNKRLa79iksN9GVa5M7EyWXpxP+kyeW8RzotWeXk14Kk3bUDv7KThtDsrYH9nPqYeGBhehSkNkcQRq30GNnCfFqDENr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718677703; c=relaxed/simple;
	bh=EjqMHNOTpLvVzIUtSFVJzLOAx/N+oJCWQiYQFc37vSU=;
	h=To:Subject:From:Message-Id:Date; b=Awbk6ZmZVHBpOeJnVi20hI6iYk87Vfq6dZYpTluUdEDxt5GT1NoAtmxBYMZmzhE+JJPWiXr4lhwwLSr1x265StDL6aa5fMfdTKxE0AaT3ycLi2QImy9UJyzzofzK1DwBBqZa13oIE8FKRJAr13gWUWpGzN0M/Jpfd+LHcxrZMRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rf2jVNhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rf2jVNhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA382C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718677702;
	bh=EjqMHNOTpLvVzIUtSFVJzLOAx/N+oJCWQiYQFc37vSU=;
	h=To:Subject:From:Date:From;
	b=Rf2jVNhwb2/Lam8nHSiSzgJyzRRNCaZvuryC8jkw9oW8PgnZumCnTkr8/BjM+h6FE
	 JAS/9W9ZODrjBIssUUD8cIOLXRF2ZuvKsXoskNO+i64t9q0V4ydxCSakc7MAQ2SvtE
	 TFbhSlLi0iceGHobVnrsI6+E53U9sWbCBoJlo2SQaUGiWM5lH22kGX1MF+v9PDfwp4
	 38enHVuq59u4aNhKt8ZaWoYszmJgCGre4j471pxmy6HCXbxAw9Xe6PcSNjKruZRweQ
	 pmYVhrS5nuQAM1qoDhcScr9iOkjezh7m/je3TLIS1wOPV5tDnHr78sunZj5J7zZBy6
	 fY12QSJRaWlAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC4DC27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171867770276.27437.1805849759077385533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929d2bbff462ebb4622d40f667ee611db0561f64340a591ccc70de3ce55e1f27
Date: Tue, 18 Jun 2024 02:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718677702
