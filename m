Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969C51FC7C2
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 11:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739274716; cv=none; b=oK4ycuz9/R1O5XUgNqBn1ZCgB8jfJ2JwTkYKdhQDdCQm6enhqhi7jUQTtVd7wREaxzoHrfiYam/2dYwC12ZplQmWdfKqsvaWwVmYx6zUNJ4XZJdxUz1aUl/YAUBMS+WxjLTtdzYXaA1qmPwUX+Al1vrDYPqThkJZfCBPH0bzn80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739274716; c=relaxed/simple;
	bh=l8x61a2OrUsxoUhVseJzJ7XRhQBhkakBgi4kaENYBq0=;
	h=To:Subject:From:Message-Id:Date; b=oDBFXYSqm8n2WsyoZlkQbYH5DlA3mg/EIxlo8/H56OZDf6jpAmhvg9Rkdxq79Mvsa43IyW7CqLXeK9dh+uBwyCE2SItMe4Zx7RWQTrbZAGeHd4PTE0HOyV0S97+WOzursRspwNlcJJ9Dh5ifO501atMHtsENXwmS4SXqACYfUJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FR/XOzH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FR/XOzH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 129F5C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 11:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739274714;
	bh=l8x61a2OrUsxoUhVseJzJ7XRhQBhkakBgi4kaENYBq0=;
	h=To:Subject:From:Date:From;
	b=FR/XOzH89WpF+HJk6+OfhHfJXpfDd5KFgHi3SBRLySm92soVaER0EOwDeDZhAp6IU
	 vyo4qwRmCbxt2A9vbxraJXmjiSjYQzs6oTMSaPSTIL+52UU62+08neR9AJhQ/SsCnd
	 JB50qBZW+Y6lmkmCkes5zoFV4mZxx7YZ3/g4ENfBMbYKsI0+PqkueLmvlNb+APwwbe
	 I1QvKew/awULREfRPBNxjv4wOzwHcFYzYj2c4WU92c1O4wbvod0MEklqGYip2N9Xfd
	 rl1vkH7pvG4VJiHg3/b8u/ZNFTeAUv8xNvjnrPU6n+GtCFBkm0dXwmvPPZJiYMa6xO
	 UjtvSxUOvD0xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E31A4C0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 11:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173927471389.5850.12524942681839153026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673f767d98ef8d83b148f8d2e023b11bcac9f91092799c35c9914aef4d7e6167
Date: Tue, 11 Feb 2025 11:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739274713
