Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA5C13B284
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753958994; cv=none; b=m0VQXVOdSUliortbOPPP+akZzX3ZFzpGVpKuOxbnpP483Y/7zJLvFCBjABNiqwCw1E3CegizSvOhACjfauNobz9Cr7JbSQpyicFKZZvCOmxwL6xZ8LyFtEwGctaM4UuMt9mUchhjHRnuF1tDbVq/cP9c3XAs8Ago7ebBmqqZkQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753958994; c=relaxed/simple;
	bh=cHhz/IQBmM7rgFUPXPEIz1YMFrVibB0N2sMLvvygk/0=;
	h=To:Subject:From:Message-Id:Date; b=kQZiW8n4Fse0Ek1hOfRKlMelXBiPniLBulxu2AwD0mBcWJOmYHQuFGnPr0/lNXfrPyjyIVGZTvlUa9vQdiDKBu8sPeu7EireMxZ6AgLU1CEZ6ZXkge3gJMzVkwf442pyraLch8O+sSDHYPA+xyilIMe+dA02h5kyshB9j8bS/28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ro43jQ35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ro43jQ35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A536DC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753958993;
	bh=cHhz/IQBmM7rgFUPXPEIz1YMFrVibB0N2sMLvvygk/0=;
	h=To:Subject:From:Date:From;
	b=Ro43jQ35ppfXtvTfrsv+Fo8s3N+VVv6ofckjJE/otWYPPjZFeJGmLhZ66R7HgtHzN
	 mTQHvZ0HEwcCDsJRr/XFi+8YErpexU8f28DpLc3pC8MMwmr5KDWbbnz9rpuqvxZhNy
	 yBWyW/R9Amkq17AlZVOpatY73GY6EtQXa0R4bob9Ar08ryXR0VZefBU1s0PZOQe2+y
	 vmQSNsvMhpeescj5kBUDv2xU6k84mIk0BVzcDZ++6bGl/+NVAM/SH1ETa9WBt9VZvP
	 +b/1yw7IGbcODevavJyhZ16APTCsnFePjej89vQiQHkiXKktaBQIPq4spBdyHR7kYm
	 0tZXukEt3c9mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA3C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395899359.31751.15699038526912727472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f88928d6f26bd639ee1eafc45d280f60f0caab9c868e971cb0cf4ba7154888
Date: Thu, 31 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753958993
