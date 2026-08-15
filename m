Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538502E888C
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786813234; cv=none; b=nT5D7M686HkmpAfPaqFXh4Fru2Ye/f7zQmXj5aA4BTm4GfDXZBFzLiVulSFbQU40rTlT3sTdI7aZsIHhUnAgmmj0YhPWhv7/7Ifz/DWc/+ykNycnrgTp1SX5vN/eu+Mu+8j8k0MaVLLgnCk9oeL5/wwlf7LrLlZ8KDnGr5/Ruyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786813234; c=relaxed/simple;
	bh=y4iX4urnmd3cN2hmI+vT8UyYUzvofTL9Rga5+zcTX2E=;
	h=To:Subject:From:Message-Id:Date; b=BBWO18v+CPt3XpG5G4Cqn78toZr8x0LWLEnLz+ldhj3vMNoqyHPW1IS/XhMVGJrxRr4JzDMz2DJG4NKm04Te8i4phMVIYKU9hu2ngLTrz3CbpV7NtFtuxAJo/6TW/Hrh74eQah7qQTfJXG75CIBoAWWUQwHP4IV2r+0oMowDRCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsT/q89D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsT/q89D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3A0C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786813233;
	bh=y4iX4urnmd3cN2hmI+vT8UyYUzvofTL9Rga5+zcTX2E=;
	h=To:Subject:From:Date:From;
	b=rsT/q89DctKGZwuwaA92TlgnPkFYVbtd05gQIRpOr1OTL4ROvox/mhlDgbYgWW+in
	 mRGlEKTIauYH5gZ+C4jEhbMpzNamqiYJz091wyaFoJOOtup2A2N9+zkDSSBamXvbbp
	 PJB8FRIczc4zs9qMSAvBARbU7KOCwKNwqmuUx0iy9FVO7LjNKah0cxTr85jrJHHsXP
	 is0tHcqhEQgE39JWdKmIwFKI1vlg4mPriqns2nembX5JH73CTtqrwcpcUfffEKSxQf
	 vgDAC7zdss0ksrC6/EZVI4ggrO/DkKmafput7acyFP4gSnHU1jUuPY5nK4H2PuHbP6
	 dTH/ib0az7ifg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A82C5CFDB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681323371.10282.8698957232760377864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2203f7f86530b0a0afed73b837266e1049505ea3df2fe2b2312e1af072e3314a
Date: Sat, 15 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786813233
