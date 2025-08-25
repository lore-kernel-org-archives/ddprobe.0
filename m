Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475322737FC
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756108194; cv=none; b=Wp2GF8yyquFbvh2A7lem+z6Kxhuh01RdDgGeRmM0aYd80RNS9UU+kut4AWO5ROpFXMYe6SQPA4agw8lWijy6Xh9fH6iyAyoR+22sDVzsZtxeq+QEmBE2aNg3eU4HBhLpgdjvve7iijSmyb20xUekYfyHPb7p0QtfByWhGvx/Rxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756108194; c=relaxed/simple;
	bh=ndDrzc3em68F+5BZYtx3KwidNlm/IZ6HfXCHEJX4qc8=;
	h=To:Subject:From:Message-Id:Date; b=NZPguhirscAdaprepgJlF7v0NZyVsrVFqhxwHBEgiipzzYwpC4uYbgOpVGnRH1/9xTGPrIOH+aeRwcn7skHIUvLSyZUFUfR8+nN1QRCCaxgJ1+CTNh8f8O9F5/5d5YmLKlXolXCsAz+sIjzO8td+ZOMdHrO7aBMVKbK7TJaPDFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skwVxxgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skwVxxgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D945C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756108193;
	bh=ndDrzc3em68F+5BZYtx3KwidNlm/IZ6HfXCHEJX4qc8=;
	h=To:Subject:From:Date:From;
	b=skwVxxgYW5U0VPzeJrtXkRbcCo0VjW2tn5CBQZj6uIJUKMV6EDVfkQ06DkNOWgQPO
	 URhK+dsOc/YVYecMxwDbPh+v+WhKjiW7QSXHpt/xI6Bu+X/PUbD7hy6+lMrBw5n8Z9
	 ulaoMMcmigPBLrkWGkaGsAC4wKfvxKFRIn/mg4ptQC9XOY+fZWb2ANij+adjmAQ4qK
	 uGbh80fSBkIwNUHKsjz9s2hUcReS7YTEjxzzZeapAWp1lCDL7o1QflfVHazquhTfC0
	 Y+qchlu2Drfdp88ApvNgBnF15MpvmybBTOApm1Xb0UitiUukeYs4aSCeHgR1sBd5xN
	 uH1DdPdtzqReA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F390CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610819357.19335.700661027646951592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f0d825b0c042a235ab468562fe95ca969793da5445c88d26d9ac0d86f60fb9
Date: Mon, 25 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756108193
