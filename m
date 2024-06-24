Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435B54409
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719240743; cv=none; b=o5ZpdFJREgI1pJtWBnCAczzan9Q7YMKrGq0ca8surPuV5CkkFYYuZCBn/cO6+6IdWgWeJDvvZK6rB1OXXwhH3Fsy2tsi6YKYA6+bI0ffCwgonljx72SLebBaDc67dVetnI3HLtnPjoEDNN0d338FtSaqirvEOImM6M4w8yV6J6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719240743; c=relaxed/simple;
	bh=SSUX+Zb8C2MOkmcpNpZ4GMwtKnxcRSmarmldKOmAdBI=;
	h=To:Subject:From:Message-Id:Date; b=m6QeeAeO1QwyEfiaQ+o0vwMecJWnYnS6tKzM+L82lvQ0SG4Zm/pJ5mxA8tCwyBL1x2210OtT+2Qw0YHTFIqCwQkpLX2Qtkd/IZXvUi2jcoc/YaCWaKtQ57JEJjdmkjVruuKeebK9hsYbMKTg0SoGO06e44+SXIhEVJ6h1RtnAuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORuGiMS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORuGiMS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D838DC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719240742;
	bh=SSUX+Zb8C2MOkmcpNpZ4GMwtKnxcRSmarmldKOmAdBI=;
	h=To:Subject:From:Date:From;
	b=ORuGiMS0nzzGWRUEH1kBJgbtUK6L1F5zrDjlepGO++4rsI9lKcTyAr/DyCuGOUvN6
	 Z97Twil6fW2XPg9gp4H6NlQP+w1eFRLabJAlvkDzRsP7uYphETKPWe11zF/4WLZBX2
	 jVMU6fru1H/6nS+ywxp4fejmcRHbpwfQ+ECOrtaBQ7ucPakc0SVDJeJPtqcyptpEoD
	 wrzG5Fg0rb3eHRch1bCICHjplCywhpf0Idexq/fD8KNRTegOzptXDVzoXhjroKsCoV
	 lUpI++1ry04zOzcfS9ElUKodxyjo+jCIKuNqsAuPmQMkOw6oa9fJl/WT8F7E/UmdGa
	 +LkOjVTELmOHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2912C2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924074278.3411.14727666384526722225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c369f7fdfe33f39a570265049d4f16c1f19f0bf40eb360fec13d6bd668687f37
Date: Mon, 24 Jun 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719240742
