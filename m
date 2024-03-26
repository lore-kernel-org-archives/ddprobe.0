Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC017641D
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711464497; cv=none; b=f5lezz+/bpSeF6+9YOgRykVEqCWfM+NdhYznm8k4hYIRYeKecB1YS1CUWGmOZD5OKZ+kYL6fiYnNKLqCyIb5QQCsDX2ycAb8OiKJT0VBFuy+92ufnd4FsWKcKERaJ5lUJGpL+DazfFFrWeGavyD7SYUYLxu3WI3MbO1waQ8P21k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711464497; c=relaxed/simple;
	bh=5ZQwahwHNM/44UC2GXYhWuf/kNQwVGMklCidJH9VuRk=;
	h=To:Subject:From:Message-Id:Date; b=tOtC9/mzrgg03pDXqRusPVozRCu9opE43bTODueFZFWEfCVJHgbb+/lyNubsSW+dzkmMaRMvLGzLpXrhQe/04RfomCWRP2d/sliNet70MQwzaLkfA9AwjoNJywh3Wpm6zgG4wjYpBtan1rKvld6tquwqahW4jygZmH9cgP69370=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFl8QF0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFl8QF0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFE5C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711464496;
	bh=5ZQwahwHNM/44UC2GXYhWuf/kNQwVGMklCidJH9VuRk=;
	h=To:Subject:From:Date:From;
	b=cFl8QF0iSJLD727cEBaHYUG2/VbdN8pOGnTuF0jzRqYhoEGfq3ZdIIDOgnrktlJUN
	 EdTQxCDebFZssbIyGo2k3b13aOlvexRxcnLcUXBhahfpLxU/mssaJqYgLOClBXuROP
	 KQAHBvZBloJQum/2vDomM9yGdhzv+3q4hWHqdKtG4RM5u/I378Uq1lJbeHMxloya1S
	 pPSKX00B25Ugdk5NoH+mBk/jIN4qOwlgOYTLDC+/bdM+8MS49zCfJx2yAE/f7LaIfN
	 GyJhMtsQdwvaFkTXdhZ4uwZaZADQCG9ZMxlA+ZL/J884ixn9Ep7Va4BKsJGQY64Onr
	 Ie4z4kyMFmj/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC27C54E67
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171146449637.28687.5827876649214330688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502ca2252fc36ff4e61fe5b59d584b56fb5d074cf558d7eb7e0fd6ffa8b59987
Date: Tue, 26 Mar 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711464496
