Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DA23B8D47
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765061574; cv=none; b=NqFU9UZuCV6pSzgxjABFL7N5vFid1CfWG55uIcRIiY5uMqOqwMpMLNQeYv9aBNGz9bQWWyC/ZksYcQYIlRhFnGU/eLQUTAHX+cQvmgax3ARs+T13s0UOlHs+oxdD5yxEUjJjLt/mVEw7h27pSZD7XRqdGdCPxlpp48TrHwa3Pjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765061574; c=relaxed/simple;
	bh=Y7s3kNh4vm/iIlCCZaaMR/aZ4/48xxEE0VXBr3vaWh0=;
	h=To:Subject:From:Message-Id:Date; b=jzpDXhQYZQX/avriFljWKGtovV3NF5fKbHeYjZcVOGsyyBUMOm9UEEqUCJEgJe2eaG17wiqyfGYM7+G1TZtl0Fi4p6s6tyNsGhsanALcPDw7M49I1enVB+dDpf2DepPZPyTKgqxTkfKfNygE1+7serFKeVLVxPqxHNvwjqU1HrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTjWu/NB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTjWu/NB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DF6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765061573;
	bh=Y7s3kNh4vm/iIlCCZaaMR/aZ4/48xxEE0VXBr3vaWh0=;
	h=To:Subject:From:Date:From;
	b=MTjWu/NBfXEeWTT41qYUdcynpB9sCLiYB49EfkBcERddzSLOzixFcIx8Sh1iS/+ta
	 N86kNhrZnxO6jF/DHfIc2oeII7uRqwPzdh/BmlgEsAVIQGYRqXFK0uzmL0wReHmqlR
	 lzJio07hXSaO3ZFQAl/PgPwwvvCLN3mowSBIEpFH+d+evtgYs1CObJsOd84JRgJHbJ
	 uOIUfE2/ghegUipBD0yRfL3MLJDdloB5vqh49bfchU0TyuGB+rihNNE5apEExVJaMF
	 nhf61mnKF8vLS3a44c92X343krIQIwpq0kTUX/BxLhMspHnC44ib47eBRuz2INThv4
	 cNxLrcA4uUv8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B7D3B7D5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506157358.11370.320752219146082092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8ecbb3364e3de328d99a0e52b2016bfb3410002762ae97573fde0612052374
Date: Sat, 06 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765061573
