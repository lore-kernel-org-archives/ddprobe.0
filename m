Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E45F296BC4
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759052395; cv=none; b=Ebr3p5vvtTC2v8tkX+54ub8hwrL01lokdG5gUHnNqt6JsIlRks6dpb+f4i98sIHWfyikGX+aGxKR9d4MWSjrvVLIA/YqU8W7RCl8j/4v30Tv8LvShwhd1uMsjvDjk6nT0eLYvYdy/6FlyoBTojPbUXclidqrNCsEYQK/Z6iH6O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759052395; c=relaxed/simple;
	bh=cu6GMlExx2MO3rbvH/Fkc5/HO6BDtqDjvrMMNKZrNoM=;
	h=To:Subject:From:Message-Id:Date; b=islSbW2KKxSpImxQu8gD+LDVQLgWLVJZ2bJCRWMEZf/gewiES9kqucY/hDcULEibslAK39PLqeGgRF0brJiaMfDnsb0xenKAXzZCJ084OGAKxM2+jn7nmPnZR+cOHXbZRRT7Kcc+eXFjEAZgnoKxnY+IlsmQX3faDpQ5MXq72eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+YqqjVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+YqqjVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B854FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759052393;
	bh=cu6GMlExx2MO3rbvH/Fkc5/HO6BDtqDjvrMMNKZrNoM=;
	h=To:Subject:From:Date:From;
	b=Q+YqqjVmzCTsMPSfQxBxzauGLHycu/+elydaWmLrMAxw+D9N1CJvRGZMen2k2aWaw
	 oHH1n6GnML0KxSmUpbn44UVMa92NO6KZA9RTBmJk4ZrSR5/ubbwavLGHjZ8NEKcahh
	 7RGHxXrDI0RRiTSht8Z+EZIKJLhtk6HUSQaLpmox3jd7oOL2F01tm50zcYXOh+gNua
	 sQS721UaYD2U+7fXY7kE8LUfCzpKSkaYpdH0gTgjOy386LA4yQEbsDC2TF0gmaMxvm
	 rUVWE9ukGDeWLtlc+OujJPy5JLJNekBWlxUgF1Z+/M6e2KNhffLO83bO+qkFhquFyh
	 cQJvxprZTvZzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45DFCAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905239363.23850.14709940669248817705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3304fb03ab7b2257bee8cf5939be9a14863f0547f0609c61bd2b089991b6d52a
Date: Sun, 28 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759052393
