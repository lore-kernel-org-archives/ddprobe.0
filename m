Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E6425DB1C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771475694; cv=none; b=VlXiNpHGMfHfucATxZRsRMiDhplzQ0W6GPqPjCp4Jwxkq6wYPpNO9oT5DmkhCE9oB4N4/6PtMeVIdnJJwZGtxlbQHRifHpb6DhTKDa5kybRisHI2mHeNf7AVR82l+c4p7DW5Z6kbtxTSEx8jxPJcXH7yJ+kqhpWIOd+O5evIIjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771475694; c=relaxed/simple;
	bh=PAVIluWhpYSspCpsz9M8kDsWaHzEJUq02UBB96ueFM4=;
	h=To:Subject:From:Message-Id:Date; b=oqyWJtH5hGtS62uXStPMS9sL0bKN7fPzMlMVfsYXnGhhayVM47fFRTTKWkxz43EpWHavu6ehf64z54GkDMGupb1k1pTTmy95789mvik4mpyksO3/qXFFfEIAsywPO4L/yGo8B4JmGr/oTuHZyQBfQn5Ccb9OzU03wug5Y71Wda4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgyDWQ1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgyDWQ1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2F6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771475693;
	bh=PAVIluWhpYSspCpsz9M8kDsWaHzEJUq02UBB96ueFM4=;
	h=To:Subject:From:Date:From;
	b=mgyDWQ1rN296Q8TIgYetMzgKZjzhuewIwYboAxVuph2QNNfLc8nH8RfD/VdzwkV0s
	 rjtLbxtC5l9Whrgp5lU2jsb1/4hNYLe4aWqt1pYfj9V5pa+eOt68wVee08Qp61mHs8
	 r5gOW0Oj38ltPy3OmgDsWP0SCQV3HiOniPC0m2/eJm438zAG3o0np2Te8pYHi7VcZa
	 b85XySm18y+HekHYlcjhDQbN9ymTUr9CAyoyDrtm6q2uiwXUavqBZLZSNubQoIOjJ7
	 DrZHY8bhra3O5XGVDzN9IiEZ3Rjpt28kGIzIKAaoXyRtQZ+1Vy/ZJ7cKUAnAo5CGZU
	 OqxYvu9jmF7pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0388E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147569366.1613.13918891746635586201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da870063ccb0e84bdca2f24155df1d45f0a3ec9691790a6e560e07a188fcb9e9
Date: Thu, 19 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771475693
