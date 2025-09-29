Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CA72C2369
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759142395; cv=none; b=vD4ySkFdQ84nDj9r/RjZvUCgsvgUhqxAAXmV1vaqBV0pFwU6DDBKZzSUwkmMWC8Gj3j/F7OMaG1FyA3kR2Pt/CC9JzbH+17fE6JPf0Ruhsgo6OEAUu/9Dalkf3pIgoGYghGGz0Fm9Nldm3hgu4/cOVRZ57W1cJSbYpgG9xt601U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759142395; c=relaxed/simple;
	bh=q6uiQURYBvAhTzDznPP3hLCtAaW+yK8ssXMeYqSC61U=;
	h=To:Subject:From:Message-Id:Date; b=aC6Gm4TGo6z5P53LAKaBLPhIybBdSSY5IxxsAPs+DIU8xwDoSJuUVh86Vm1p5xTFQKoLJiBd2HzbQyiDnlqtUxo9yRiJjmj4iXRJK5648+lCgeCSt/Q/7AflAXZxfxWo09p+4D0EI3bwtA1m++742iLNicsSTLQdBOkm3b1+k1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEcj0oxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEcj0oxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A774DC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759142394;
	bh=q6uiQURYBvAhTzDznPP3hLCtAaW+yK8ssXMeYqSC61U=;
	h=To:Subject:From:Date:From;
	b=vEcj0oxl6a3ZUspR05OSDepRZB9qQ/gOp6fDRoCmupgiAr6PEEG4VbG+n5nYnhE1c
	 LliPeGhJQ1z665NjuWCd9diSDq1qV4/H9TTsGGE94ZWOfvo6vNOJsDuxPlqHv4OyFD
	 yAYiUVhiAKUHBe+CoWmb8IwBHkK9A7M8Pkf0qeJHxJFpWCvbSiBTVWwyU1N5pWDrqy
	 nXjoUFa2vucMOqaiLH8rGrTkpI/DViYZlzfcssZd4PCX4/9zRq+OpOvLj0EEAymSJl
	 8LCXW0UJVotI559EMkS49tGiItmguXUgs4b0vq/drj17NuvYqnovLmKbN+/ei6sxFC
	 2gdryMguvfJtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D25CAC5BE
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914239359.7019.15616660749254134874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb91c14450f57edc8ded9ddcdc5ded86acc398cd58d2db917246a7e596933c0
Date: Mon, 29 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759142393
