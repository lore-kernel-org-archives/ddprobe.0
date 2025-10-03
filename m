Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E129175BF
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759498194; cv=none; b=JzxAe4+vCFjXrJ5DXd+BJyT4qPqXLSKiVxO5vLzJAsObhKONLYl1loSgQWw/wBcWmx3ALtfvei7tpFUO9Fxj8m2P8kOdaU9tCkdV+OEOF6miFtZB2gLvNAGwVkUKnOc2QAZHGzYac3Ad8fDwUOy+5/qE68dbVrUY6uilTtFHvZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759498194; c=relaxed/simple;
	bh=hAujm25nr0UkTQh2f2QBhoFfC2DY5mI+sz1FYRPA7P8=;
	h=To:Subject:From:Message-Id:Date; b=WTy2CygHsa7DLid+FsE0aTd0uBnxf9eaPLjdd0J7YrCXt89bImWrc4Rr3XcZEnajKWFOtomVW2aWECkAoYvATtiPJzPdNgux4mCqSHUbvqhJSEOf8VlmiyaxwEbKRTVEhdVZ/qxyLDyFrg/BycH0SnlRiQS8fW1Vk5aW5JevYSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBojnByK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBojnByK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E935C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759498193;
	bh=hAujm25nr0UkTQh2f2QBhoFfC2DY5mI+sz1FYRPA7P8=;
	h=To:Subject:From:Date:From;
	b=eBojnByK1syZ/ZpapBZNGnULXgyte+eH43DzwzrOxsxsNyCY+E35p10ko8qjWEMEN
	 Dlv6F0DS5JQlxF5/l/UbMmiQjb39NvDenXBU37i6Kqr+oNB0Tz0vc+4ZDZeydkuNRm
	 e9fZdOmuIay2d6tmmOy/pKnW+FX41SeVaIgqkzX4d46fjI9GbCDpJkS0jdA/RR9LmA
	 L76qDIH3Gu4UHdYwEaeeTG5QwH8Ay/VRRP53inmwJdqToHPue+cE+J27xZ+uC9iXPQ
	 e7umIFVN5sDswQqv/loKKz+ey+pi7PCaTnqUpvrFZWBb7s8/FCMwn5q1c14mC50owM
	 ZjKvujiuoXnBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91567CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949819358.18436.16972935551869218756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1549cc8f0d573e6f08b0a60b8c0b7e32509656f0b8756eb2f9db33ac348ae327
Date: Fri, 03 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759498193
