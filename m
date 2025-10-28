Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A6A272E5A
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761623394; cv=none; b=S/PjGrA2DPcwphQDGskZLitMq6/15UCIjVQT76GvjRebDVvDJ1NfyQohSC+Ze8kWOFgr5LNNT5HFQpBwAhrRAmHL+Sy70TF1I1/MkOsnkIqTtAikEe20bPqY89/ga3MI1MgDSC389DCDQ0tnjnMlHXc0skUiRvHo6LOSn4nbIj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761623394; c=relaxed/simple;
	bh=PaFEugGDIUI+W87X+C3hMl2ikzVCqhXSTros+vcqf5w=;
	h=To:Subject:From:Message-Id:Date; b=oTuT/Ywj9N0MRNY1h4TRZNDucRqw4EvxT4yyBoUMyf9gSGptL0s60ClBjzESzWRuVqLPxzOjChlOuTVedgVYbfK0AkR6zUYOnpoIxqDQQ6gRgFjSGKzeFh6reupMGxCHFOJB/HtZp8frm3atMEvoBGs/Gk0BwvomKesdwHRCA+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAmRW7yS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAmRW7yS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0770C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761623393;
	bh=PaFEugGDIUI+W87X+C3hMl2ikzVCqhXSTros+vcqf5w=;
	h=To:Subject:From:Date:From;
	b=tAmRW7yS7+bJNsIlTz3BXlzgO3pcuvqMQBmwb82HZL2p/ypAslrtMxMKfTya8wo+j
	 jKXZaBLmlG5cIYLVQMh84cwEScNcbOZTd2Py6POfvP1wwmMLWZ3m+KGOdnhAydOIQv
	 2u03priBkB5uYNyPp/mkAoOrZOs5GcQ2rG7mDG5wh10b5ENnFgXq5dI0HWMIKWoil9
	 1k9LqLMUMJkYxRJthUHZrWOXMGfX8Z1aN45STjvDdoUK7PcoZ3cXCrNRbovbUFPODM
	 BHhFQo/FHZGkSW0PHEnsYaFVNNad/sa80SlOnkNdmuBygeeODdgzVTmlNnj+8Qf1iy
	 oWVARvsVojMnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90989CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162339358.24189.5464226954183212148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90306838547599b9b05635799dc52c8dab5b2d11f84a308be36a3068c34cd14
Date: Tue, 28 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761623393
