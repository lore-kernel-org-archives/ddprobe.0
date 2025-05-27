Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2429D139579
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748365794; cv=none; b=SYQvCDIYPjJhC2SCFz9D9FzeG7NX/ZYgXvNjGav930hwEQ6Hkeet5PHOn2haWPKwY5jslYACW/W/ZkGHzHJXHXd5FmRHCEgCooe9FsgKfo99wyXVbKSBY53/gLnMr6x7EOacLGhth7A9zNJPQso0Q8Inj8fF9XQxN2wtI2W/aKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748365794; c=relaxed/simple;
	bh=p/XQUPlgC+9HnUMKSo0YDuUVwXRNEznF6/puSdBnFHs=;
	h=To:Subject:From:Message-Id:Date; b=kYS4lnBLlp+EsZLJCHWrU+FYmgB5pPDxZ/Uf4gNtkVZV6KqcG8O0p5KnhP5Y+DMVYgqmsQlarKfFVlerjsaaNTFiJklxJC5petMWgFF6ROTwB/WhElpDMZog0Mm19WKgQVRzOG/FNKSH4XRMfNmYZubtZA4it2BBqZhXppdoPAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSxlb/7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSxlb/7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01E8C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748365793;
	bh=p/XQUPlgC+9HnUMKSo0YDuUVwXRNEznF6/puSdBnFHs=;
	h=To:Subject:From:Date:From;
	b=uSxlb/7O0WUgVKpwszaHHqRDpFDXaUGks3smMc1gWNKELgOPWrhZUp6Aq6Uti7ykU
	 PPZUtUXpTJs/6uvd3cD/r96y5imUIHQXxgdkazhDjMvrsAz0dIKiY0Fwy0rVb7rg9o
	 0PKwIdGijVe9W1ZfL20zN6Kt4mP9UxRPaULC5ux51SV2YUENQsa7e299Re7Ucbwpid
	 Z2T0lAa0nZCwyuq2O3nD/UFbcOOf3pHO9O2dlhROiDsROjCBwMC09oDYiERgcl2JiH
	 PU2p3Jahw+wZ9qzys0a1ZtNUZmVSf0NDEVRvwlChCLia5HtrV0isXc/HwrpCItedVD
	 s4i4O6CLVbq3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91975C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836579357.17054.16992909883658974985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ba4eda5d9c9e35e796f023f6896c822d33bd7f1f5bca333badb77af47532e8
Date: Tue, 27 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748365793
