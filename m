Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D311EBA07
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734479753; cv=none; b=pix2CKXIP/PPcSyB2/reF4+zdo/0lmY+su7tUA4gg1LSbApHb6CQVvOdyOq0XFW6yVDcMZaB67+WhXwQsLVXpCCvXwge0Y+5n7DR7uPgjBXpAOm2U8v4ejDl66aAAPq71MDw31RwVsOjfDsZQKlnicGRJavy8p8os/3mt0x7r3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734479753; c=relaxed/simple;
	bh=7lCBdmd/MAArUAn8POtCTbohVxGfzdJFmdtqJxpUlCA=;
	h=To:Subject:From:Message-Id:Date; b=LZDNNYZxKYn1a8Ldpp2oGzKHOCrwnkBD/kW+CxDo2Eb4gNoL4z2Tw7qIYebndRES2oM/lqambB/P4JaXWSiNJ1EKhhx4kjwCxB9lPH4L4VOYvg4rJgEWq8UW/hC94qahp6uZ2hdYw3C/7MjSOnr7mOWs4H/Wi5fh3Fs7MZ153SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D33xCCYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D33xCCYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CADC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734479753;
	bh=7lCBdmd/MAArUAn8POtCTbohVxGfzdJFmdtqJxpUlCA=;
	h=To:Subject:From:Date:From;
	b=D33xCCYLdRSloK22uNsr+f6r8N2w9ZD5duDY7yqS6lOqWQViFPa9DD/CQEzHq7iap
	 yfuHlN/QYVFFwEqjZmidr7GkuMheyX7z9j2DjeFWzlX1+DWzhZWnctXO6wECOe+y6w
	 D0rOXTL3PsEkYKCXXb1vWA0zLvixXno//MTezL5GA2dqCS8Q0fFkGMpINwMOjNAVdE
	 5+R/DNpa+1DpnebtVVvplzf9dwm5VT9plAaerlCT9X2fNo7d+1RFnCDn5AKZKk6dLI
	 IOZ8RbTMyvvKcaMR0Z5pihnx26Mu40JhworcpAhv+xwkC/v/yrBwnEfozdQoZfS5Qq
	 ZwpUj6nQkeQBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91380E77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173447975358.27054.13835966500131039832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f74e41bfae618bbeb872e90f9f519ef876c46cb4bbec92e1b69e28c053bba05
Date: Tue, 17 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734479753
