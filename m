Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D5A2E540C
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765318974; cv=none; b=V77tK6nafmiVxAedhRPtqX3qVe2kvoDqXxVYDSrd66CF6iGUZSE8I+wU1yuArmwDRjGtoiWBD8TfvMUEhNnw7Mff5lrHHFNpl2kxX+Gh0bGHsP/+zULt6avs6tC6OXj7GGv86u3hP0R1a4ZgEEBrhwvSGT9XmhdeGnqnAU/5lEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765318974; c=relaxed/simple;
	bh=I7zhHiEXnSs3uiHJLXhdHfne3Tl7IwlLkz1aY6vQFmA=;
	h=To:Subject:From:Message-Id:Date; b=dAxLSRwRQsyDlrx1QKnL3w1ls60pAcFL0lwFSdkotxe9QmviK66HDyRfTiaysL41TIZUu4fPxv9aVguzktZH5Jfh5L9vaE6KLY40sjlSTjte6TEo/BZ+HT3gL2a67qtdAcCh47/N9qwmQdvwl/MHuF7dZwPwDEey1/UJwLobzaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2DBixIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2DBixIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D8C19421
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765318973;
	bh=I7zhHiEXnSs3uiHJLXhdHfne3Tl7IwlLkz1aY6vQFmA=;
	h=To:Subject:From:Date:From;
	b=E2DBixIYi0vjn8YuPMTpwz21BPAyuYfXEXeZ45edglZcpZgr9vgCgsEiieZwKaEaq
	 SpDJafzEoGwe7hjR0S5lnKWW5kXBdb7jcpRCNqttAT2ple3wOGrzFBkGy6GRQ/RZsG
	 bzvT0GlHo3m5tPxkCFxzPQCbapcD8f2RBcCAPNJWaUBriLXBYxisrVT9VtFdE6ofTU
	 jzVWDOCW6seck5FXvlrOOkjtVaHbc+IypaTwDqk4E2uHwWEIV1Cwx1+r1xtg9+eZ5w
	 OJNgy1EvkU4r2V2DYOoDaZ4rEpziaBkw+ZowEVh7emjMF6cW4dx61XhAWW5HIOrYy8
	 4UGApgi5EZaLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90495D3B9A4
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531897358.15578.12469720954887423128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ade66e45afbf5e69ac1401bfd8ca8178a0dc1d4643381891d3904a7aeb9c85e
Date: Tue, 09 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765318973
