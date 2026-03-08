Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151E532C317
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773000294; cv=none; b=ksRekOJQhBfyxaw9Y8SLO4sI8uTofWlmj0+uwDH339kGucOR9tMfTMXJIcLRZEgqIDP3tQtDl6PKMYZWjLEOzM53FNcovhIdMlQftzieMXbC4KHz7jtzAC//ZPJfzgA8kfvveulnOyiPJSZJ3ikdZ9CVOitINj099byXgFQcLzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773000294; c=relaxed/simple;
	bh=lKGDe73OQChZdX5ZTZfrio7fsqYvjgPlQ8+hac2Lmx8=;
	h=To:Subject:From:Message-Id:Date; b=ZxnmsL9p/LifUGp1YLiwtttnWA2cf6CnnYDCOrdNKg6ZmMN/P60mgzH+PCd6MTf4PCfGeIXH7cOnbgu21z0mcgO607odraeLW8UZ0Wg3sVW2p9yP1CN80B+ydApnhtqsy8IVGaaW9wSLUh0mvpCmPsN39gyCSC7fsR42tT7U9Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrgcqUGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrgcqUGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF861C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773000293;
	bh=lKGDe73OQChZdX5ZTZfrio7fsqYvjgPlQ8+hac2Lmx8=;
	h=To:Subject:From:Date:From;
	b=BrgcqUGQeUt9V5rT4WAciJ1geIiJ3tHaha3yO6J5OZtL0rFLKTrmxfL+OOl4CiLF5
	 FrDeoQIIQv6u8/Kqh5XM7Hi7RvzhichSOr4wo2ui+n8DFAltd9Z2lFxOnz42Cp+s+d
	 OhQq8IKltNVaSlVfEtNGX1wviMVsI5CCsFSilHUU60twnmD9iQ9/i/dBMN51AFXbHN
	 gSXOvRGk2+wvg5W8o7JB5FDyQzGV76tubrzEQ08Lk2NqVuDpXWtOeyw4F24RRLEHJf
	 Y0ZrPZ6qOdnFbfcxdpbXYbKfiDs8yao0WKz4CWQInsmv+7v/HuV1NErrdWYoANfHzV
	 G+FHs41fKzLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1D7EA8543
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300029363.1913.6773547608041419130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8352e03a7d8a0d98734d6fccd2cbb8402f2ffab91dfb10bb66c65a0c9a71327
Date: Sun, 08 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773000293
