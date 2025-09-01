Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5E71F3B98
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756690194; cv=none; b=qKkswLTPKZShJKxb67if9d0tRTbeIqHM8UeDra1xTIdCXIy6VuFKV1drS4ytTL9bHdIjmQLj5CNuQl7sbEL+MT4Hm6vIBqrQl3xayGTX+VCB365bMMaXIjgs4azCpw8Sms8AtRTBQd4sNGLn+boAfjltCkDm3PfTHeiQbEzm2po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756690194; c=relaxed/simple;
	bh=hSu8fGx6xccj2O6NMRmt5h2juW+7wiOOHWqYikiOLzY=;
	h=To:Subject:From:Message-Id:Date; b=NV6VWshPhvtc+GJEa01U7/bA8FuL/QjTgHEBj+gqjy4gelJI9bVsgPdrbt9x9FvzIo4QKkeqebnr7OI2b4SarpDh9CXhJhPBbBrGvtQEixDwvlJb+3ipknou5HIO+IVu3gJx0hodKLsl8ORoX1zIfDe7+SW1cvZVQERr25SlULE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQaxTVxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQaxTVxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AD3C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756690193;
	bh=hSu8fGx6xccj2O6NMRmt5h2juW+7wiOOHWqYikiOLzY=;
	h=To:Subject:From:Date:From;
	b=lQaxTVxH2wKwk/1Z7QxDztAsDq2Tjyh/kBpCf+Q/1NbJGFsX/fe8PiPa3vbCZnRCo
	 f93rmnP18dnzpBmZumByZjTRgGy+eKrLX2Y3jP8kQU6s9Et1ZbEnd1ZG/Ly+Ln2HPZ
	 14UdCsKCeArDLMTYhnFhPf5wdIYMAo6eTR9Mp878u74dmMlaYiOzVTb7Jle8fasb5C
	 fi4i9qyMX5uOHo7o8VZv9Z6B9pclo7MKkgsQYTGIlDFnx8NyAjAFHvBbg6uA3UhQ2Z
	 gBylAdtsdg3sPvHJ6Hat76iUxiXMjgppteCojZoI4iKZLP3WwEo6d+1uj9DhvUo5JY
	 WzEmJT/1/EqhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91544CA0FF2
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669019357.18275.5918864496269283512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736b672a1cb91ba27530dcb4302fc8b9eb6d16ba21c618035a53e6ebafa0466f
Date: Mon, 01 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756690193
