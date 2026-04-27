Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D2518C02E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777249054; cv=none; b=mlEJQ9axOJS6wl74AhWrMfRMfiGWx9kUbykXYI/iQJ0+1rjYwKe10ZLvlak8WFgSi7gZgQyOkFNJaETjjy9eY6LEErvD7thPrktOvKa+dxdYLgCOiqf/S/RfyaSm5fd+rFGjj6/IfGCvezV2c+KHrg2S7NSpm5nkAERyG2O0Dk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777249054; c=relaxed/simple;
	bh=aVdFBKJakLKNWoDPLWBAVcnhazsXxGUsq46wD9PS0r0=;
	h=To:Subject:From:Message-Id:Date; b=RNWiWks3BXTqjVQ9uJ7tTR2tLkodcTWYNRaSwuxLdl9IkkYJ/gOLvPSC15ZsPMA0UHuIGWln/9jpqfDR5Kxr4/Tpln/hvp8Du0dkRhbAvorm74kMFJ4CU1d4OJdPYq44Q0HdL7OubJ9wUwpi3Lilg5rXqme6UDlURqbAQwcb29w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJdBKRNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJdBKRNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2711C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777249053;
	bh=aVdFBKJakLKNWoDPLWBAVcnhazsXxGUsq46wD9PS0r0=;
	h=To:Subject:From:Date:From;
	b=OJdBKRNTof8QyaNJs5Ip4e3lBRlU1h5gYTAJEjCxb3eU7yAxnhFoOZZ4N5MPxtSdj
	 Xm3wW4r8rphpjpJf4MPBk3YiFASQYnIkUsEYC3aV99+8mV6rl0n6c2Kxf88d4avGMm
	 a8Gkza1EW3C6g3KdGC1BeHt6MVBeCcpMrqupQnH3YE5mJgFKWi6lNCUVWWZx8sbZXm
	 rP9o+JhPBlcaS8OkRN4tq5MCRvFRzkW1hltlhBrFGk45bFxSZUpJV2ebxRxuIRZq+h
	 3yUZWRszppsjDHXzazcJGweWIE7ajL+2rFr6HXkKoN9TILgOhxaisOn93NUIDg2iLH
	 QnHjCi0M6HF3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF450FF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724905368.26483.9087925214056292084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe813669a0f664130f280f4b2dcc3e4f8bd9dd0938e812d6fa8a2cfa3901043d
Date: Mon, 27 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777249053
