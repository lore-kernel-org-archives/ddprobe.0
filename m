Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D14717BB35
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762296594; cv=none; b=RZDLF8fuPGxaltMg3/2s0RszaPAw570OosQ9crACIMSV84cPLGscUpOwWcB9MLzkfTpyucFBNsDuDuvBOv46EGafJ82UqyY704wavkOFl3gWl2MOtAuKI1PPazeYNthK092M606wyckHnIWruY/dyRRIXHoFDXaXBVszHdZ7qH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762296594; c=relaxed/simple;
	bh=HuH11WjZr6qKN07j7URYJ0J1ShK+xhx6TifjSxAnCI0=;
	h=To:Subject:From:Message-Id:Date; b=VWs3OESEFw/JrxwfCZ+hVmTLCYt8qSKkEGjffgSdjNaPDVYBarpbE0HX8/mPsH4FBgya4cZg/v40PMDXB3TVPAJyMyjXbcIaftEnRAJN+9b4r3UhgGN1j+A5S76DKyt5EpF9Rh8JkxfRzIZUai8HK0est0cjl6DFl/8dnXYmfp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPAIdWTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPAIdWTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F2EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762296593;
	bh=HuH11WjZr6qKN07j7URYJ0J1ShK+xhx6TifjSxAnCI0=;
	h=To:Subject:From:Date:From;
	b=CPAIdWTwLGFwqCWVXKOcak95kJ4YuffQ4AAcltipslCFK8QoukCZjagspHMbf/Aqj
	 gEKWc9hB8UPGoIRwKuK3S3ehBEPXiePCYMwl+DpiMBGw/5Ulcc9qYmvhh5jg6YYsZO
	 /uD0Bt8pdu/BbVy8NRvyTJ4MHbBMGH0SfatfQOfCqkCeO5Tfvlc4nqbuHvyLIqGDTU
	 Xshw7/C7eFZWH4PvhkTFLsFmjlyPX7iJIAhfEhLjyYhR/g4dv9MF97LuxvPW4M3vMO
	 CxwqTzVVfTtMb9PQXQSksvCAjTz1Cn2Wx93QruYoOmoAD6uDVTDTV7wXdp+Y732WjB
	 XK+nLolCXOwEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9195CCCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229659358.30884.16491493612672835417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ec1b030b574740661b8f26902887a79e58920e087a86cf12593f6e9d7a94ec
Date: Tue, 04 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762296593
