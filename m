Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510E8216387
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738692354; cv=none; b=lO2wmo2meOMC+nB4jdI0jd7SCOI0r0OIvQ+KqyQoUIKnf26trrKtQIt3NOMA10vHUGs+yxfl45Pz5dxJrljxaUy7slPvouMP6A2t2W1EzShQyjuGYYPsgnqwena13AHCb/6Hx+rlf4gweecUhLzD+4G8HYCToMXD1zi4F5c8ELc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738692354; c=relaxed/simple;
	bh=2iaoiAhcUizfjPggQgiaOZk52mz7Y6S3CwwG+KdmV60=;
	h=To:Subject:From:Message-Id:Date; b=IG4fNYXrKlJjK2wMGU/2jVGirju5yO0Rx2AhlTjv8zFsg92+gzfEHvZ3rQ7rZOPbveuw8Ktrrc1PoKEG2n87z9zyuRRurX1G/WA+WJ0qrhtuUiaCMIx85rOahz7Da9LcpdpZVJSigdzpCvpnB2tfB4avIoniU1wyReWPLDbUp7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+SQuJMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+SQuJMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5571C4CEE2
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738692353;
	bh=2iaoiAhcUizfjPggQgiaOZk52mz7Y6S3CwwG+KdmV60=;
	h=To:Subject:From:Date:From;
	b=X+SQuJMZ1/H/jG0Eh5eebOEbYFYIDWmCa6u7JOTohgvy5tDqCzc84ia7eggG3pva0
	 8ndseXH7MqOMrytD9oGN3mQZTJKraNnN1JLNmQIH5wJb9lNtRxWswiKRy59JYVGllY
	 VtYShD2Q8UC5WiyVZ7bB9Dl1dUI0y3j3GkQWVNq3Xe1geegLQKDR46DU9Jtd/nM7AW
	 jPLvz93XHpA+vlDmNKJCOjZ5AtBhGnB+n24sSTeZ9joWIxYd1br1wiQA7i8IRlSCaX
	 HHBKN3YCSf273vmQJruPn3DwurfVPcP81N7cSyDCiUwcMTQ57eANrUM5VYnWggoJOC
	 OM2GXDseZctuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0370C02197
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173869235370.25911.18339956117282040193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4cf231d1489f34e2135426af1b566cf5327f0d92d91611a4b9bd63a47857ebc
Date: Tue, 04 Feb 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738692353
