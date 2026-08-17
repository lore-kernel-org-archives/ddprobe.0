Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666E337EFE7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786944634; cv=none; b=o8svfzKQZpsj3Sz0UD4J3VEfQb6GcJpI5nYi93ya1ReFdx7Q4gs5tAVKXJ5XAQ3JzFglNxllwPXxj79Oguc5osRXJxLwmTPKVKsx7rlRpM/MwBCnP0vZ+aYGk+9exLeQm48bM180JpQ7SHRdmT/DLzGr4JhwhcUUqycS7xo7Ixg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786944634; c=relaxed/simple;
	bh=IxBWIcTKWPW2aFTVqG0e0gwfRUcOBNZ/99uPbmNQB5g=;
	h=To:Subject:From:Message-Id:Date; b=AUq2uA8FjrQZZ9XR7xvpYf95HEvY2J8pFnEAhhF+MH2cc3oSHWuMAzHiFe8c9p6RyBNM1ACS9+lgOud6rH48HCrbxwrG4tzTbHpfl675zzWrZ6alJHqzHUjy1ep9UEkxkeJUS6fvVOGNY5DZ+ha+zfb2pd5koYz4WectMc39vE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZb+xuDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZb+xuDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB995C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786944633;
	bh=IxBWIcTKWPW2aFTVqG0e0gwfRUcOBNZ/99uPbmNQB5g=;
	h=To:Subject:From:Date:From;
	b=XZb+xuDNcKeNYdCWFs6WhHrv1rueDFcbMACugcDEQ1io53gaiYOvGc8vk4tJHKSwS
	 i0n6gi8GcKlvvOj+mDDsdKVg46RpqCRo5Gj8S9VzFD4ppchnJAsgFa7jeYmIKH8FVc
	 7EErKeu50Ti/cop+9DrQDSAOpPfxU+htlN03pgHGqMC0RN/ebR0O6J4GDAbRF7wR+F
	 t2ebDsGg0Q76m0dFBhru9FbKB2v886mtEeag00fpGJ1Bp1FcNlA1lFi6zn7IXQjInA
	 njbjMFkQCjOqYoRNjY83tqrZKRdVpow9Zw2BUYp9VDSWwBhsWcDqHIblNoP1XEWcnj
	 pB0/V85rEv32A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B673CC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694463373.7231.2283756438259566387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d361e904902e3a4b17b100e01e410a44e834dd02d335f6925e231abacd454d8
Date: Mon, 17 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786944633
