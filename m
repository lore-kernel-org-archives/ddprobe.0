Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A612C21F7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761576594; cv=none; b=amGt/l1pMUncTkWPF5luDOmFWAm7w5YTUxbxXRILfNdt1b5pMkuxS+lif3wTITa7UkYFk4NAUbvxbYnZozHrIsg2XV7iDLNOq3dvPMliM54vibu8YTlvMp/04uVAxJOu2STSQWow6qLz+0XLrJi04RXn4VdwKW/ktIbRjLbF8mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761576594; c=relaxed/simple;
	bh=j6k9N3sWwme9d5O5tcsd+yKB8RJAvpqvVHev/9oolZc=;
	h=To:Subject:From:Message-Id:Date; b=VuHLOdqWy/ewyLsXmUmlBQGC1phFCnHQNJv5GMNXUXf/jn2/8iC+K9l07eO9wtdRGF6J7puZC3HPMjOFsPHK5axF2CASrkBI9zCA79ceaj3M5fjlHR/43+j1AAvoleaoaJX7WBZEt2wklMNyL6xMip7AZnUDDXEjICIGrkoUlGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apykAvY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apykAvY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761576593;
	bh=j6k9N3sWwme9d5O5tcsd+yKB8RJAvpqvVHev/9oolZc=;
	h=To:Subject:From:Date:From;
	b=apykAvY6knrwdT6S0NxTUtF1BQwN9qh9/kplI891tJo8MLjgyktkeDI1iB52b3wrC
	 xVGHNj2KbL79cFGA2Nujzb8JcT4btJ2nmIaUrsYOlXLMSRq0pk6JCuDK2R1xJs0+9f
	 I7XNKTFN0rrL/kTLN6yRxNpZ0HHNgrtRwYOF0fnSTIhugJ00a+uwHu6O5RxeWF3iDh
	 WpB0HM6XIhj5SlCexZ0eV6vgHWMh5CGxQLzFrFdwtIFMFFUR5zmfGXmbfUAPr77bBQ
	 nPrT8peKLOiwCMPMP6oitq3Pjhb1LTipGfHhWrKwd09LugW+QR1B2pwzZ9jzlpV+7X
	 BDY7HjncFG0ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D50CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157659358.18758.16822136910143364754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981781b6423a92071063a8afb1d24f96a916355574a730a69020d619bfe8a78c
Date: Mon, 27 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761576593
