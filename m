Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652BB377EDA
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775816254; cv=none; b=Ht40la8PGfJTvGCvlp0AX4fmE+AaSa0gwpKBg/gTUAb440mmLwWB3SkdL8kP+wLglnE4aKbi1I/oY1NKU+AhZ3xYqDHaXpLM5rsmJfPy5m5LoI3vCaJtavipFGE6l8VThJxKJidQSIq778JDN12v8yMCu2IHiGBNH9TT7diehak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775816254; c=relaxed/simple;
	bh=HoS1TnIatD6ghU6AnM3odSgGDJIFLYhghRlSgFZrOfk=;
	h=To:Subject:From:Message-Id:Date; b=YlBrMw7EKrKOnzj4NfX2wUQDnxpyTlv+lQ1A6uDUfgZfRhg1bdtzuh2nSypjrQtPCxxi4MuOENyXq9pLN0OL9eDosumtuOeORPM9HozEuV5+3dyfH05Hagi0lxhccmRZs1h/V5vL/j+KUHq1w8QK2OS4x1gAh6MozpBpfTTnc4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPb5/EdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPb5/EdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB074C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775816253;
	bh=HoS1TnIatD6ghU6AnM3odSgGDJIFLYhghRlSgFZrOfk=;
	h=To:Subject:From:Date:From;
	b=LPb5/EdVxdCZi3o9RoiAbzHe33O2Tw0L8eK7bTh5uSX0q23fQDhoLo0AsO+PUn+Vh
	 ywMc92rnI3mYBnqUSgtrm0v0TXtSz7bQdYxGevzHfAhcpFmfSLSG3p9XqXSs1xcmDV
	 uZigsNIKxAU/YmW0lZTgL/doXWXK/SPuTKsvxCQpqnYTdBe/NXQspB4PAuVSEcOJ7i
	 9EidVcxD9T/wAgqo7fyLAkTbgUNZgIIOCdY8erT82brgL9p016h5oIJZy0xY0pkpQP
	 dy+M8IOnpROeqIiXQZqGOnY28mvUGrY41skvBeh/khKv5ikrNUWv/KkxNdajs86zN5
	 8koLuH1oA1ang==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93ECE99068
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581625368.1714.10910148906185777596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e3e2a5249620e9449d7d300e09e9aabbee608b1b16183a5925bf8b9c37eca3
Date: Fri, 10 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775816253
