Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A38D13AA1A8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788144634; cv=none; b=TkbbK5gVJtzgxEHG7dTpFlY2E9fpLjxKFuv9gTE/NVE3+hV7tNpyrI3vJSn0JprOfbfI/oHXItc5SgLq6+AEnklcnGbpBo4wbwItWYKL9pD3DDsEKzZEgbE7PhG6p7Fr2Oi44dO6S2UFEP4Z2R2uVRbN8V1Ydwf+/FnES0upNd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788144634; c=relaxed/simple;
	bh=SS1twmk9VgcaTyJ5P4UiRP+4ZxDNBYy7X4LZG8KyY44=;
	h=To:Subject:From:Message-Id:Date; b=KYEN1dPTU7mXV1nOkEKd/UuahA7PTbSsFEkxnf5lBBIssK91QfUkTPpKNfTFJiDuG+GPJhMUcKU7JTEpk1rspg/JpM3j7516CXQ/x6CvYb/wTbP6/IxrigBvvx6ERZKXDYjmBEsnves5etE5TZzGn9LOleqvl9VVPUB1En4jZZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJ7sjgMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJ7sjgMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C49C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788144633;
	bh=SS1twmk9VgcaTyJ5P4UiRP+4ZxDNBYy7X4LZG8KyY44=;
	h=To:Subject:From:Date:From;
	b=nJ7sjgMWsB6Z7+GnptkDvujFuqFflfjLRuLer99QQbxbFxoTlHjdX/zuyuUDBcCQ9
	 w5MBAO1cU4FbQHFNtoemeKvsASDK3P9CzLDHq4UVB6twqtzHakQvBH1hQTjfXyG3Xe
	 gK/QAq1RbgyWTEOZw8wGMOS6z5AEZiPtXPXHlGmFIPryi4L1LfRC7WnOtsh539lkMC
	 vUXlwtUEL3/8liF0/QOcp5FOYjz3AlPVLOzscqr2t6HMUM662htGSl0UjDHAEKhjJv
	 larEk6QpK2jQzhUSSgagj8mjtkOA8XKrmr9+BaXF+l5nTjcwEw48EnRKCODj0Dq+d/
	 wyJglYXafrjQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FA8C61DE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814463368.19921.3349538151816056379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b7536152a019b16404d0843ca89369b21588ec1ff0653b82b2807d94ba3431
Date: Mon, 31 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788144633
