Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CCC33688E
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775822254; cv=none; b=Nc8sOPVTNLZaD9ZrOJMtDGUEVELkh6dwHmZnjnu284bNnLB+4KkYF85UlkXZW3Alxj7+8iKz1fLEOPT2cIq/85NwwyZrA0d5xs4cSQWjlufEq4seSjOsbUHwL5RU5nY3Le+ltK73zDIrUF215WUMnEGjmEoIEjbuEKxmfez3528=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775822254; c=relaxed/simple;
	bh=4hnBfRYGN274pqwOo9QcU0NLwx4+0+5UEDBvb6EbINo=;
	h=To:Subject:From:Message-Id:Date; b=qoIMKX+17Dgao29PvjU+fXZCtLzFY65kiu8fav+9fTbEkcawRjD/YTbP0Nd5jBDDpA7LB7XNiHAPOgE4v1iqzYbuPHsC3wBuW2sGYi80t4ys/eCSKymM7Ej0T2SNe945IUnK7bvpPBsNd+67d5ekXWQPzOqVwK626j1dj59o3O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPn91Lzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPn91Lzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69C1C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775822253;
	bh=4hnBfRYGN274pqwOo9QcU0NLwx4+0+5UEDBvb6EbINo=;
	h=To:Subject:From:Date:From;
	b=kPn91Lzr+ovU4b3WVj+sFehuio01K7vLWN4rn8J+CVpfTVOIzRMQeOCjpUbV2EkFb
	 FHEwXxi+MLrjOuka83aotoKZofjGyFrhWpsr1Hy/UgZlfCZipWGs9J6XbcszG3SkPN
	 bz8nd/yy+Pd7q9sROdMtFqWc3Up3wqp5zVVvBTxr625YtkktHXZkoL9ndYbOukvzq2
	 YkmU0H0D85dhH0LOmfKD+tbiJ1U/WOD9ZlPq/OyvHRJizx5M2//w9qId4rnzzABV2s
	 lqcW4yqV2KWdzNj3WA0oVvXqCstuVT3lGXkgc77pf7ncSJI44ZQyM3/EnOA8e8iDKo
	 IPqXrDmJAA+dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E29F44846
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582225368.16112.12482336613868512175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4ac1a30b03957a90b0731893a0659d4363b77b3ac45e3a9483046c1e496e00
Date: Fri, 10 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775822253
