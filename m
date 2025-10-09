Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2506CA31
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760030994; cv=none; b=Ijfdtv5mLZfZSHAC3LmYjlgIs5T3APsQAJeqTgFg7ucZ10U/3MYFHa3rQR5LcoYzWFIbTI7TKV6oFRrJztRtMIQzTKMRiwHILPZP4CjwSq2YNudKDZbsQz/41GAL/gf//oKsCdobsVGFxdwLHNEZmIsPLkSOBtkvs7NCv5GGlmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760030994; c=relaxed/simple;
	bh=nyazsWZLEMjS0EjyuGjW40RCygosRLa702QNGJDm4nk=;
	h=To:Subject:From:Message-Id:Date; b=olCScDKtrIV2zMJ6eTOfjphwfnwuxVZN8AI+53a1/pzp4e4R01UHJG/wJ7M48otwwFHkg44vDjqGVEziwDZzWeKOXg03i2c7B7ufHkJvwl93nbe1BbrC6p1gLWfA5iEal0XgxGjt/VZB3IUNl6EMkJA3GXd00MSgPFgWKHzYBBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQjZskGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQjZskGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0281C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760030993;
	bh=nyazsWZLEMjS0EjyuGjW40RCygosRLa702QNGJDm4nk=;
	h=To:Subject:From:Date:From;
	b=tQjZskGRBbqVlfAv5DjsnZcKeN3P6B2qqYhfonDYKIAP/S3FZJIgEUXw7rcSYMgNu
	 JqZ5hFZ0uFKSJbF4AYq5Yqt1cG7nId1RDfYi95tZkAO3HDRLomtnQr37aaescMyRWl
	 MDY11UzT5EAY7pAj7FUl2QKsZ+CJ4wy8tGGYgyLvdopLGPEsoL/IyUkp3npHLWbAiy
	 S3L7xXbio27gQs631sEEJAD6WIIHLNWRXDoXVzYP6Al7MxZb2FfJd/indA0hkBMg9u
	 tOmqtBqpV3n8TvPuC7WCIR4uAq+8vYnKLF+7wCVrFRW5yg4jhXJJPiNBnhXH/rA+8J
	 46K6pvw/sUIkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043BCCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003099358.10739.11987699412077780062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850ebae2aa70702e7675ec2ab55a4da2fc78a3c5697ebfd2208b955f89ce9d76
Date: Thu, 09 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760030993
