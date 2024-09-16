Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ACE17753
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726520754; cv=none; b=M5XYOfF6SfXFIGtYeiQJMhfP31D9W4mF+1cXG1DbfGOmFxDejdjPoNHfctMJ3Le8kl5R2CDQPMs7xlY+oV5Va0kb89kjMj2JDP+A1tqpnzesA64bmM0cW9zGi0L5c3Ao9hIfxR4mVhDs06tiRf/jX25D1sMaBnMRPrTMe4nMx5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726520754; c=relaxed/simple;
	bh=vNF1edMq95lTQglwOZN6FA+xtcPu+/n+6Hj3y6euKhg=;
	h=To:Subject:From:Message-Id:Date; b=j8IDdHTv0gBjAgYqQvgF8E8EwAgUsQvsXZn0W0pGEtkGU+tSCJEY7gbs3q8DrK7UgiA7aWxvE4x9T31qyqaHWPEA+HFMj7/11vXF9Vdo9wa3e5+ynL/9UEfZ4GT2/giQXrMnU/sjfKSxk7NhL5LP1Ifiu2HCLxL9wgZsKFxfuU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMxGHArG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMxGHArG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31F8C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726520753;
	bh=vNF1edMq95lTQglwOZN6FA+xtcPu+/n+6Hj3y6euKhg=;
	h=To:Subject:From:Date:From;
	b=jMxGHArGH+xNsGKYEfIPjyRtlcHj3tDWvotg8tuXgKnVMxDIxYx1ogkzBLO+Y8ywc
	 hByNhqz37C4KAW9CFpi5OIlW+rao4XccLfxGqUdNkn4BC0E5xigDFNKAND+8kgQAqD
	 3k8jy4VRHgC6KxQKB8m1v5orkKuX1STj/h5CGeOVKB3E35LBWMQpxE7joi4kK1ijdS
	 0CDJ5VysuuiYZJP2ifgNRZzrpcSKMjW6qVtWaAABUnx2+xQx7aUyjfnRk/Tq0QaYfq
	 J7CZ88MbXkUzNhpmDWzg7wZ8d6GzrPs5B0c+hwtOjB4nklrbPZ/RaRRiB4S6lBzTwK
	 n3tJUPMhcarVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A099CC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172652075364.1251.15834289562253882820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116c2e2bec31e10d4998602ed5afeba94c90748711e3e32e14c94c9738367a6b
Date: Mon, 16 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726520753
