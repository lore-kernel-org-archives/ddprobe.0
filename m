Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D057326D4DF
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765824773; cv=none; b=O8mHXQazLRwhGXtSPooHssy+Oa65hN7S6huZurBoNmTSytWAO15vPgLcLCI7GRc6xKte85ydHpL00+hj74PxWQ3MtZC2ImTi3V7RMA6SNOgalTRKaWTplbp1v3mu+REOTt07S8PjMnrxCQf1M3yexnwXZCDovdz7RESsa7buv2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765824773; c=relaxed/simple;
	bh=FJy8bbGR/BL4ykF88A7IZfsCDS368a0eKEnsCRFg9S4=;
	h=To:Subject:From:Message-Id:Date; b=LJGQtEHDGpCx6oiLrAIXrLQpUl7DeoCrXnOVSEKL5HFSBG6xuIhDfCviw2gY0bwiDvkvtUqlL3ExojfPwSLwV6Mhl1uB5vrn/H30uIHS6qb0gFbogEBDAkFUWBTG1v5do5DWRzIN5DWndUn7NS6zeBsKQUiWrjHleDfMUG//cyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sj+5Lyne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sj+5Lyne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1EEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765824773;
	bh=FJy8bbGR/BL4ykF88A7IZfsCDS368a0eKEnsCRFg9S4=;
	h=To:Subject:From:Date:From;
	b=Sj+5LyneYNqfO+6IrN/2SdNiXAQFDeKKBGpB23FO55DjphneZtZoZ3PfZDPNZGfYe
	 yE+EtDkusXXbt0zd/9A7RkRT7nA9E23S0u+otqvvdkTKbnyaKy4Qal1gB2EXKuy03o
	 PTMJlIfJye7fDqRenyKK8BZ7kNgGs9u3UmtEEyCWA0abVwR8nvq5n/6S7UI1SqXSSL
	 HiAmWWgfMGqNlGaiOfxyruCEVCHHNWPMP09IZM0R3r+M76iaThCqCyygApind+Zat8
	 JRunZZaBg4gwD1zHnIfeJ0uIhLrxuqW/0IejGbw08ksoq+AcAy+mDh2zqZJZlnQWpR
	 0jFYPg07sHXKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9937BD5B864
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582477359.25772.2147415463634249852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bdf16191df292f512782d50b34ef69875669de66c2e3cdce8e3be80b978e5b
Date: Mon, 15 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765824773
