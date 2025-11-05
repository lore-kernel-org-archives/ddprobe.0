Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F96C314B8E
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762354194; cv=none; b=heaIdUTMEnXzIbelZP11ViFAPK0TgGDC7SKs37ner448f5+TYTe/SlXND4JWeBcSSJoyNtNrBy4fij5h7nEKPBImYe0GIkyIMQgTsRzle0DWYurY/O5o/bDlAaEsCHpVItW7wd7mCTYCmZy2X/4URvj85gtqVnd8rESmGFshw5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762354194; c=relaxed/simple;
	bh=sErizjHzvTRk6V3dVBVdRHz972f+D9mR2XfLnPbC/1o=;
	h=To:Subject:From:Message-Id:Date; b=D+n30YD2FeUJwtv6m2SlavQLMcV8BOGuv7Ysgbr+NMhPIUCFKThbI2Mm06voiA+5S2U4DFyQBxkzgXCIg4um5sFmuqMmdk3au2ei72lvHcrD2ozZX6HMkas+PxVI1xYzwZN8fPv7uckZonqITRuzTquqD/W0u6vsWsFsLJfgU/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3v33Uu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3v33Uu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C35FC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762354193;
	bh=sErizjHzvTRk6V3dVBVdRHz972f+D9mR2XfLnPbC/1o=;
	h=To:Subject:From:Date:From;
	b=K3v33Uu0ynZZrLNMK3ilMR8uqMBwo7tBQWzpXfNtE03TNfG9zT4Xm+e4n4uK8096t
	 +OZc/bEvXSQd4PJNDZRlFTbM9z8Zd+8Eru6lS45x0ew74rggx2w09GucRk4LcQDDA9
	 wILSi8gxVIXCz6oRplenHViF8yiOwtr+iLRgO5i7MzwjAvtHXSHOhWrjOKNiV8Ik5G
	 ksJhVFDre7rjmYyZ7d2W6FHNYGiN8eCV+39/FpPZ/zkhjyi4aIMGJJ0M+vN4Af/Q5B
	 3JtRLtTlCdR1Qp5btWnTUzpFTCDogG61iglAaytvHbKeB0CuvjeLCAnwAJad6xacUA
	 sK5InGHtnmMAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F088CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235419357.11380.11079557851264460513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3dd8fb2cbe71e60bcf8c7e158a55ee644c0c8b32add71008523143c8aeb5ec7
Date: Wed, 05 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762354193
