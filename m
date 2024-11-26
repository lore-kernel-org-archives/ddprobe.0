Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E13DDCD
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732628754; cv=none; b=KrDS2A2BE80I961uO1PF53Me1XNstDd4yQn4FoVBVmr5hgIG5BL49HThRBZXBXxhuoDpqlXCEzeYqmHvBAi/RCbLwKvFdxWoyDsNfD94+dapgM5ZKgKkZjz3YvRXMh8kQizXsm7GfUpR8y06tlF2yQeoOhd4FQsXlI1evxa1zAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732628754; c=relaxed/simple;
	bh=SubxwnY8XN0xpkI0C4CZrrmyoR8/zhRa6XDgKeNYBtE=;
	h=To:Subject:From:Message-Id:Date; b=gZ3If7StdIK7tn79xPfu7v27GGHaqUe1BTW9mOSw1vdbRwc+v09z4Jr7MzRLlUBFJJUE8fuaZpXqofwps9myG9PCXbKia0Z7QxrRMXzUCbEMzM4A2EpwX4U1b1L0dU17FoTnZ9i1+VenuhErqM+PTLfmgOO6sKWHfGPb9w5JZT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLiyVZU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLiyVZU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F87C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732628753;
	bh=SubxwnY8XN0xpkI0C4CZrrmyoR8/zhRa6XDgKeNYBtE=;
	h=To:Subject:From:Date:From;
	b=gLiyVZU3Kk9RWEOGBITIo9QGwMFBER8TpU2i2a+OrHsSFH4d1yG81SwGCltFmvLPV
	 KwVPCjG4+1AL669ELJbnB27mBSBpQf2uX2ZA51w6EzYm4wGtyNEam1Zjpyz5mSvhXB
	 WvAbpTCpe/vi0JpaQLaVw/p+1fZoFNQJWaIbeIQ7NTsCvEFLBHOsLb2Z45oKAGREHL
	 kWCKtqUOJxnhBnet7EFTVcFoO54BW4elJZLmRULWI2BBy+fqFFhc/WzV3qzSRomCQt
	 VF6YCO7urvOOv0FCZw0ZuVReSTCOHNxih16sYLpgMrH/hCRx5EkOfceYyb3slSYwyR
	 exfXnFUHjvKJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FFD3B98B
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173262875360.15054.13784155169849306240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29286b5719b9c21d15316613a366a456388aca3eb499cbd9fc557eec22cf725
Date: Tue, 26 Nov 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732628753
