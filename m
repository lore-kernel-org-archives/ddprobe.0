Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772FD244694
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778308054; cv=none; b=pabIpdMF+oscpLChQV54vcROOAHJ1V3C9fgKP12gereLJXeOjbx9/K7KYcD6Ns31tezU0WbEh2Tu4OWB4B6rJY+pGKxjWV+OGViv+elRK813lSeV7BhcAj4hg7YOLbPwtXFPg/ghGrUU9H16VvXLsPfFTgBuHXFQ3H8gPVShHr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778308054; c=relaxed/simple;
	bh=ixG3EdE33TXNqkPkC/Wn7pRAsZRNibjNoYRb34orgsM=;
	h=To:Subject:From:Message-Id:Date; b=c/6NRsDcfxEoi7e+jQ1E0PnJjbv6kXDY4tHjbZPPxvHjRr/n/BBdVHkV2stW1+taq6H8uTlEY9AcdpPEXuErFcwwGQ+a+2nrQrugT7SftKTiyR6YotOAbGE2JjYKlPxug16fUsm0iRrYSktUdg3JJA2qsfbQ7yOvBCeaI/dUo8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTWUxZXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTWUxZXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBDFC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778308053;
	bh=ixG3EdE33TXNqkPkC/Wn7pRAsZRNibjNoYRb34orgsM=;
	h=To:Subject:From:Date:From;
	b=BTWUxZXBeR1vstGgFgEJWD0ybsNgAaJX6uEfBgnMx+Mg0nS4vlt34IRH7nWO9meoG
	 plyDVCUX7O2kkHcOTymhRHseSPCXLrG9UXY1GCYDdqX9t+yKQsiltH3E8HRh1ARUJv
	 xSm7V7l2HftAunCugZiGp5U4zNM6K7bue7exif8gdqkqrPRUBBvrmhthsPIXlB3K2B
	 awvdXtdYeSu9y9UXUveChjaxVDkv1k3hX56xI/VSwNR0KhTVw3ELSjBQ/M8fYbTi8q
	 w72+SnwZFM1XMvkM88fjM6/W/rXcknYTuMKVq2NlmizL/Je8aDLM/IYrT/csFqlb0d
	 Tt6VCCq94a8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE43DCD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830805370.14991.3536958677808365985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5f15a33392f131574b2f992b0fe5c0249aae66057fc2eced9e89c4ad8cb511
Date: Sat, 09 May 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778308053
