Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146362D5950
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774413294; cv=none; b=gK/oK0oHW0Mg/tctGJFYpyreBQKTYT3/eajtB9sxXFKC6zSXMtT8O1/vcqd2LT33fsHs6BHal460uh7FzIS6dGrXG597Vv5dQpXZhTA8PNloEF/sDqY15kE+QZTIcDPKYAvBWJnBaDPWO/v+sv1Kzk4XXiITeU6W3KzGlb3oZrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774413294; c=relaxed/simple;
	bh=Nb4uRYjUw1kIFrjl3R2IQjgWeTAgg2++kv9RoeiSAHo=;
	h=To:Subject:From:Message-Id:Date; b=SlRvgMY4bOIdjQ0nuELNe8f5K+XHQp+4VT60t217h+wm2/0/DqnBBm69MHsJWK2QGfy80oKr9YceqOkbXQJsW3G+YRY4KF2M1/0/CxixRx8RQhYcw6FrMvWtbNCeq64o7vEkFoaXd+6GbeXAqCov6CWYXR5d8jIQ2e6dme5XcCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCxLHmud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCxLHmud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A472AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774413293;
	bh=Nb4uRYjUw1kIFrjl3R2IQjgWeTAgg2++kv9RoeiSAHo=;
	h=To:Subject:From:Date:From;
	b=TCxLHmud7sxpr9Fple5lXhHwguPtq96HrfLyXklLxrzcc/n97w9IkChedJn1mpp3A
	 xzssfwT3wNGY9OWnhgDxejuPjrTTbYxczeKPFnJgVO3Ym6aald+RUzFc9dzNARjeEG
	 7pse9ox/Pf2fjjq2+cxnUIry0ANWg5yRJABCDiosTP6TgmtVvNyYezwaRH3bEbPFLk
	 aRYQNZRQ89ZOQpOw6aKI7k8efsj7GHpIqzbL5cbHB4B14TJqTZ9m9OG3DRl6uj3jH8
	 Ya1DcN1stmTXSl7b/n0ljFhH7/UM1MRynESFe2eKR0hId67jmx5EBmuRDZN+HSEXk9
	 UjwyIwI+yKVLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93984FEA807
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441329359.2967.11440645396247424209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c050c58e2174fc9dd66692760bb5c6f730f578bd7b1301451c31862666631b0f
Date: Wed, 25 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774413293
