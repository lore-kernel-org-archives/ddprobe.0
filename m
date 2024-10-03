Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3781ABEAB
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727998554; cv=none; b=mNK4a9juZWmJ+cV/wZ8GbxDTZCZIdZOgjISvFWTe6jLtYOWiJwaiSLbtOgYJgWLvOpG5p2kON4Zod4MTViog+kUQ2Q3TCD3+A4XJM6OUbZvEzqEBUVT2QsM/seAUyCSuiBb3MFzS3gzBoBrjQJQW+q1G+I/+C6vIFesAl5H+hO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727998554; c=relaxed/simple;
	bh=YliINbdkMxUes9VGMA/piiG6uRp2Zno3M4n3vRJ6GIM=;
	h=To:Subject:From:Message-Id:Date; b=mIxoOwxJ7+5neawf22dR5dJ9crtSQnfTPEXy3JF1ra+58Amr0Kegmm5VWxfcdgBb5o9+ETnhM+UYH8+JsYl6de6WsTt3xDnE1TiY74kUHzZM4G0xIgtvUEITthx+sH2dznPNTmsOWJl3rPathNEE1tkAe1+NRY/amj83v0xxeFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLYUprUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLYUprUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE728C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727998553;
	bh=YliINbdkMxUes9VGMA/piiG6uRp2Zno3M4n3vRJ6GIM=;
	h=To:Subject:From:Date:From;
	b=oLYUprUNUJlux+W6649zdNJCq3SQ9l8Zcno8fs6eTd8ky/Hmf9u3wGKLNVYc2BbRw
	 OMyRjnA6se25ZT3Z5PNw0BWFlnRA74hBXuOe0vdhI7It/AEixFkZ/OreWNYj8Mv1/v
	 04V4Me4ZxfVKPTX95xhWWbb8zoRIreLt6L8E+8GTfsSArPzkaR/CwjY00AX69+doJJ
	 4JDjoZ/L9QzFnxwKCZ6pn3qD1QOKc2VCAF7LZVcWNDMjtmc3CLLCgs3ZXcLcgkkpqv
	 cuPXKXCHTICCtKR/We55q/qd16ACYO9VRysQqIBx1zmGOT/RJQlz+mLUBwQo9odCPr
	 ljN8zPthQow+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952C7CF34D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172799855360.28683.2690508134080212795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17ef91bc416a3618e7fd9e971c708272d4e8eec9ef5dd07efe48aead212e002
Date: Thu, 03 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727998553
