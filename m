Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7A5523A
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751158795; cv=none; b=SiKp+oDVap0lPj/O/5DsEGBwFAZFSpgp8VrBrha5399RWgFPyREpe0IWYnrimtUQ1tJ6Dphsd36PqkXGQe6y50z0f3OJrRQcwZFlXnpyl3vL5/zHACuUi34AQtMTYjRHxZmZdFehnGw5OvrVHF3o71ZUJywpudGucYYqfZWHZro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751158795; c=relaxed/simple;
	bh=RI9rlfqDyHRPagNcLlgjLEOr8CYanZkRt8sLu39ZTtg=;
	h=To:Subject:From:Message-Id:Date; b=Eu1PUHzSCLxfz4dUCL13kD5kTKqk93dWIc52anfbZ+94NJw88aezCgSMPLapIgQnVOlmp78cjMbQLzg/ZGSn3xKCRYvaC2zDKMokZrbuPCRCuf20x+es0bx+l3yVA9Hc5/4AIE0C27OBrD58unT+TyRjJ3SFZiQxdnRo8YPnKjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpFEqpg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpFEqpg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3770C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751158793;
	bh=RI9rlfqDyHRPagNcLlgjLEOr8CYanZkRt8sLu39ZTtg=;
	h=To:Subject:From:Date:From;
	b=bpFEqpg7srZUdLaBC0/8euquaaPblBxwXXDQgd0YRmeWVcP7xirw/AExRv2ZRtg2Z
	 fUjdkO4sqyBG+iJNXGf4Ck/ly7rEOaPt/MmePQ/or5ZlTQfUptCoHrnRYJ99BpUTHd
	 k9ZmKE3zJvGOp3eZqfxddOs4gk8NH/ZHe+z05jQp+l16AEQP2OXPSK5iRvP2oFbRBH
	 FFXQyasDLWENGlMW0pl6ySJe530ydlDFUARK10/LBBuv2sCIkxMFD8VcgR9g/+gxPL
	 2wlOyKqqyF9rv4M2nxYr5BU8LUM014EWK5rGDUSbGkONE3aaUu+UwlH4JVTgh9VSyV
	 MsjGyKxghgoFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE2C83000
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115879358.11120.14428939615280713948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9621b02a43fe28f59b791fc2906a4cbde0c7ed02c20e64cd73d592ca8f33c4e
Date: Sun, 29 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751158793
