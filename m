Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E2B31ED97
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765261374; cv=none; b=CK7s6+3R3Wuvud1mYy6U6w5GuvkJ38ZojBsppX84WqCoQwrDE6xBV6h8MsEZiOIPSbHbAi9/BZ6WxliAze+pcZw94aY2B1gjYFpjZ1M2bYqeAHypD5f5Zs+3Lg/N7mTI6yQODcjLHnJfKdie5WMck9uoP4iI4bVGFTghGcnANes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765261374; c=relaxed/simple;
	bh=5ropFcViq5SjgEV2PtiP6bfvpMB260DBrMP0DTRS9kU=;
	h=To:Subject:From:Message-Id:Date; b=V/tG5b5yAs74hdwBtEEHMWAMM2sxRRAaDem//WOHEAp/AnUPONS67JQOHGiq567EQ7IvHB7NwpjCSu0CndTYCtS8KSIITd7HZy/UrxqbFvS9YIf+RdOxdrlXfr1lV95Y89+OI1w5iTw7n+zyLcsQfQIj1w5qxCwk1PLMtEzU/AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXx1CU10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXx1CU10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C8DC4CEFB
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765261373;
	bh=5ropFcViq5SjgEV2PtiP6bfvpMB260DBrMP0DTRS9kU=;
	h=To:Subject:From:Date:From;
	b=sXx1CU10znXw/4O4rZwwQsnuSWoq9WXHKoH/I8GAqWwtTMZl7e/damSWqB2Q5NeZR
	 stzKsgn91+KcqXNJDuQJYgrXiJ9j81KL7Dj9JgabXKZPqOy3f2egiPzplC/RX4Du7e
	 cUgchYlGaFzZYwt/Gt8jyF8UR27QVHPtTc+8oAH2RpXrd4p1p38ksBFEQKFcXXzYbm
	 opydGHExEno4oPNMkgyoYfvfHhPrydzjNneCiLxeui5f+AgHI89DPjbMJ0fGGHPI70
	 TlhjGQkLbU+nARS7352f2LxXIaef+plP+TLx2YzbT2TV7YcTGCVuf25H/iLFkcAKCj
	 wul/vUaQm/uOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939FFD1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526137358.4407.8307847081335541848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac6b072ba097307ff7bee804d0202ee1f72e9f19bb8741609ad49c9d103a22a
Date: Tue, 09 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765261373
