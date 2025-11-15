Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6B31EDA0F
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763172594; cv=none; b=g9Y70Mpl7J3OfoTIqqVLzP0qEPgVh7fnuEAFrwJNXZt9LhAdOf3a5U4u7bbb2ZN//j916wsYOSTNfFaNhKYFrmH84ySC9AIEN3a9D6KDC6JkQKrQmJVAVibh9XBrH2TGMAKoA8N4GpCZH0r39WBw2fbVf39uG5khBjuFbkYSpyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763172594; c=relaxed/simple;
	bh=LB/yWtumcSRlNm78RksBhT0jXDm2NQbvQ1tDBHXHGeE=;
	h=To:Subject:From:Message-Id:Date; b=LLqsH0ypWugZIa9fyJpQokxcWMZuLtVdsanyHZFEpuhWNvH9fUbjBz2XvbcWTXx9JV4lLkl86LT+mHsffBpHxja2QIqoaLRPjlsxZbO9yfypk92T2E2DZM+TbIPJxzDxyjIHp30fF8XIaCOI5Io1hQoGtXq/EPmMVPvouIXCGxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkmTuHG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkmTuHG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FF1C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763172593;
	bh=LB/yWtumcSRlNm78RksBhT0jXDm2NQbvQ1tDBHXHGeE=;
	h=To:Subject:From:Date:From;
	b=LkmTuHG1xrLst8LeA8q9166VCOYeGiDDWwXvmJj91HaSKIlVveOEOlUOVGj+OZzfG
	 Pg2cbsos6/k7efIZc5QQMP//Bwpuhlh1p2zdMbvlpOsNR6IPq8rPR5hOCFqA6YtNPP
	 zacS3yV3vThYLbY07urcdSrGs14J0o+7PcwXnvLbGVKhh5XVn99koWcImcn0BNWwKJ
	 3GyBHMnLLfWppZgBi1D8jyZhqL7S2qZeNrnKHueORJq3Q4Od1/7jpbU2U7zIKlICMk
	 ek5c/XWbCBlVyMvtWop2A3mq7M7AKEafMRgHZS/mPckzt0TSuVwGWczZvJ8agCXFCp
	 HzYpd+l/6P7mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DA7CE8D6B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317259358.16642.6039782589777337426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33353acce1d14a5d3cafd21360dd68de403ab4bd5a8461b409e0ee365072f790
Date: Sat, 15 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763172593
