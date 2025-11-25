Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443DF14A60F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764043374; cv=none; b=jfT3s/QxJY0jchly/zEnBtrqFWI3WWpIaAYFZ2cNB9GXaOk1tgrwsxw49Yu6UXAW23tfU37i9Yhfj+OpnMOGaOSDJt7MJo0KWTJeuoIJu8PfPOsWY2JLRSLn1/t8m2+HsxtKwouCakvMwBeqq2+qfcWMOLNVsjXeeBiQRebjtkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764043374; c=relaxed/simple;
	bh=aRBA0wA7VYTzIcDxkc/RQ+L3tSTMDSjEWlie62Sopu0=;
	h=To:Subject:From:Message-Id:Date; b=Qz7oVXP202EhT2ISXpdm3CHKCuZww9I5qmD2YePpNP7ZhhtfLGYfSs9qeGOIkZsDw5B/jP/4XKpObmI4W+WwfvOaUEqDKDbB+27zk35RZbOHPM4iTsntpicEoBEqnJi+i6HzfWxb5DIGi8PoRPT0s6d8ePlK3vQjrvK/TKeKNuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgBqCEqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgBqCEqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED03C116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764043373;
	bh=aRBA0wA7VYTzIcDxkc/RQ+L3tSTMDSjEWlie62Sopu0=;
	h=To:Subject:From:Date:From;
	b=JgBqCEqJwqp/8nQah5EZP/Lm6ykru+edezdWQGawBzVnEsFu8MoOIdkxxNnj5wcQo
	 VdRHqqu4EVhP3slWvYMD+WsJtx/nMfcR3bpbg29d7YjoLLWRmB+H0iiz/g/7OkiOly
	 7H8+8sSl/3nuGoLiU8l1b3xHDsfpBxUrkc08WgVtzhmPGDnNmomhotz/tVpfnu7yAD
	 vYV05k8V0zBRzA829qSaTZstxkKa30zeKCQGkQAQLJ7Fhfw7sQnnGe77RBGT95/CQL
	 KMUiRogaM3Ws8Lbt7kO9kCNk/7+4G7Hsjgnq38VjWflF6Dt2aBvZUPrMzWGExYjJhW
	 oeduvcsDk1ezA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90609CFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404337358.30802.17886747827568090167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90da8da954dcc258c086f5661117d248859174959699a98ec2cf0e4f32d966ef
Date: Tue, 25 Nov 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764043373
