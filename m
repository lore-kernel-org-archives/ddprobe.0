Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D41F1E2614
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770627834; cv=none; b=m+4dtGtkui6eOpDXEPSP1N3S7aLxHRmUmjZ/8XpLsu6TMnqZ+Z0LLykCrFa0U2VoOtVzwTEiRLrwIlLCHk2nKcyjfP1Qz+KZdN6R4Or9Q/8aXv3W5yY1ksGBm7XElDGhMdUnBEAZaz9CKqbH1QTn1oB/GTwqSb8YX09pBKxlb1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770627834; c=relaxed/simple;
	bh=aIBCVXEOZgWGJYDoD9hCzo1eE4PuHIQL1QF4BGIDlSw=;
	h=To:Subject:From:Message-Id:Date; b=EeSaS8kZalbMLh5bFl2lR6gE/jTurPrlkQU9YIdWPZSxKId3PCN5w2P9+7dNzIsIT4idPY+vWN57Ob0fQChdZ+QQ3eRQgruiEjpXY5ozfa6H9SMlWdanD2GjgIgt1zmHc1tpfX5cuFTLO2br0M/00k0ZnlBKsgWSCz0MLHFYlQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HegmhSd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HegmhSd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A592AC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770627833;
	bh=aIBCVXEOZgWGJYDoD9hCzo1eE4PuHIQL1QF4BGIDlSw=;
	h=To:Subject:From:Date:From;
	b=HegmhSd0ta8yHB6TrxeitGhzndD7pGPsOS/I5j3X7jCflv1VJ5QEQ8UWA12ivhqu4
	 osta1UgJYHrFyKV18nbZdBpzp4eDLpJTFOG1HKKhwSm394aI6RyGh1y06b1b0D+QlK
	 DV5mHCUTeNdnpjIbwFkbqzlPDEHZvTN46vKtgt6zWf7QuLF0OofUB98fBdJmir4PKE
	 dlpLTKsFc/XRuGw2NXy7j0t7rlUWdixp9i6zu4cDqT31ZRexTd7nXQXu3vq66DnD6n
	 YPQ1SwOfhVg9NaP6UU4WE7nmQU7BvjBLnOXe+mtFaP9CEUhHc6TnQKTGTyvJG4KCHC
	 AOtHR4GsbeqfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E9BE78D49
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062783358.13437.2477761071016862368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007f679fd248e34e7053ebe1e047ab5b1d72a7eb7caaf6d5988bd42302936c70
Date: Mon, 09 Feb 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770627833
