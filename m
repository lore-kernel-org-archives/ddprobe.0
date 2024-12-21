Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1143594C
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734758154; cv=none; b=hWmzZKuIMQEgk+9/gk62KsfPIHn9QINYEjVrRYdzN9I/LmLg0KKPGHrVkw9x2g2sWmOHc8RKZ+7uWTWO6u8UJSKCkN3fE99MPSL92tpPk3IIG6jPfeB4oIMDy4eIodO+3MaolViOkQDcQrWCd9ORVdfKut1DQigPOOv2svuKaos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734758154; c=relaxed/simple;
	bh=20eJ9uyXvyNF4syJ+2GJnodVNPX+NKtTFGcRP5i/KyI=;
	h=To:Subject:From:Message-Id:Date; b=N3SXuddJJNrcondLJeIErEaUaPqwHVBLs4WIDg9Sx3JtdyMsamGW6idygY1cawZ7dMNV8cgV6R3rDledCH4HDVURUOJ8TdI/Abs0iUbYOTTpNgofucQWGV0hVc7JlbhDWVdUnVm74Cj3ctJw86oiDiiHsB9jK6JHUGFLhfJOcGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvCDa0Zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvCDa0Zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCF5C4CED7
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734758153;
	bh=20eJ9uyXvyNF4syJ+2GJnodVNPX+NKtTFGcRP5i/KyI=;
	h=To:Subject:From:Date:From;
	b=LvCDa0Zlk133/4VWjo9VCafDdjbjN6pN034BroRZTrv2Cng7PY+vjHdHJVF+tx4Ri
	 uLQLBzbxswVPFs9qUubMlCWuJxlt7lafKT2RXArJioEiVK+fwo5MSyvEK5gesHnPNe
	 b0hTpQDt6wAsOu5QFWYrBFb0UGInuDEX7cuIMm3vTfFEsoMPe9VsBBB6zSg8c6xOzs
	 /XOCSTMdBtzaGcKu+J0gXcqm4ukaWKHBvxfGjLafV7C2NlE8XkwIYiOAlnwT5KSzT4
	 aQI17kw8NNjQI0klT2vPwJpeJ1zewo4Liw2w2wq/gc0KzUcrS73w4L/yRf4szJZp/z
	 XbUoMh69l5lhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB58E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173475815362.12655.4169716811720049552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d3a66962e713dfc296909c0e6e938d8f0178e5b89415fb0af1c5a83467a702d
Date: Sat, 21 Dec 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734758153
