Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BB9288502
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758064794; cv=none; b=bnAA0qNghWl/o18lhrIzRuR3eJjQEP02e9fzuc3NO5oO8pt+wGWIygkUovaH/VhEEzFMkEBbEI/qJNS2nFwAqMhgI1VPDjCOz5W0E0vMTqw9jOBGa4BnZNSsBT8ZckhqYLxL6A9bniKieWQ6+hdfTEz7STEwCONtOX9DT2E1nC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758064794; c=relaxed/simple;
	bh=Hv9xyWmiDca4SPJT9sZejbyQ+GTAkvstmUb++V0yoU4=;
	h=To:Subject:From:Message-Id:Date; b=ObJF8bLLDc9zcpo4Ukv39viDIPZ3uxeLC6W1h7ddxaRdPOtjQyxuC4U86FdnEzHRgYCdw5X8JDrLrYkte+YfwziCCRGh9HwnbGq8l7cbQwMrP6GYddSX/nLWuTgUt3XXQqqUjdGcWb0U1kOXx2CURYo49gmBeq19F4lv5tdjS4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOO5P+cT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOO5P+cT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEFEC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758064793;
	bh=Hv9xyWmiDca4SPJT9sZejbyQ+GTAkvstmUb++V0yoU4=;
	h=To:Subject:From:Date:From;
	b=KOO5P+cTo1epcbdOgudglTDAxGGlu/rHOtwNSiBvO4LyBJPYwDvQE9vOnaVNJ9pYL
	 O7djkw0YVc9TtUFBSERxJxDJiJV3ftqD3EWxpLl3BHWVAfdvEF7bFSBTjekBRsycGb
	 yod3bX5pNFSUAg1cz5n0TyrleiTpM/f9KbUMf/cfi+pTEQxkGpdYsoQdTaoaFDZNYm
	 eWwSwP1VQlhKcsrYpC1ZBRKQgjRXVYMjIF2zMhy9e9CwT1SklvWFJkUTOauJZlzyRL
	 hiK6jHwqqQrTNmwVdj76ptLpm3EFwS9Ik63FFQ6k3JKNvgJ8k7uLWv3YSJTVLGmO5K
	 xW8ZiqNh/f/Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE0FCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806479357.15891.4638586945066327150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94773c50bb2f081523575a481c1ce5afaa870db9298f1992a550a95edf33c25c
Date: Tue, 16 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758064793
