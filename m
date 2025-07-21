Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F942AD04
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753079394; cv=none; b=JQL6pSUh4YLNOoYD5bwiEXWLueLoypF5GgAKkQ1AFkr6vF7JgkWlVh7hz15lb+BVH3w+D4Yn5Pqyr7HoPsXOI0NX0Roq8g9JrUQqWxZ+5zCAKAbM70l4xzJQPH7SrfFtdeHGetQWOJGTyJf0u5Cct6mfgwo0BJnwNpuUbZfNp0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753079394; c=relaxed/simple;
	bh=65H/T+73jx5xh5l14pxzM2TvK9KlepJj/iU9Lccaxi8=;
	h=To:Subject:From:Message-Id:Date; b=DAfuCV7oltUDobyGgMkoWKcIUc3ZLisBNhGlF/xcqu2wAepGy331RBrK/GxnrV1YiTLD8K/P/PhC1muDbdvzt9m2hH5uMS0qjGiio/I9WHfIHnY8oL3M+kfdbJf0rLddP3hvtfupT02OmEVDBXuQeAIjX7EzwHqLWh5N9Wg+8mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQd+BIgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQd+BIgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEB0C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753079393;
	bh=65H/T+73jx5xh5l14pxzM2TvK9KlepJj/iU9Lccaxi8=;
	h=To:Subject:From:Date:From;
	b=ZQd+BIgrXa8lpxiQs4tLsD8OrUbHPhWrYS5+W2rkOquf3CIEdlfGeD7emKRCNyVil
	 sOox0NGO4BuXuSQFmCf0iv7gg+malG+2ZjezSZrFoRFBpY04mr1ar7mSNU5t4i4Knd
	 sJTxzJXRDloAdGFk+klQ4d16Wp+veZU55HSYjE2xyl+fTSL3nfe6ZjL883wU7mL22x
	 6bdlrnsyOluNIVISMHjhyiU3ir2l97RJg+IjOXlV2B1CTiWRQHPXe4lVjQ/0Ikql0i
	 4z0i9pyXIfr8kJ32DsNra44u4ARq40IybXj98UaoYB7oXfEvUyrwat1JmCTKSFM1ur
	 IwcBkC7IooXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03CC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307939357.13767.11373249213412480151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b40e62d95c3e36c88216d5e0dc277c9865286e7eb6c4d9ccc89f0dc3074e370
Date: Mon, 21 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753079393
