Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C86218580
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762744194; cv=none; b=P/W2hCK4SlSgJxpAdFbIS8jHdhAzykuWA9f+Fcmw5iyVAAvzvUqFxSNSEnyaFc15Xk+qZu4Cn94bbwBwkzqlKykXy6S8nh6AMFz6EK5vK/UuUEaCwnsmKK8uyQFN/8izgnbcvDOxmfF8SofOx9yN15mda5p+DbENMYxGw6iAOWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762744194; c=relaxed/simple;
	bh=0t7k0U1ssCV/37dAkB7DJZS/n6/DjF/FFjam5ueMGmE=;
	h=To:Subject:From:Message-Id:Date; b=OQ3gM8ZxEE0JzzrXbFnfw3Im+MRvT3cGdJJSHJd7+5vag5qsMYYF+WfXST3jLdpacpky2XlZd9DhyvrvTOYBNl0JGmWU/cPzi0tX5aOr+THOK0P6IgLdPzq4qdTdcAqUcHMMGCCMQ+7AIVBPPK+yGsij4c7CoyLsTPwLwBwwgiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ty2OBPyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ty2OBPyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2425C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762744193;
	bh=0t7k0U1ssCV/37dAkB7DJZS/n6/DjF/FFjam5ueMGmE=;
	h=To:Subject:From:Date:From;
	b=ty2OBPyHPtJv+s+6orh6gnIblYKluHmPcO0JcYMrc4+LgCDlNkQhHt3AsixMyaqGm
	 ZT7QZZRxV5MhLMGuk2lbNy/BqoNu4ui2moVTsfFvjnch+OyjObl6Uc4+EZ6qIjCikt
	 pDLJuhPTHtrdqYOOJQ3Nq2SjXRNT+tQ5EMeImI6RgFZm/j41BPxuTg8tscYkd1nR7+
	 zzxzK//RgtfqBdOn7fzLoNAzSEaC0g97V1+yO5kuuB59F+sseTugJ/qsu/beTr0mRX
	 v89vimJ4poZvo5WUbgvOYqbtpGwTkdoHVbbYbtxabGozctN5x//01sIjklxkEi1jOI
	 5G64n5HwNItfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E47CCF9F8
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274419366.4490.10388362904291476498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5b831972cf4c6fd76e9cbb7c3206a30230ac1fa88cd1183a445bd5ba67575b
Date: Mon, 10 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762744193
