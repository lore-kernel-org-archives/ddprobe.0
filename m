Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557DA48125C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789401034; cv=none; b=khOEKFLXUn3GN9TRFD3sAnPKnJHIRZt3NwhR4hLxzjqIirXUZ+ZMdolf0EslcKE4bnzD4PrZL5GYrsp8ARlVTg6cSJtvqrKDhtJi9ZglSVGxtkAvouK0WKdkYm0o5s78Vl7s9KRwUnOy6mOQB4mjx1gpaEA3VV68QMVF6wMDDoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789401034; c=relaxed/simple;
	bh=gxsnYQh7tYD2TmEvXDOVKOd0XlYGA0PWX09e5BJbdd0=;
	h=To:Subject:From:Message-Id:Date; b=kxipmZ/kwTGzToSUypod1gqNyL26RRF3xbJ41CRxzYzq8BFve7egjkUeQbql4Uy/TCWOuM5kag6GQPtsNNdqThyZdA/r1ZzH54BN1/7wilNWoI91Lg+QWUCqeGKGHjyY0+eWUoHg4PUBCIvXRa6pkTu5fSRzPJg2HD/Dj7AfC80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5yVVmJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5yVVmJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27B7C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789401033;
	bh=gxsnYQh7tYD2TmEvXDOVKOd0XlYGA0PWX09e5BJbdd0=;
	h=To:Subject:From:Date:From;
	b=o5yVVmJdwWwaLRl8fsASywdUD5WpqeOo1aPSFXrR2Df+JondtZ9c05SvB0Ir9GyjI
	 4I56Z31eRaSVZApa5+56AUmFcU4i0wXEN2A8LQf3JS1Ky9HepSGYU1C/02TETGxQe7
	 0RDHECMROTSuiEeDw6Cc4jmEkPZVPl3g8Bvvg+Bg7CVnvLPQyIrkIlmAqAgcuHvMhB
	 NA4S2J0lOI6FC4Ko+HeIoUuqK3yMeo6N6helon2QlmJ6fZ8e0a5s1Jce0CK6H3JEpt
	 nYevt9GY0oVt+UcV3HduQRi6o3KRHtfW0CriHHIHvLgrycaTZ8KdOk5YCo4R8QmWBc
	 5o8Wr25lUwymg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACC6C88E6E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940103369.27236.18438454710404783139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbaeb5509e2ddf7c5ec52a3d0c87cc86a794a47053d6ba1452916d7b69d8242d
Date: Mon, 14 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789401033
