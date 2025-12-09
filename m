Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359E5226D17
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765254774; cv=none; b=dNPXbHjldWyaJuNyBmtrpEcvXJBKI7SgElIOuofh8LRFuiPksie+vF5awG1CgA2hBvNLGrFz3AfhEPJQXidl927h0UPpy6IWCWciWBUF3zCqatX9JoriK4m4G0NOWvkaW9AfuMYdIphKKYJ7XmM5Z+Ajgw0bubdJKBIinV5rGh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765254774; c=relaxed/simple;
	bh=1wOXg6sF8gZsa5Y4gGXHYkziLyrRLaW0Jn2TgNAHGA4=;
	h=To:Subject:From:Message-Id:Date; b=fZlnX+9GvBnrsY3SxJO3663I6G7RCgBEinn7QVBSLQOu5IuMp2ZiOW0SyOUNklaq5xYYXBNKEj8zHzhBI53b+JqE53DSyxD4t4Q+RnhZIO13MVYplHQcSB1vBpDmQQJUB9HfIRLNuvj8jdyeFlTvayF6l50smNvt95QrhzRNikQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJxOsr8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJxOsr8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC036C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765254773;
	bh=1wOXg6sF8gZsa5Y4gGXHYkziLyrRLaW0Jn2TgNAHGA4=;
	h=To:Subject:From:Date:From;
	b=jJxOsr8DxBNXWQ+7TiVCxXxSp4IYtNUS0+GZCconc1QWfxcqTtHfLG7mUMIMia61r
	 T0Zrb1nz2pv0z5x8IanPYruvI6P1+A9BvmUykwbaee65B0dmGcQHskxTSxknJgpgl5
	 lCEeLx8qTUEuH7NIrTtTifWQ/FY5jMMMWJ4cCm9d+DSDvqm3/FR4UwEmvmskWAG7dt
	 JEoFvnInfiJAt3Erl3zrZ1F8tTldMnTyTAPc7bifudVZKIqW2TAmvSWJISEfucqoIn
	 wIx0MJsA//JXsUW8WASiJmnM/FHQggceGAIJgFXj5ppUGlMnk0/zmUWqHsTQvOMfTb
	 76Yl5kLZZKTbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941D4D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525477359.32404.11108882094684070655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b457ce2c0a56573ab58e4eecf7098d072fa9b12b95c4693ca33653388fab08aa
Date: Tue, 09 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765254773
