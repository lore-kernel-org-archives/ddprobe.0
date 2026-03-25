Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2410713A244
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774412694; cv=none; b=KIVgMfrxLmH5Cur5ZQjccMZyjATMHf+dq4F0Nty85ycLwOVsGnFCKQ4lqTaRJiX5ZHjTX/4yacAdoX5vPdum/U6YWqAp6Fjr2FlntPLlb3nEpNOzm/4g3CbYd9JF5jARj/v91GlBo8j5k8we+lvSgMB6CU2dLPOaWSt4aVXPkMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774412694; c=relaxed/simple;
	bh=lQOgf/1liDw4tDolJfqDxaYj35voEvi4L4NxAcmbkNg=;
	h=To:Subject:From:Message-Id:Date; b=o7hYJtcpUPePhVwj/Sp6AvszlGHct6FjnTfuHbKDPGeXt6gT6KG9faQUHuvy2wIZWueN0LJqXol+07eB/SRS4FP9Vah3xKf+eG3rE6PNO+zS+XAx7GReTcdWHwqkLPHnHy/7c6BpYifUwtU5fpkSmfozImSrAZ6/YmZUmI5/Jhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUUEDMlI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUUEDMlI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB96C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774412693;
	bh=lQOgf/1liDw4tDolJfqDxaYj35voEvi4L4NxAcmbkNg=;
	h=To:Subject:From:Date:From;
	b=ZUUEDMlIEytnrWpj4S/VhGpVAdFOY3mfkwctUHUYJjBpfFAx71AInPPg23vEYYy9Z
	 p9ScI/LmtC1XsX0f4GcDyPYHeWn/1Jpd1jtAnH09l9RVNUlrLnHNKISvJZlTOGztXF
	 6fVSYKkXgti3HmiVFZcw/sDPzf/b2wmZEv1nFvSt/b7jK81QfH76f/U0+Zg5Q8X9FR
	 7ct5Nxgu/Pace4R2Bf8dO0VUxSUre5IvXk4+tFPMpq7MwDdIj/Qux6sfRkTxEUd2RY
	 MFCM9cQy78NsCUYMZO/YUcCK6GnhuwO46ZAsp32YxzqExo9gpKC+7jUpreBHGWTnSh
	 8xUFX4pzTRkRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9860CFEA807
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441269358.10258.9722958357090346120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad43fb907fafd8721c3a4ac75beac76a0500282c06508c9edf2e1a4675323d8e
Date: Wed, 25 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774412693
