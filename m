Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465CE20E711
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737641754; cv=none; b=poOBD6zqXSsq48tpgEz6IeCXgVtMOqajVh8onJPWAysrnNYNotOu19oXurLdHWvtydTsrhlkzi/7gOve5zuK2ehtvXkfAghcEKkdkSlFqaeWW1QFuvl5n8/uy6OnDUmLebR5x/+hqtbCANOB8OzqGhvv1Pk7n4WrOKP0d506P2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737641754; c=relaxed/simple;
	bh=Yo3D0oRq4YSHh2etzsx3D0BCXVxPG4WHADSiA5/VcOI=;
	h=To:Subject:From:Message-Id:Date; b=b1YGYGvZ6zxK+8mNKwp8CvPBMojyhWX1Vg8U13dpyZz6JDDjy4o+snZCngFcCrtB4V//ziFPiu6K2F6RX0GhWlV9xg9KhsKkIKN6N+bRLJXsXDxm3/+1eiVEbIZ/9YOYKYrYAQins8B993ThJgZmSIp+luMOxGyXgEAqs1KnbJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sM07REWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM07REWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A97C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737641753;
	bh=Yo3D0oRq4YSHh2etzsx3D0BCXVxPG4WHADSiA5/VcOI=;
	h=To:Subject:From:Date:From;
	b=sM07REWZP/QS8I4Cd31EyUJI5GbcRvordyJfN8t7uDQWmKH//LeIX+p9jFXIBkY61
	 hE8F8U1dBQFtjp5REirogBVuUkidmeIEG2DzoC2j49+swrNVzod2ms4p87QUYE5/sT
	 1qceWFBZgESyoXE/X3Ptj3o5jngrvldvU9biKwOlL40Pu9qQHDcg3KWQY1ZMHV7R5p
	 6NI0LLdo2FJjXRkO5yBjJYtVyAR1bGhzhcN3CXXs4ct+fAhC052lvX2YRR9wNxAgjb
	 DbE+TwKdBplmfrdu3zxSmidELHNuaaQjOkgodByXU9jty/bAd8dEiBPwce/hy6fBrR
	 8SnJTBjK170rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA7C0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764175357.5309.1443714945195875717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9256ec2cdd0ad09d4eb1e3023a7b78938dad50dc89001680adf01e61013fc6e8
Date: Thu, 23 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737641753
