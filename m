Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A384F503BD1
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788467436; cv=none; b=FnqsTPWUU24a5sg38ry+tzBcxWSKWOD5vdBA/czZfEIOT5IldMiL15zjQNIxyNbOTvw2dm/i3+5E3k4hIBkMs3y6zz3ZnRvOr15mkxOd/apEZeU8zfZG/A680Mu4mie369Aj4/FJm7jOlDC4I+wm9UwneN4G8d960HyoArRiAHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788467436; c=relaxed/simple;
	bh=PAg0Ocwm88nmuyf5xy/EqaCcq165z9QTV6SijMy3bWY=;
	h=To:Subject:From:Message-Id:Date; b=uKGZjOkEVr1eQaZymZBEatD65avat1TkIRcYYY0/ondg25/xHWbFFG9Wuh+FYx/iaDHdXBrlkM2+l1ZIzgiBvvI/p09oRiadJIPtFAIIAKT0uvVhFYduY1hQJ/G6wwLOrKXVlS6nm8N8+jbTdqcFWsXh1nhbp5HGwXdElX2A274=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6gH45+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6gH45+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30ABC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788467433;
	bh=PAg0Ocwm88nmuyf5xy/EqaCcq165z9QTV6SijMy3bWY=;
	h=To:Subject:From:Date:From;
	b=a6gH45+stujArsUYsBHZ2p3c9Kk1bdvFmYgtzqyXxaKho+1CQ2Ql0Du+YKURXs3i3
	 5EpJ0pGXJY3SAyfwINRzpblVGwUQGE5ZKl6T23dH9la7Fd0unamyrbp0U+ISUvYUot
	 Hmjv2raLG4YYduoGfw48j50bGT7k8z4Cg0htsY3dn3vA0z5RADcufH0etT9kcdzFQ1
	 N94ESeR8Y8XAodF+/M/NkO7vOf7E8mLx/EkTZZSPl6RZ4Wx4/CcOEvLNVo17w4GGb7
	 x9xBBJU5B9RXnPMJhn2wWbv3r+Ucbnh+Bw2/es6p9qcONKspP2bwgclWMJUo6fJDjt
	 no/4MWIfC37lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCB9C624D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846743371.14845.3495465505848406579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6c3ded03b726501241995ee175f3e45bbd279c5d19198a2891991db77d3412
Date: Thu, 03 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788467433
