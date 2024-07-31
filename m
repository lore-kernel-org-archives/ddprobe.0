Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0281D18044
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722455154; cv=none; b=sOnQFcLq7Cqkigifx5kdtz9UaShPYIXUM/KO9N3GUdKRg65iBQgdBKV7Rv4Vwe8Oy4/ULD6BVOl8U5j8J2bSlLVf4sFVkELLY3CmkIeoM7Vhw+TJi2GzEZwVDSmZeolK/ARUecGtvpJW0b7Hse7QaivvEoBnbEVwDBXuf9abkJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722455154; c=relaxed/simple;
	bh=Ey8ydVQDb3Q8ssRwpKt2Ay+RvBgx+vH1tZwfB/Do4tw=;
	h=To:Subject:From:Message-Id:Date; b=kEYKmI7BBp6BHSSBBfdXRRrv5tedtGUiFo6+BqwpdDuD6CyETyveJnXIjx5IKq+e0TvIMlm5XYhg6uXpSLbBhXCR+Wurzc5Vys3k76WHeDPyTbH9veYjHw6l6ZB4hpEboi6rgswPuJ0vCNJtcN3UVPiASyFNDRpap7kEdgKHbQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsCr3/77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsCr3/77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BBC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722455153;
	bh=Ey8ydVQDb3Q8ssRwpKt2Ay+RvBgx+vH1tZwfB/Do4tw=;
	h=To:Subject:From:Date:From;
	b=hsCr3/77qBWqlpedCSX8/N14dadtpTtB8tToYpP+S8K5P3ms2gymRdvKWKtsSc+O+
	 D1PImcuiz366tj2GFjpYk+rOB7PAEuddjpwHjJYwbM61WPPmjfLbimJqWH7Pe/tKpR
	 rkTD2OlyxTVQlIspBVrUn3RkVdU/TfpgO7rxza9VivC+55VvjDTzCbd3cpykBPnhsZ
	 T5uIv/DgaWUV3bXi/nBlymTzGCqcWl+lPbnDONuhSS6Wgh4nCqTdDRr2pUp9Pjb0sq
	 sHvznBW9QK1trbXFPacPnQ1Iks11JF5GWY7M3pod/asBhAYb+TVKGCEJsbyMUL1K2+
	 w/4vKzRrDLQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A00C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172245515358.10292.6378103718275947125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d1e1d2633f7e42500931883eab2d5202aa333119f7aa304201e00beb9365b9
Date: Wed, 31 Jul 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722455153
