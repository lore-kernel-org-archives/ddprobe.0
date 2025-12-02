Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B73E23C4F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764689574; cv=none; b=VTEY4VvJTFUpPjCJky8etUjebvqN9IayiT0nkuSFddyf3aX6tLq/U9k+PPyAVJQEbmgvBo52kZs0dXrrAXrO7XFQ2puoWIgUMnr3QCrN+WeqRM1JZPZxBmvq353xnnHmo336g+ztOxJFydFW1Gcvj2xtah/ASlJTx81F7PYGj2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764689574; c=relaxed/simple;
	bh=IiirsAtD+uYUsxHRujhbKasUOCLuc/gyuDKevM8RR2M=;
	h=To:Subject:From:Message-Id:Date; b=hjXHjsyw5Tp2QcxBzTcD0I45loPCWpRz9zKQ/SlMUed058Msz9SnWIl6Hu19hojKbpdSDtU47OaHmGz4gBDra5ljPJ1qOdOCZct4MtLqX+t5MhgWvzxrcLcxhsgJOFRQw2TXAYx6Yhsi5zDfwotP6W/cUncSPXlueMwuOFmk9yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecwAwZtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecwAwZtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6884C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764689573;
	bh=IiirsAtD+uYUsxHRujhbKasUOCLuc/gyuDKevM8RR2M=;
	h=To:Subject:From:Date:From;
	b=ecwAwZtgCHIkL3vZQinqGgnhw4+9o1xmPQa1Ysip7xWMh+KYZCC7u+FuWgNF7yrYx
	 WQfhrVTknePdNKcH352pIL7JKylTImXxyKRUM355MlFMQbxTQ3cjmHGfhcuR800a8d
	 v2sI1QPvhzoYjK5PV2kw7zV1RMQBvfjpf4fS7jPHBOYMFw/K4HjO3bq4k/TaH/71MS
	 MmhjwfYvQZZRI8Oz7/lTOANQ/CB1AVPE9/aRTFOF9bsUa00KjqivwWF8KD4vnvK/TU
	 AKMFiMx/u1KCAmMGio5cAe2C83F7iWbzf/ii4dGxAhveDdwobIAD9HJwN4C8fQkbOf
	 +t9XRA4YtqeHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E96CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468957359.9283.5839315689312440662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cafdc5476499aff0bafe58ee36db697e6f368d45d4a66c327cc09b4fb49b55b
Date: Tue, 02 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764689573
