Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D67633993
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760069394; cv=none; b=CLMR4jOZDBOtZ022P+LlV+W3kL8lAMhE8Qdcn7XcvIHBccyNXmFTYvJC64GrCB8anqP6n4DZsPwe9KGdIHtLC68E9uqJGvamuI0h92lUNXNhRPJMuQ72c61BFPX+4Q9sOA0b6Hk5iXTc3D9lfwrRHV53KWwui9tx1cx86FXKyQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760069394; c=relaxed/simple;
	bh=8Q+l1iLfn5YQ25wWFH3zrOit45/Hcq9YHNKFEpsreXc=;
	h=To:Subject:From:Message-Id:Date; b=Vn4h5QTWoCFljzx+Tt5fXyOsyfgzi2mlqEouJwJpjBGbysKT/obhKETiOR5nA7q7QFb6sE2cPcEQ1ykzNZYYZIqhvvBefDf3M58rwMsUhAV6wUkMiH8KIwIqDF0Wx9rtf6MR+SbJBp8bV1+zmSdac5iEjpbXF4FB5gMn4E4nEng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUGOYRoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUGOYRoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1596C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760069393;
	bh=8Q+l1iLfn5YQ25wWFH3zrOit45/Hcq9YHNKFEpsreXc=;
	h=To:Subject:From:Date:From;
	b=rUGOYRoVjZ66T5S5cm41WS+ogrIBfhuiXbWQkLeYPZnYqLgFYZ7DCtmb4Wzopg1ww
	 LMJTFu2BuNLgq0ohc4kVVw651V2/WgXExKvXAAggwRuAcjzZ4NwklgUkNjNGKYO/oA
	 e+i8WNM47rOT0sskP4/lnAcpByhBT6nxrmXcY43kUFAaSZdEQpppDOW9pe8okYgsOt
	 YVQiMKmNn+VoPW7telln1hEEmwGGgF3wluYfdpvZSV2xCkw/j6cV3nx3WNOBLbZyyd
	 Xt6n7U8+l4b+KBtWszuiq45zl4ZYwJ03q7Rph2F44ZW8pc5ZhjAY1MpNpvN224692a
	 YpQ3WZdfvYtqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB3CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006939357.20460.15340770819381349091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e761aaabfafc78d32ad4b77132577cb0dab889a0b3c3d9c8f0ee438bd3c76c
Date: Fri, 10 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760069393
