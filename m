Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137A01D88D7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756883994; cv=none; b=g9+HBPjHZUqhHvXirLB3MhdQ8P0TiT2gdkSGgxdx5grMtMxIzyRpVdBcX7a6MHrGs6EojYYLJcAFiVdl9P1XKDqr5FjThe7mV4UIMJ/F3mmXgaXYfFrx62ZnFuYJaWHYHPdjZ6zSTkyH6mZdOWnRUm7ikAhfI7pzAXUl7UGi76E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756883994; c=relaxed/simple;
	bh=sGCceeGIC74/F6RJ6b6Sa/8Jw19qM2P81wyI+HHN1Mo=;
	h=To:Subject:From:Message-Id:Date; b=nnC8pTjKQSQF+XrEf/jB8S/4zYnwk1V+df1xftVFb6m7C1iT0TStdFy3DgduzsuNpt81hGRfnZGd7yk9l3VzFK0l1+67UY5m1+CrzysoMrjNnYQgBA60texQtRuS02fIfnnGpHXMPwJuzbt4WzqG2aqWfoER3zeV2vQdMNrNSmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/5HJXAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/5HJXAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A115EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756883993;
	bh=sGCceeGIC74/F6RJ6b6Sa/8Jw19qM2P81wyI+HHN1Mo=;
	h=To:Subject:From:Date:From;
	b=F/5HJXAFRSZiY89b/yjQAGDcEQox1HoVlrbpjzHEV9OnmGwOOpN3cFxCOBMNRFyis
	 e1VnWbrPVmodNNAnCmEs+x6fZ9SaLoI3PI6vbf5g9mUNu8ORERFqMBj6hvgbjC9eYa
	 wNlBE1x5WAoRz7+2D2lqR+02erZGuCdAd7ZzdbsHW6ZYhiaqpTPZOzjBocz4KIj/Ua
	 RO3aWH7jFCCPdvDiPyOjft6b9P4u2yJeh77JCofuAYGXkldPu3DufneCw6eBG/DNPw
	 oJavjr7rsb6ycKlxKRfjDhd+oExWJw5i4h85vevnH1FGmxLtrOXb1cB32jq8eZoZHw
	 W21MIJYDusg5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90470CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688399357.1985.15860911554122975150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419d8f0d3612a7160d2fb6e3401144c4c451c116606f4bcd4ec780e17cc19367
Date: Wed, 03 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756883993
