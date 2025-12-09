Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F2618B0A
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765252374; cv=none; b=SmHa674/Ge0ZvSixYnHwQe6QG69/1MLm2JxINPgsMdaxIf1fDDSnIqc9ocWKFZsEpVOXoRYuwcm/7IAU9MJU84HnFMCCDAE5fxylSg/NcqY4BOlUEvUZ4cq0B37iAAwdkqstZdRYdqKEwHSgweQuAGUFC4YFufi1UsvdF1nylW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765252374; c=relaxed/simple;
	bh=NLrWHaKfaJX0z7F/2C3A/vtAhVJ7aEvHrPx+Elqh0WM=;
	h=To:Subject:From:Message-Id:Date; b=c6BkFZqWVxHfrQrrV+1vuWJxBL6xrUvDtB/x+WuBxhEOpeGi1pQJTAEThxQJbeqLHY1hCcibacLcKpIJon3W8H8calhdp+BwZJ5X/61O6f2878/txbuRVjJM+jl21FDYVIQrgQbGiDk+LNcoRamnPfS0ze/hQYLkZBW5Fq29QQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg0xkvDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg0xkvDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AC4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765252373;
	bh=NLrWHaKfaJX0z7F/2C3A/vtAhVJ7aEvHrPx+Elqh0WM=;
	h=To:Subject:From:Date:From;
	b=rg0xkvDLvBiTMe7oVeTrLP5kog7rqZhicY2FvknPVwVT1Itrif+vvJ0tJNYtM/nS9
	 N3+hD5tgf6wrpPg9QcDPkWvb2xlLL2TO+LBQqdavCFJuuNCAqmC+Djg9RO8DON/DRn
	 JqDtW+51ZbHxa6BMWMzPloDrCsDFCGpJpA3u9gdqLTiw+Dz0M+6YY9KH5XQYv0yDXD
	 bLV9Vzm2KBRcpEhJedDF4sNOCNgSVApLUTW9wUoL4TORpzsgmwN+kSKp3GH/c8d8jg
	 MbGkTG8xFCk1nuMNN2aRbP8FuUR//7FVmW2u9VVa3VHnbcyyJaOlE8T6p2OAeMbcGi
	 xncH01Xz+kZwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D26D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525237358.5589.11223722290969980832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f69a1139107e3ba83bad437ad2201d8f3c9d126adb8fd4df736ede43c440ae7
Date: Tue, 09 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765252373
