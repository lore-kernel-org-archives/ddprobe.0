Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B405A0FD
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715766743; cv=none; b=rSBgIvv/+QAmfIu4zLa2GXMgXH/0ThT4e0UROODNXmQDqRiwob7Eeb1zqGmfoorR8q7f83cOs+VSAUCHDU6bNjRGVvmlhoS/FeOj0BFE67YwtKHmxQtQOxLZAVtihZ2+vTXm2BxC+8hK+hiGH3efNVeGPT+tp05bGUDZDfhXnBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715766743; c=relaxed/simple;
	bh=UTPOVyDDCvjSiZWuVj0BzXH+WesgBP7zw5jB3Hp/Aso=;
	h=To:Subject:From:Message-Id:Date; b=bPlcnR8elUTVePjdveww9qEiIregyM9L8J67/jbj6lv6Lte6IqgCxvY1S6VLI7jotgiy2y9MsF5AjFtS0Dp+GKpLWje13jCyDEZa2XwOxFLjRCYch5Es8f9HAvOp+PbYDqDKUzkDNdso13zjGKNatUOpsGqJH76Bya7fjR2CUoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJYwg4b+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJYwg4b+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1C5C32781
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715766742;
	bh=UTPOVyDDCvjSiZWuVj0BzXH+WesgBP7zw5jB3Hp/Aso=;
	h=To:Subject:From:Date:From;
	b=tJYwg4b+fTvlTgkyHgWrdkjKGv/2e4IIQe3DgFate2dtaV8aY/S3dhUvufwA1MXp9
	 8TqwohTNg2X1XyFrJSl63ZrOsCbzGsGHpCVdH3OE2XnwWJYIqjIgrPXdBqUahDwmOh
	 o8LWPFtm0RcasfnAKUx7dptsMDAyAJ+9WOoY4XcVhXXmu1BDhtUk7QKQr+B/J/Ny/Y
	 8xRW+9shU++SG/p6eWk90zT+sARBeU1h6JJ2RTPiy3X7/BHMJC1YRfqFbm61d/ri10
	 C/r0K5l9mh5uVIdAdW7Q3J25RzN14wO1iUv9droXdTNkyokbihuZ0PQT/eAqVnxfL7
	 wv494PV5bb6LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8F5C25B78
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171576674275.32357.1495739779863049991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a201727454deab504aa5eb7c8ab843da1ebaedcc25a02b825258d328315fb04
Date: Wed, 15 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715766742
