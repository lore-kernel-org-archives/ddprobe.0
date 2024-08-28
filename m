Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4772916B752
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724840154; cv=none; b=sLDH8kOsNgapXlJ5nFFRXraWiWgx4B70dWeS4VbI/M0imi25kxyaZPn7qes/NJJYWAwhKo/sbssagt1kaIrQDRHZs/ftRdlWlh0D+3nBjnoEvPAjX772ojYUSzkowxSusL1OcAlDXPt3NLtuAds647qteO6Xp/8YeqitE2rbSAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724840154; c=relaxed/simple;
	bh=6bBZFXCqqeNKZ/9B87h6w+V79Q7JOKdhlEExr9DyZ+Q=;
	h=To:Subject:From:Message-Id:Date; b=LxJYh4NhSgMlytSiz7eQSLKMYvufZJ3xbcZz0/ZN2Posa403L1laxtgqFIS43jV9NpE2ihlbqT+kmDxHQi3XwSGh7XYjTvlUVwnSL676KSfO7vWtfFqIF2hHvGbyfBZ4Vff351kluPRXhHrxSfcWjZK01VGt7BjkQhHBDH+5xY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLx7U2YH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLx7U2YH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CEFC98EC2
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724840153;
	bh=6bBZFXCqqeNKZ/9B87h6w+V79Q7JOKdhlEExr9DyZ+Q=;
	h=To:Subject:From:Date:From;
	b=QLx7U2YHIXzK8+WCCOsCJnUdTPIhhOrTmzTK1Q07+bmrPoiNjEYP/Kth/W9KNUTVK
	 2BDAeBrf4FplMX0d/nVrlJj4ggPtmBIIYEJwrttGJUl25xvjKEUD5CGI0MgjufZpdw
	 13AcyAGCzrhX6pl4GKQ5qrdAx2j2D09Im+LSs5roGvwV3gucfpwqh6E6alZgq1uWCN
	 CguLZPuk49RGsSEDgBKuaukB3uDo58xXkyRZKrfMgZoC8JtKV17ATx6bkW5XiOLYUX
	 02RPOoAAB0do0dxNGfjParPVBngkDm/xBJX8BHviZiB94MH8T5fVUqlRXSOwMaqREp
	 EKaNw1FnS5ZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FF2C54E92
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172484015364.14833.970859195678468121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5149f568142377634f6954d87d4c9393a1169f5b8b44b5d95d84bc6d1659f10
Date: Wed, 28 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724840153
