Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1394C3002DC
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772468694; cv=none; b=j6lwwFW7u1B8+LGtOa+dyt8HZ+sRevmF5jkeoeZXuCvegIo/JKmG5bcpx31hC7A9Xa3l+vSSMpaRjKb1jkOSaKRetLVjUn8y+783wKnnzpZyf40A7OCwp6Bxue/0jN9SCLLEMtpMYjlPmIZi4LaIQEzrTBQCBljG4kHApHr2b3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772468694; c=relaxed/simple;
	bh=rt+2wSQ1GbS790eatJQ9QddZOVOQxP0IrwfqBtGhk64=;
	h=To:Subject:From:Message-Id:Date; b=oDIS6i6PQ81+ZfD3v8iyOKhFlJXqj4K+Lk6x7kpUCOAn5xxF3L76m+FCY0NWUDFr5oZnn7Rl4+41S7AwUPYj8zRZlByoGw3ENk2CoCW0V8N6TQ6gEa9FpAtPi2x0I8y5Q3JjDeS/3QskxbOaTJTQB+QfFapM/1N3NHnTBnhn+p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxX1QS1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxX1QS1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31BEC2BC86
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772468693;
	bh=rt+2wSQ1GbS790eatJQ9QddZOVOQxP0IrwfqBtGhk64=;
	h=To:Subject:From:Date:From;
	b=LxX1QS1FNX6LOUV8gQFVEbQ8504t0a6mTwHLpgQrzk+Bd571feGQHrTJxTyF1OPCG
	 Ib97GMT49ZxDpCxXVHAgIr2wnfJXG4r9MRg79oeGALtv+N60LjlAOnuOZ6u0BgOgMo
	 B5WONTf1SFrtffyRk5CRO1HoCZ/QxMXqYY3fQQkSGD4q09ItFc1NlBZoDRLrn/yBwb
	 hMSdatpSvfsowP5e8h7EoYjd2HvlmfEUtWvRNzmanPt5fByzXrFr5G/6WtWw1ChKC+
	 t0dW4L+E0ctJG9dCTNo5vz2nEHnH/0Cuh/xe2avh1eg3yBYf/QUavp/Jb7rxRYJ5mM
	 axtHiKnXy77Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C713EA4E3D
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246869363.12430.3550878268734137500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55313fff3ce1daa3b1a24b7d2b32fa75d3ce62bc323cb04f297edbdffeb76e93
Date: Mon, 02 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772468693
