Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E25E1C6FE8
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754389194; cv=none; b=VZOUErXYdtCVV7qhQahTvgNhzrEqB2R9SbnNrwv6wBaqYFaxKIZYV1geYqJoSIPbTWU2QJgeMKS9QI0OHANc67O2tYLwQLIbb08uQsGo122+2BKBcek7AkeYP5dzIplJR61e2F2OUtacVpHTqHZkzH1SgStmp/DOFAcX8M/xgiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754389194; c=relaxed/simple;
	bh=UxvQ2gHEpYkMymU1IRMv9YYgSr7ToyvkhWQB09dDUyY=;
	h=To:Subject:From:Message-Id:Date; b=AR/9UDExleHqjjtw/6B+ZnGiVVHWiWTSnm1HfREk1GjSeaKEUoPVZG0eGrSjjHH2d9MsB/ooeb4xIFv+7CO7aaJ2aDhrWodqNSWNTJGS3zbmgdHt7MsViMZ/Ci617Im7PkRWyoxMYKX5Xzp5FjbylaIgaZXqRdOA98JLhAy0Nb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAkl/f18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAkl/f18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED14C4CEF9
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754389193;
	bh=UxvQ2gHEpYkMymU1IRMv9YYgSr7ToyvkhWQB09dDUyY=;
	h=To:Subject:From:Date:From;
	b=QAkl/f18iGtBpy1iCdHuYPJIRXIv+D6bjTOkbVodbbJG2qG38p7X6s3U9UTuPLGeO
	 CtY87ImjGucfpdjbdzjjKQhMKk7jWWOGhs4GB8mrsAjdBwcN7SFhFy7twW669Z5PLL
	 i0IXHYb1ywJkEpTmV7dlJ5JlLqoVrXxx760dhqlZr6DuXds57gCu+/vE9GBcNtZAD5
	 2rM/9XflsdygHusArUSl0gZ7zpVaklIkBPmvvNGCujMPAYnQ3yQ47YvGJQ5p4O4sdu
	 fOktIbdtP99pEqesj/5GxzXqT3aHvK4v/jU0Ks352IlOPcaemNm4U1SDP0RUeITGmQ
	 GUujS78h+bOTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF64C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438919357.9467.4603272225674521363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283830ada9097041ea2f36f8f3e704ed0f5df4ec99804947f9b24f17106b3420
Date: Tue, 05 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754389193
