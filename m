Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279C023183B
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753472394; cv=none; b=pmbnBHIHqwuZ076CoyWRiaZr/UfMEnvHR4SGSVx57TzXhJ1+UCVrxxIn17lb0g/wIQ+G2Uh5oLwZQSVf5sYbLme6uxQGtxC3t9FyxMmWEiMXL9+5xVN3N/VzhZkZfwWNNhOoCwONLnlE9qHjZKWDdrbH9tejWNweCj0+F3JQ3ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753472394; c=relaxed/simple;
	bh=CfC9hJVMUnX5T3ya6h49sNCVvVk9XO1DH4qSvlb2r4I=;
	h=To:Subject:From:Message-Id:Date; b=tIQ+LHbI0BQWPMxsociedWvYUj+m0qIwIrbxwiGIKV754BofFmdQPpm7oURLFwVo1FGX4pTF6YHTwiRclYFLJ05hRIIqHWbUM4YAF8oOmw3rFI8gKEkDwslQTT5je5PJ9uk0ogmYjpsz/r4Jk+7FnJbqt/MwDsDR6jFDxQr6myc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auZN/ki+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auZN/ki+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32A5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753472393;
	bh=CfC9hJVMUnX5T3ya6h49sNCVvVk9XO1DH4qSvlb2r4I=;
	h=To:Subject:From:Date:From;
	b=auZN/ki+r5+MDKE/av34HcQgiKopGo99eTqOOof6diVid/w8aEVOyJI9hGl4uNw9k
	 tksvZcBHfogvuao3O0iSLemvat39EIedNvAo7Q/XBovmzj/HCeJrbQUGENG/jJ/8w5
	 qf+/FAQGaQHOusKwrx9Ut0pqr4v8pjvQL68HZ6kr3BSw5C9qU0dgtj1WWTRA907tyP
	 OYlG9mRKCSVo2EWuzfMM00pWp8JN38Rk65Y5smZw1Q6Yo5mtpwxGK0CE/ntFwKQA4e
	 FBzB4f7S/iMj3zVR5QEK8QL4eW+av2mkzq6BHuioAuoiYyoRnlvZOHJep3dlEmj/ch
	 1lb1Yxsae4PlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA1AC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347239358.4193.680362555018858251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241aa2686676bdea9447d914cb431c5d2e7d9acdc01b70389669e6626e5de983
Date: Fri, 25 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753472393
