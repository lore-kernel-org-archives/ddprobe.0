Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6793D3D16
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775742995; cv=none; b=havjkhiF2QhvwyBfBl+t9I+y6LQyL7KSwXeeKIMHlOqwbMwekRxZyRqvstAiOKuUNtOu3m/OKN+Mczsd10vSSmIHsOUndLesOCWF8DBePisbjEMU6jjA5zbne/oK882/S7FdIzRJTnNkQ+FAsgRZjeliDA9pG9GyCaC4slx4cS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775742995; c=relaxed/simple;
	bh=12lJWlocfaYc8eyde78iPM1z7AxRG0sgTUhFM5UeD7w=;
	h=To:Subject:From:Message-Id:Date; b=l83o3NLmX+bhDvIxS5pl0/W9YCoxIZybbQTFCeWpWJujfbAIrpofQ0wNDY+Ko2KXO/CIv+szdkXQrNt1PMDZEMBxbX5fnavwv6jmj+ueHh3dFWfcA/2IE1DkdN2cWVHL1yEb32hZfFJGtHv+bCGMV0VgtJWSZaMJW1hNtwtIXZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwZ+xxO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwZ+xxO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4D42AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775742994;
	bh=12lJWlocfaYc8eyde78iPM1z7AxRG0sgTUhFM5UeD7w=;
	h=To:Subject:From:Date:From;
	b=iwZ+xxO+a48AmABJc93z0o4bGchSk/zLCpv45hSgcXNggV/3S6Z9luWy5ED9veFmC
	 EuhwS3nIF8fcY7TLVCaIAY0b2B68vNNAD3KgrxAMllDOgz3pNe2lM4sGgS0CCwN5q9
	 K7nP1wCjvz5VDb+HloSwxu7wy3BfNkhe5+jTAydSGXuAyZ3k08Luq5ulW9rCDLYgtF
	 XUurBimgJwcgawwVH85Aiuwd/+GIaLY3Xnj+urQEhxO/I/wJQCVSA6czzdtXMSuGWb
	 H15T5SYwwjM9iw/IG31RqDXMozhNmQGjmCZPU5t61Te1ByuJWlVu1I+giUihdXkSPS
	 EvWMRanNn7Feg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05B2AEA3C5F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:56:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574299400.9818.14116230565801939456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fbbb0d1544ff25dbfabe359faa459aaac09a3257561d9bfef3c394a1a555b2c
Date: Thu, 09 Apr 2026 13:56:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775742994
