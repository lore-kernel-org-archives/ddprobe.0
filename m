Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306EE30E831
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777982854; cv=none; b=XCciydpDai4Koc5v524i/2DXT3wYluGeQ/XjorU/reJDVAtbL+kdBjqqY4WSf13OBeyPW7iWrvNISVDz9rIaq+Dllt358nb/WJ7i6/9llBdSG7/OtnPrq1tuwJLqVSKQwAnUGZiPlZtLxgTNJV4BrnRW0i6qA99BkyaXdeMRnJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777982854; c=relaxed/simple;
	bh=59YVdJc2DXBchsjZaSNLYwtJaf5NlLeBMNWrmPn71os=;
	h=To:Subject:From:Message-Id:Date; b=SxJeHWM6GfpK3w54sU10qBISKy1+FWSeB+PdO/Km0vsY3Fip6iIj1YzDDI3qIs5gWyC29zijSaSdWGicRLjDsF8qMiGTcIecC7pSu50HFpapBCko7rerkArh0RgHdQ8LbHb3G+FKv7v5KCKRxZcmxP8G6piKGekogf284VF8/NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVuW+Agh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVuW+Agh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A30C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777982853;
	bh=59YVdJc2DXBchsjZaSNLYwtJaf5NlLeBMNWrmPn71os=;
	h=To:Subject:From:Date:From;
	b=jVuW+Agh3wu1f8+bJv1YCJp5hsSYVBw5nM5vq/fzUMpS6cbk3p/GY/NOJ34XZeHjK
	 1jwV5td532jbzp6fOJofEYYnj3xfBFvnXr5SYXaEIvzWjw5K8Zo5zcIvgBf0ny6CvB
	 hJEgRFamhYqgSmfY8JGgthtwA3HzpInSlV4MrWmYmJWZN5baLs9o5a4zjaqnIzcjdC
	 O4jMNfnRDX3O+HuhTD+IC+umwgFHAyFRsWA1yf69FrfbvKVYjcjZ6IWwy1OGBjZG1Z
	 GDJVUWYHSaL+wpKQQUQRfRBH9OsDCX4GfJHN+BuFUIAE+hJPE9X8Rr0QpbOA6Vd51g
	 qYJO1LgjFuTtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA023FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798285368.13169.13473524578285022251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a9b268fc9fbab790169c6700e2910e1023309bd94305d8006b4a4d4b18eb7f
Date: Tue, 05 May 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777982853
