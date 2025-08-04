Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168DA1DD9AC
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754315994; cv=none; b=eeOS6lthDelReN/DU51KMbUpR9VkomCsUf7fNQr8RB8ZAObyWcw6488Q5qGqh209HVcW2UYl+nEt2V6f2u01VfJJZGZUCAQVt9wBBURXdG9UrW0sUStmmAizzoo860UzwkBdI3rZlXiYm4KQlSWe1XQz+s1sXmriLSED5fR+vgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754315994; c=relaxed/simple;
	bh=E0Rvdz+jwK3Im4C+H3nacGLiqabCZORZ6iII/lmHSxk=;
	h=To:Subject:From:Message-Id:Date; b=EqPiRve0XiN1pefYEC0lCge1kpPHzcEBgWYICrHy9PN3sF5LTWqxBCrIZRzj8Zilb4sbUBr07paDzFhgpknVSfhhM2r4mVwRVcIVmg2kTeXaYJzbimzfbM2UuSzhfpwRT00kcghMvhCf55yh11tQ/o0wQLP5GstGkHqLFgrxRis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=db1fU1KY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="db1fU1KY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E8EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754315993;
	bh=E0Rvdz+jwK3Im4C+H3nacGLiqabCZORZ6iII/lmHSxk=;
	h=To:Subject:From:Date:From;
	b=db1fU1KYVxzTiEZipPj5eaI4c27VhTZ//wdXXg/WdOYU1y0hZkJwLwjmvziHtMFv0
	 oZn4x2gRyBraFTqOl4pvgdjt2s8fIBlO0FH4amJ7UT7LRZjN0u4dKaLp4NCWS3sCXy
	 t8BLHIcB1M0c0405/DNYW3ODWDu01O46ASgGlasuihRN0HzfZlUwOpGHRNZ83e0PpK
	 nt+rh8xMVo6IZXV7xc8F8LHpZ6R/TTmMF8peEuTfvtCfg3otjvVPWrp2UUWRb5BuLC
	 7OMz2tL0EH73WEXaRbE02p7nhL+Cq6/UkMJiHFImUbqVhtn+5MIP1Urm4657ex0Zr0
	 N9RvZujcyJxhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932A2C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431599359.7337.17416002943857099553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab3db40b7449e69a99d6966f6d945f1b99c2057ababa96cf05c71de8a93b7e1a
Date: Mon, 04 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754315993
