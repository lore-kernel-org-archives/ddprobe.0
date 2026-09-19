Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590D534C806
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789842034; cv=none; b=NrxoszEvnxJoSZE7gbfZ5MBdY3uu0W5KgbP/eeSEvh2bn5j49SeggR5QOKAWm4KyaJhh6rHOWgOsRTCe/vYxv/xbfTL5RnPizoumpbbydYuYkqZUcaeCy0qX/kcYy5FMVBU84HvUve8DDl7IDXcf4uPHzh/zwJovDJFzqxPmw+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789842034; c=relaxed/simple;
	bh=mHrrnj95SJh8uJsEwJQeRcWldrsabNvPpHI45wZKPVI=;
	h=To:Subject:From:Message-Id:Date; b=cKqHdB9hEqSDiaxm1GWAXz2PpEGlcmVr1C0NMCC0MghLLzcbK/zldxQV6mSOg+YCHrT3oLQDiCcE47pTzPFOysYzFWYXoTLaS46AyhoQ55BjTiFzdpaYvQ8Qeu4vR9UIxNpIJpEpYOGCF/CkkzEksEwtGMhs9IELVwE6EZ3Bm7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PliVk3OD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PliVk3OD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50FCC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789842033;
	bh=mHrrnj95SJh8uJsEwJQeRcWldrsabNvPpHI45wZKPVI=;
	h=To:Subject:From:Date:From;
	b=PliVk3ODVyOXbLbEKwLEwDjx+j1tTeQvx9Msjrsw15DE4ZM+8O2NxYPdFFc9jCIbq
	 rdhdItDrD0twzC+h5LF+anWRuQ3G/6QbPWTyXk1kGZ+SsmWn+9opCFXurvuS5mp3Kc
	 6QwBZ/13yZrWTpxTk8ZtRB5eJJRHQW7pSx1PDmyel0lYYrqJmt//1SZoH3Jrlg6zzy
	 gL1xWAIIFLk+IW5L9vnTgf6hIBkXHz/am+FsEMG/uDyD8UuBFgy5muoeGqyTdUOVPl
	 Z5xqyTSUF70w3UiWhQCHZAkZ78BGPRWvX2eznu6VCR4zs1w+sxkWKpcqz/8d7wrx7a
	 KQpM48f+XNcKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03B0C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984203368.15506.14421188805116719210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe7d7e874eadc4f541cd9456868093574755364b676b1b81da7c4ed8912fa48
Date: Sat, 19 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789842033
