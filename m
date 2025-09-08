Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033582F83A5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757324394; cv=none; b=XsNIBXqefMi/8QlmatNZsjKqATKD/wnErv2J/uiOAtrR0bpKQoEK2Ffawdd1psN5Y5KQ0zqaVvUXFZjGOQ6aeWMhBqu70n1bjJJiucQPNDgHFKEbkgK+vewHV7xWVBVJQ1OusiPbQ8PJmYc4kQz0vXT/9FgyEmIwnhyWmMhVn9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757324394; c=relaxed/simple;
	bh=pW1MC8f/FkM1jO+v6jI80Y9rGaRIVbBaAYXTevb259o=;
	h=To:Subject:From:Message-Id:Date; b=VKUoadBvIF3R0GBpB4pva2QfuVKk3kWX/tJzzQMtK0zBWGbABqqV2drCKqQ61XG3XY9HG0HjQ6V+z/pcQWYlaVhvItOatJ9sKyPeNTv6olW1jkLfunoJlcFeoPvbw2a7qt+/QSuccxt6WusXwcDW0Tp6Ph6q7ge39qJNIBRukeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TO0X2sLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TO0X2sLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1469C4CEFE
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757324393;
	bh=pW1MC8f/FkM1jO+v6jI80Y9rGaRIVbBaAYXTevb259o=;
	h=To:Subject:From:Date:From;
	b=TO0X2sLUZ2MnRhJpRBRz+LPdkiebqutaZqqADFcMAUJ9rLsGoJGzOIdFykqLefyNB
	 pNgzPepL+JQn7dzWe2zYV8+Wb+8Yg282RRHvGKSwkbh1PnqgQAbTEG7+0s1t2ozU5/
	 yOxizfyDZCEDipP38Xq2LVx1DbkQOioW/rYPbZY4aej/UiIQxKkRMJ6PSQqGApr6Vb
	 wYp7JnMKGLfMZCtOe6FmOI+/VhEPyCdGtH9IN8KeEquyROA9y24nmgW71L/WxavX8w
	 OTmTMlH6IZoNamZ5GGR2FZ24LFTM/NKoYlpM4HXCCRBgw8Idq7t/OtP1+75oSgt4Lk
	 4FMoGy/Tq7N5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F713CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732439357.8336.907681434607548260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3645e3a6a7f76ecdf4b7c4ad21a3ec05ce969192772ba4901b96cab3807793b0
Date: Mon, 08 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757324393
