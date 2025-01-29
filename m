Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531417FD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738127754; cv=none; b=A5w2JcElHp1INQqCIcOERtgODhs83Y5d4FbNBI+HqzXXw/RhemT0LFn9XHR4b93ttFZUBw3CKmCv4f6e8Rqh8OWKdHh/LTzJjP4T5YoxlcJr59ohqq5huWRh3oYPb1YnEOqtWb4AKbdugGdFCMpHJCX22PO0lA19tumgRbtp5BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738127754; c=relaxed/simple;
	bh=kI1mouAG4E40pThnNJvLhxN7AqqHLc4IZ1EeI8EBzFM=;
	h=To:Subject:From:Message-Id:Date; b=drhVTC2UmFBavprnHSq7V0kAAou3Sv3r7SqwuKYXr9JbwAhHUMOHWVmO3S1KicFBG84iJYTneDXYk3Mtmp3NT8EU8R8xnWozfYTvCb4o4feLXHNF/zCm9IqVnZ4GmL3FWBzTDU3Ge7uA5fwrTIONuLuP8U/eKlug2p3MN/sTLK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBrh4MKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBrh4MKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B69C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738127753;
	bh=kI1mouAG4E40pThnNJvLhxN7AqqHLc4IZ1EeI8EBzFM=;
	h=To:Subject:From:Date:From;
	b=sBrh4MKVMpem4ByN7U0wVzaLwIfQCULgbcyYXQw5blvevvkNoDcnYGClFm3n0rHAX
	 Mx0gQIgC/T8+K6j/6wEs6Ac/UWSMCAkZvW94eehDH4fQy1ZTYTLx9zKEj3trPpQ+dX
	 e4Qq+haHMZKKI15LKmovV+hzFUFtoxpEAGLtkF+uX5v+xOI3hrMVc1qKev2jkPg+2b
	 uM/5kz7Ucc3j7G2mkURbHqWpPzPk0xx9dvQLnUa1VbiE56SO+mN+8OrhBwPnmnMMsv
	 jwrOwcXM26LC94W0jkUPDdFLQpVkMTzmi8xPP4oxcDAyQGjFRWNp+XtNtremBrCWYH
	 Vg42Qw5DAJzJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A5AC0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173812775359.6937.16471009773356100138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d42d3ff093f17910e563312c5570b7ebdc92a8ac7c1b5213034c234e0bddba3
Date: Wed, 29 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738127753
