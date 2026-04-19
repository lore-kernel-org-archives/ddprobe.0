Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283D918BC3D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776602254; cv=none; b=i5WM4Yxc9m3fEx1jE6vkICeyPrIvooTapUJQ1sRRYXjbd9RjB8Mn6zMWnjsLk+4MP6hAhoVJnTqL08kdJQ0+bmYy0T0WfOR5Coy6NXsqkbf7uVsWvSn7DFXu6XR6cVkWM1IM+nJ7jGNaH9ApIMFpizkqBe00UENTBdm1tfiC2iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776602254; c=relaxed/simple;
	bh=1/znnGav04C07JSwtP4J57Ftf0tA+b5hsTSL0mYRn08=;
	h=To:Subject:From:Message-Id:Date; b=k7Qm1Aki9pwNHJAaWCH/umpplE25frDFh160ZXvmiGoYXkr8twr5MgkqdiNUYgDFa88yf/Ex3dYBH/ncR3L5/RuHKdL16dFGd9PWafggAdstOMtaXncXajLkIhjzu+J3//JUfIOfLcaMv4uMUmynpAmgAIKlxQ/48qotmJ+VAzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkdgcFRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkdgcFRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1011C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776602253;
	bh=1/znnGav04C07JSwtP4J57Ftf0tA+b5hsTSL0mYRn08=;
	h=To:Subject:From:Date:From;
	b=lkdgcFRySIqbXVB5VNNeMgOsa3Kqn2RyJkzbxstomGekMJGzMk9RBxOOk/5aK1USf
	 Rao3nyjXekIGlb0zLDpABMmu4QQB4vv7/0NdWTY0danEkm83znkzqMJ+H6vUEbwdmk
	 ZxR+IsT3ReQB2qkV+veVY3T8RCsw4MlPqfXAwasmXsxtkaPmPGyGPggCZd6XIfu/4j
	 zZi+6k2s7G9ewSYi6J2ls944x1gqpWul+pOCrcWKTpLwPlcSop05YPi9cgpT4xavtB
	 Dg5WC6TtWat7Vl18pE4Uu7BxQY3YjHIXiOH9I11We7wqCAoeCwUnC7VIbFl/zebgta
	 ekDd/XHDbhKkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBE0EA7199
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660225368.22564.16082490590507959792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46af049c015149c4704f93bbffea027a6490d2a8d8a653ff30e208173a2cd455
Date: Sun, 19 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776602253
