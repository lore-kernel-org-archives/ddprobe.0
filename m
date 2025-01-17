Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511D4335BA
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737080154; cv=none; b=sXO2QdwWYStvXgX5Erot8WdIeCjVbJABL9he5N73WKYVTbxtqsiVdTN6jDKURI/tOZOZgm0mYDAvVPSpW3NkqQl9FNpK4PS8IAIuOg+sa0ANLq3PHu552Brhk+pIz3bZ9X0QMPekmdnPOfgt7jxjnI/rLKLnPX5RLD+YR5zcHJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737080154; c=relaxed/simple;
	bh=eH5uyNATV8oEIoEdPT4aPIpGkn7C0XfUlmzaeXjmW+0=;
	h=To:Subject:From:Message-Id:Date; b=HcUFp/gEVMLCK1LeaurbYbmQKQk9WXMfBvT35HKHb1IaDuig8afAMrSqpN4fMli+JGkA/euwp7SlEviGs3Nos8FTj2QZtf67QON5dE2sAlzgJ1GzV0SiR/1zZqdVWO1kQiEJl8IZNxlvNJ2HvK/W4lIv1t/Ou6u8Vi/vwVPlnjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UN/OZpeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UN/OZpeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3ADC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737080153;
	bh=eH5uyNATV8oEIoEdPT4aPIpGkn7C0XfUlmzaeXjmW+0=;
	h=To:Subject:From:Date:From;
	b=UN/OZpeAI9f/lA5q+pWZ7uAH9bZ888wnrFStZn0m1ahwjShpzAAJU7RpyaI/zqWWB
	 pmj4nm1gJxxkjQDM3ewkAdxge8RyCqCb4DoU+othtaVXJcQ2U7C9LkDAmV68uv3K7D
	 B5IGzzuZVK3MCUgd9rA4upImGmdfJSQ+90cIZxl1wIOKdIEsHEgajpr5Ic7E5IUnHS
	 cNe6V5F1hvZLLK1yNxQqy6akx0+2/0kf/c1ezZO1cgKV/vWlK0mY+y47FF3DRT+faH
	 7bgYccPnqSZ17Xi4RzrQG6gkTNd3uu/7Yymzly65dlBhGZ+GMYGp81VHolSRy0ey24
	 EU+lJ0ztCqLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78C4C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708015367.7562.16671591646634589822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01590617f25995592ef91a8721d18800e07649360dfc6e89bd871a9e5c9d4b20
Date: Fri, 17 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737080153
