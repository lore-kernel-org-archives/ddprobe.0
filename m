Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B732171B6
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711277897; cv=none; b=soidrvfK81f7E9LAbaq8Tg19PjERnKISsrS1n6Dp8i3ZyUDFjTHa6/3GtwHZ/tbOmxJw+huXBb6BugI1LqbASEJ1D6sfM8C0uqY4sFRc+rdYN1TiqNYe4bJCXV9q6BD4GJQMlFjBmx3SPKimpg2V9I1kITi5+p+8v28aJC3FES4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711277897; c=relaxed/simple;
	bh=NLrAYWGBXs/Me4bYCWBiKl4IWxI5DI9oakeXXlrzge8=;
	h=To:Subject:From:Message-Id:Date; b=WaFzsX21Ui2IWwXW2PO2cLADiK25zbTRqpfl9NnyFRZA2Gr5Z359OWqd0ywFexlK+sNiJP9+pkp+GBVugnqppqARvpUo7wveZLaXPAPcvn40yM4xGB0dzzQXP+mDcVhNsJFwQfsv+RgRcCJm4edVTQvOsp3ysUNG/FPtTpJJCtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCsFu1d3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCsFu1d3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D52BC433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711277896;
	bh=NLrAYWGBXs/Me4bYCWBiKl4IWxI5DI9oakeXXlrzge8=;
	h=To:Subject:From:Date:From;
	b=OCsFu1d3sQoesa52FvoCNHA4EnFiwcBMQIKBAWQLaYYhT0s/LP/x/CPS3VZ7NPmb7
	 zZE16XjtnqntFPBd+JPSSKSOJWI1gN3p7rw0qnYt/uz5NAkCQ0ga4CukR+1g6hpw8y
	 vLRQmJEnC70g2Yan5xaVC5OE1uyerq0GBUOhRS7vLAQGxCtpP6bbOaUoGFEJmuW0UJ
	 fJLT4eYdTtjBVGnkxBVgdnYKQqEKGJLuu2ejHzuPnYGiOTOf4azLMbKebZA6XOeEDg
	 6ht0dAIzCS+HUpsm/rN6QfiPTqPAdV3aN/DwWkZcKZb3W4LVAzlGRgTDEwHk7EmHRZ
	 SSpQOZJK+4zng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6610CC47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171127789640.8730.3416169652410182044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366d99fa99986b4073d238d3260590c8096b3a9c95735c6cb4b1b5118f62a074
Date: Sun, 24 Mar 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711277896
