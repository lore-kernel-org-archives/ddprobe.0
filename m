Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195407F477
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752942594; cv=none; b=jXBRZts5gsF43e7vohHhsr7ju4V4nid6ivp0KIg2XyhsBnAYc6hEIZNdvKD0KHUCM3uVH+lemETp/DN1eiwx8GczzxfkzFXxzxMRw3jqNYcEv5orv9hDjpcSj8IksVhXPK5AiSfZD+6IGrqOVsBxp8HJ64nGrPpfs3slmhKeXls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752942594; c=relaxed/simple;
	bh=eLa8Lm7v+P3MWu0DWaEJvts/TrR2Q5ENQYk4CMXfUgA=;
	h=To:Subject:From:Message-Id:Date; b=e57KKbMgYeRLVn/OlCqI7Aud5YpqrlOW0dfAsWSKYqzC7VbiBNRVulROcvOROGearLnwQ2ntsnhl+4966d3CAmfNYpJVHH00BjvddcVGyUCqPEQugABY8pP7dfpK/aAZnO6v5lcAd3SCMjsnHKDgor8+XYf2WZg8c/yeez7Q1go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmBTJiDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmBTJiDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6207C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752942593;
	bh=eLa8Lm7v+P3MWu0DWaEJvts/TrR2Q5ENQYk4CMXfUgA=;
	h=To:Subject:From:Date:From;
	b=fmBTJiDie9kBwkYjOUa+tNsxy7/sNe4FmtiWftZ7z1Qno8KxwP3PH4JjNaUtqMsBO
	 EuJRUckYrghycd187DL4ozcyTYK66rhnJER+N87MVlaVb1/nN4n0OM57vJdMAuJ6jO
	 848VqEdu9ulJAX6wSRYBFzx0cLu/4Q6QcTI2l86aMA0QrnxRzYCRDxz/9YhHAlJIdN
	 gwSmB26Un0gJ3dLEqNBqxfR4U8t+KzcWjGkBgpp0Sdsj7pyKxlSR/Y6pUA9yl2Qh+M
	 XvRKKsu1J6huR8/iMSdE9O9+83tCMDLl3HFUxCkEZMuBcyud7+dfGyABVzhXFL7gXs
	 uBWOHDNzo5YmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140CC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294259358.16073.894846452953827425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfdf785031541e86cff4f217766f6dd7c39a9480d53a3928f7270cb15c6feea
Date: Sat, 19 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752942593
