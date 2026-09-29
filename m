Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6C33911AB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790655634; cv=none; b=f68yNc2jfgQTAmTUTakv88Hvcl5CfZPb+6fVSaRj4hkdr28agF7gpKVjGZZyxlEmQ0YSwEgPrwsoxuuVa7VcjmhC84oTAIHbqEFl5XOJH4UWAlBDOD+P9CiawROfwHpSEFPwXOsqqajGZHDpxuAZvoDTNFUI9wQQCJXKmqdMxfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790655634; c=relaxed/simple;
	bh=pMBpQzEeFDzU3xxrJo+5ZmZZ1f1P1qFBO1F8RJF7zKM=;
	h=To:Subject:From:Message-Id:Date; b=Eqzcz0DLfyEgnKRQYoq/R/QMjcbzdfm0EcP6oFEe6reAZaXokLy0T0oQ631PLR4+88HlpoERxMR2r2D+frDDwB4GGwb9wQzIR2BeSEU0WH8ol6lvtP0vXaYTmVvTqh1Ub6kqhF9AaaP//8+LWrpAQZi2pRx1B/OiqJt5x8/p1wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dp+QHoXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dp+QHoXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9B0C4AF13
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790655633;
	bh=pMBpQzEeFDzU3xxrJo+5ZmZZ1f1P1qFBO1F8RJF7zKM=;
	h=To:Subject:From:Date:From;
	b=Dp+QHoXN+JPgekGaLm1g4Xd6BqcUphptNsJKyPABvFrL4XS+ZkqM7xwj3QxN0rCS0
	 m3KkUnn+WHF081suX6HeDP30BwZVCwApwF9xJsfVrIWWDex3VryfH0Hce7AtiUAkBS
	 NpS8bRtZxE7yA6sAfWVq2D/OHPU2fCOvFxz34oOuNvQ/yRdJ/19nBGRMAQR2AwkKLw
	 t+iN0/XUXLClcqVFKvpg4Kbbmmdjb/5rqTKzWLlQL4415RZVtVh+yYvKES3TeEfHNV
	 MwbA5pjtYrS4ahvob3pDFFVcy50PzF+fqVBD0IKe9zghY9YX1HXbBmUBaMS38bngq0
	 ucGD/Zs+IBQ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EC0CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065563372.13603.4015537011213405742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903b98182ceb29589b333925523278afb1279d9c8d79573c8c67b65e74eb2777
Date: Tue, 29 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790655633
