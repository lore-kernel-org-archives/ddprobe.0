Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE823ED13F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768950834; cv=none; b=LgWdQacLBN15czYYWjrF1IrYOvfDkR6Iv/31EqGE8vlWMMYU6oiRyMw9cqzEr9cjRVN4W8Hz4Pjah+0N/O1ftGaXV+KUL/zAae50l7w/bxTZqoMXAPyGz7aZ2wrFZ9SPqM5xFQFSCKDB2VeQXEqzrahXBb1WTxnMmuavk6TWqCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768950834; c=relaxed/simple;
	bh=Eo5Q/wxbLMmInFfqvckFXIoc007fsWXyx2NoOywspfQ=;
	h=To:Subject:From:Message-Id:Date; b=UaDr6l2BXRJG9dxbdbPxOoSt85KD7347+agoPBMBSoKRwcqRPpK/1doKqyB5gciFXB7eSWM/8P6yh1l8Zipu892FWZ/frTdQcxkrN422LXo4tCYDiV+3nxs9xxP5sC5P+oDG/eH8pCfgBot56VeuMG2P60bzIA+s8SFkGlY0nms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETfS/rKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETfS/rKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80A3C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768950833;
	bh=Eo5Q/wxbLMmInFfqvckFXIoc007fsWXyx2NoOywspfQ=;
	h=To:Subject:From:Date:From;
	b=ETfS/rKBhjwfH3QwJW9My2me9M3aonzqIcsG0yI/LrHrJhBY1JL+0AvE07pwcHZ1l
	 heUUvXfzdKgZrWHjF5zuaMqG1HYgp+1Uo3uEJRPAQk8TUWOx/zr/0unZDCFN92zMeM
	 jx3hkqZS/LS8cpoc0ks4FCs0IhRyH0bQWgPrV6j/2OC3I2NId8G+XCw4JaetAYFr62
	 yU78s1SCGfPuRGZpigQbUuuv33oENuZcLIqN6GjzPuQy9qW2nQNytyTufwXsGPXUSr
	 xsbZO2+y8T60iEpStuiFjNM0vvoNKA8KiT6vGkr7q5DoJEecv+IDceJTAep6qoLK2l
	 7Zb/ZXxxZAD+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966CDD2629F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895083358.27289.427525408882648935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6076bc0ebcb4ba89fce4b3d18491ae3da63365f0561ac18a5dad1d7eeec2e7e
Date: Tue, 20 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768950833
