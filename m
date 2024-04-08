Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33C57CF0F
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712584696; cv=none; b=alCoyNOl6ux7yTvCDcHL8PD73X8jg79XYNoA7jBlMELsnlaMXtYAtKqFv51KDucu20uqCblWlwFH1GpIsyHhIyvElMdk9jo6TAeR/zYBmRg5vqmeN1oj/01WLd88X0jRyWTcqtfbRjV8mgWNVj8bGBF0WR11zjkbuvsZZPtsir0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712584696; c=relaxed/simple;
	bh=a9hJe2e0hrTjMx32r7hpnB28NSWgyQu9mcsRxS+TguA=;
	h=To:Subject:From:Message-Id:Date; b=cfOEZpIoqJwSf/n7TXZaFWawIUX0iGKa0nFJxkNeaH3g+EF63ZrQ/gPnscseCaD3rd93iOOgg3EDi71BPySeO7Z1gG4gj3IL0OlSCvDAxrHqSR3Qi8MCM+9yvkHOzdolhX8yBffyUJA5S+gPXP8RKTAOiDeKHrr2tFbzyo4o2L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLO+iqRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLO+iqRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F63BC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712584696;
	bh=a9hJe2e0hrTjMx32r7hpnB28NSWgyQu9mcsRxS+TguA=;
	h=To:Subject:From:Date:From;
	b=eLO+iqRNtuXjAXRWJMHSfqCey+q+6Hf8RTtx4pVdScsdNtMy2hpncbsbSZ5wfBAj7
	 B9NYUPmYUsCyYiyUfAUIhZf9KDQCK6kCVkrTmT+SxXY/fKDbxJvUPMKb6w6q/x6bw8
	 OxU1Mr81g4bTdxuTKNv8+Hc1RZMp6bp/DXufDLTx96S4ceoV8HXaHOR2AzYs5c/NI7
	 sd6k2oFQcB0SaVAttdTKsQ+50pfQnFHdjgKC2rKumphbxvb8EdjvYorU8G0DBXhpHw
	 vymYs44v/cHs8T/J+VlS0JJiu11Oa848cSeaBhnpyjoetG3zSzp26G1GZlz98rVcn5
	 y32zbhvPl1Ieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5C6CD128A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171258469643.8937.11652007321718600355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df06ee533f6d54b24644acdfa2d46eb930e00f76e52734d5613fcceb43a5e45e
Date: Mon, 08 Apr 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712584696
