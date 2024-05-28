Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59725748F
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 00:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716856463; cv=none; b=fKINTihC0378KaOMV8iS7UCKauSVUwJHE6e/E2n26JERdVH8g8txinwp7QTAd7Y54KR+7j27oIgjSuOKZ70nqxe9id6jfQNRZcrrV4w65NjnQ/VAZUp+3uOmP2oxYBqWmhMfpOVYjTQWOv8PKNq+y9mU0FDAMW07uHTnxfaTubA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716856463; c=relaxed/simple;
	bh=voShBh8EXpzENEUR6GmG63dG/uBiOhXSCtYDk88jMmM=;
	h=To:Subject:From:Message-Id:Date; b=LJACL3e/Cj+tVVQox3jdkMOXP3GiCKDRmEU2HCFlTMB6v7M9i0F1Snx8wSxLXYQZOOZm7NXS5gGhWwUCPvFJQk/CbjCfn/QhlVC2w/ZSl79VugnTumRyXOHozxgypJYw4zguMmB584QtgaHhIQnrUWXSkyae4zgr+/vlDYV7LRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QObQgwDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QObQgwDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4DFC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 00:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716856462;
	bh=voShBh8EXpzENEUR6GmG63dG/uBiOhXSCtYDk88jMmM=;
	h=To:Subject:From:Date:From;
	b=QObQgwDcTUEOpPdmbRsC9DyMz9leUtsj3fb2Qv7tJPxt2qL8Lgbi4HwovbV/eaIq1
	 vM+/mFYnis5eBu702ECpYsg0Iy8tVyr/d0laEbPFfVLyqj951Pa99tA7y+wLFnFWZh
	 eFMUUrMkPywcUSJGkYFDJfvbF5UbUEBisj9KfTVBAi8L+HXPkjdWxB7qqBNVgIsmFf
	 fnpshzNDslZYWXYxx+q309KyaTmO5m7FboZrRCwXFl1HZ3HHX0i0q9RyBgDzjKfRGE
	 qryTyDLqB7FlXyIzOTNYKvKbehBzI7JX0Dyf3Jr7EnEDujpRzbIJGdFeTWjuhLLGoU
	 yqfxrupkKzGGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48F7C25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 00:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685646278.6608.6202237868012574944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb971bcaa2a760f7f68e011a80819511d5330030aab9c10e426c5f760f3ade8
Date: Tue, 28 May 2024 00:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716856462
