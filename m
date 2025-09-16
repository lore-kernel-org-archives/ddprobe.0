Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149E8303A3D
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758022794; cv=none; b=T3U6ZTXPDDXQx2b+X/WF3k0LsZKgis7Olm+CMZXw+5KOQmrBi3H9zBJRSLpTk6rLeoNGNdvf13Y2lYVYqKb/+RViDXDflCzni/YrfcKPWg9MWhsJZ9Obg4wAfTSCPfsNFFSg/NDigGj5hbAngGh5KXVg/D+JWRhYnSJhshXQXlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758022794; c=relaxed/simple;
	bh=hcU7KdXG42ZisLlELt27MhGmtXXihlFS48HvmetNuKk=;
	h=To:Subject:From:Message-Id:Date; b=GydF8azQGbhA9BxDhrU7mmAK84GQTMNKpbK4zLFVor5V217AMvyw3tOOLvPhMOwaC0R3pU01hYloXSOlcecIUyXQLV3G2PDvpOTYnAk1b6lK1fgTiF+i+rexspVbYqq/4ZKUkTETTjK53J897YfaCCdh7QkSftCFM3WLBUe8mTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jI/hbgCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jI/hbgCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F173C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758022793;
	bh=hcU7KdXG42ZisLlELt27MhGmtXXihlFS48HvmetNuKk=;
	h=To:Subject:From:Date:From;
	b=jI/hbgCHNaQOGQkLk50M8EStuYiItWczWsjlE7K44fd/6ieCfWUgdSjLBrpkAaqpm
	 SvdEKoW7UaJUkhV/zBMemLYT+EctngGzO2xaEE00/N7wEX6NSWu7RGy72CDRiTRHvt
	 IHs+4UceC3Q0DKaSExsu3Jv3W6O6p/RvvpfdELQm4i3YOJ/zOa0OjXP6568A17IOGG
	 wyI9sEThlxf83l9yV7NhqEvhvMmBfDvpIeZDRxrAOPxFWHGBXudadLh3OaetHxXSgN
	 Lpir9/wDjFcT1VgfGWnOHJE4Xt7YTuE0ypAIrPaKQX0eL2s5IrqWtsiOe8pqtT7IcK
	 7s4ZaIyj673/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E92ACAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802279357.18635.11753467481903990189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649c520c73e6eec0c3846b1902f0355f69d030c094fdea7da4884647a1d104d7
Date: Tue, 16 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758022793
