Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D0327FD76
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787971234; cv=none; b=Fwn/7ox5DgEo99MwOcyfhUODuAAodTwnUbvcC36Z3hrjtAyFhEcehZKk7VpusTlQxYktQfRgmaKoHHwsdk49NAlP5jJl5/rxeB4kjb7VvtNeFrEI60eBuKLIXqVtWHCGzRleI4vQUtH9ElD9vvrfkhXK9BLI9DWr15bmgndw/MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787971234; c=relaxed/simple;
	bh=hIpY4X6xwZA0zWP+O8Xc9lh7pdfC1cvZbYy9IZgVN/Q=;
	h=To:Subject:From:Message-Id:Date; b=hjapqlh/9twxjlZYR80uH0DRDosGecISirfBnz3y95+28UrgYmtPhppcDBD04g6rgK3KuiEzR7DXXwgi/P3gBSryvR+nRVcjyup+tybEIr14npwgNIi3XUvetq8bx6eemfusrxIvauP3duyf1ANPRUY3T22EK2mdiolB3wiBMlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+9QYhF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+9QYhF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B50C19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787971233;
	bh=hIpY4X6xwZA0zWP+O8Xc9lh7pdfC1cvZbYy9IZgVN/Q=;
	h=To:Subject:From:Date:From;
	b=m+9QYhF++7MPXjC8P8C3iip5/nSiPEyHLOJ+YNBdb7u94173TXsGMtpSXqftnGmpC
	 GKm8OlxmQFzt4+HFsVh8y9iH6tvEIiREIcG6yZiBxdIG6fDAhitvq072eielDXV38n
	 ZtpmI3H7qkcieGJUNlv/6SoDZSTArK4p0xyoWHMC3OSUl3N+5qLQhn4Li4I/5QT406
	 snvca5k135dmmaH4rDMVsrtvARlZ0oV+u3zwt1RVv68gmHYCUJnDlUj91WSi+vLYcs
	 yvxscZoARb6PxtRTtDcAKOomt8KNOLnqebriolq3NKsE0j/q+ubHNbD/WKG/13mJxu
	 G1H1Gidf+McVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D96C61DB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797123369.32357.6727877957477271238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e894e15f0276e0fef5db000c7f21cd67332757c0c4c18cf8db85569a748ae10
Date: Sat, 29 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787971233
