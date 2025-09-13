Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3230F238C08
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757790595; cv=none; b=lSNUgjo0x2yCg2KxoUwpPJaOGZcY0LqS3J7zgmuba2OYvHTmGzXF8E0T6y11wXtwiPvWecGaOwyduiSbqoZlauNG8UeRp1d5JjE0gsaD9YiTn6y+nO9tPFgBcpEdeDVwXOCEyw6FRYZzq7jBVgKkiJEJ4VW+RmwscYes94yxa7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757790595; c=relaxed/simple;
	bh=u85HDosfsymB8AUsceDdCzTTQMcH5F9CIXl5rVAUVqc=;
	h=To:Subject:From:Message-Id:Date; b=P7THOY8+9cYUtTL69uCVKaEzeHKkJ7EhSOn+fpuCxfBG/DMhT1duPrf+0+R7b1h8Bg5oO3SU28VXhG/0wamn4Ie332s5qEuKwfba1f/oPb7bREjsw7M73fjndTBs7H/PUJEG9E2eV5Mo4IPNPKZEy1W/FpJpSrxjYgP1ke+j5ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prKKM4Lf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prKKM4Lf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C35C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757790593;
	bh=u85HDosfsymB8AUsceDdCzTTQMcH5F9CIXl5rVAUVqc=;
	h=To:Subject:From:Date:From;
	b=prKKM4LfFymktBlHgI+kpUvnZyHCgEnlTRdIw6LBGoHDDQCs61zZJpZvLslAmvDUk
	 9MxSDC7IQ0/z7qi6ngcQebNFL/uB7YQYgziWbqKsblzE98onBmj4qV6vvA1K87zaBr
	 WHZ97KJRyZQ50CbkROCnwksVK9cbARZA+VCgr7uKEks2PjzmLvAeCbaNDZwy5ABu+D
	 JBZMZnSzYSTyM/oPjB6yS354eSLnpZfeHo71PkWnyFYyD2/DVhamAg8/b/fGpZTi7n
	 CnxnRPBKeZOFVw8NcOheadtYZUj7dD8zCtAGlC3sRHx7ZpyDqgdgEzt5Absc7eenmE
	 1r2v6BXngRGIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95631CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779059358.24204.12188490901304515213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d3d1d0256a5863411bee96f3d8f5dad07e78eae8f12752a950d285b700061f
Date: Sat, 13 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757790593
