Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4F21D6DA9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745093394; cv=none; b=rsr9GHLdEFLmtBa6dvJN1b1UiD/iDu1HEtHzfCqc4jN6yO35r9kiP8ny6W+FpoE9p4n8wvU63c6udPCW8vOcf7FHbNEiNVOt2MiQ5X6vHPt3f8e3z4MMq5VZM0YecsPDkKTqTUhBiWHvaBFK5iGDKbxLG+WHRBBKoL2jHvMK+Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745093394; c=relaxed/simple;
	bh=0DvEu/wMtQslrkbCXVmOuV3Qyl+c7EBERnuBa0m7hXs=;
	h=To:Subject:From:Message-Id:Date; b=kqdja9k5E9e5B2VOJ/eR4VhWn3Bg2TFS0sjlQoYU5BCa4kLAzsqB45KZmukZq4ta08Y6zhkpmi16beC29u9h02B3zwNB1eIRJ+dVlNnIBWAonxlP1T0zz/b8L3B9zeLXzzIg40zyu+8uZGBCw66F+mN7fZpjAMpJe7HK41fBEJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sL1aw9Uo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sL1aw9Uo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1173C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745093393;
	bh=0DvEu/wMtQslrkbCXVmOuV3Qyl+c7EBERnuBa0m7hXs=;
	h=To:Subject:From:Date:From;
	b=sL1aw9UoY+Oqjn6p1p0KVJKGbqCZYntJUT1ra19Tb8gtK3Zm4E16VvbHinU0I5tdX
	 kl+FhqxYZD08pCsEAkk+t446jPqK9LipApFfI277F0fS+wltP4yr60XtO8wUYfb8Ap
	 1drBz8XEHr591tlsWgdww3F6mjnqONV+xoIkHBmJA6RtqdYSJO4OAOaAj482/4K4P7
	 58QVT0t5zNlscd3Det/dV1regk9woawB/yd7emtGrgyZ8KKEqVEomZrvNyfHZhyiOO
	 DWM9mWcDvjRrxm9RA7V2W/rr4PD/MI/AU0UqJ4eFZd3Vr12hjp271vUOoqVFXAMMZ5
	 o9cX4I/WcU+3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4BDC369CF
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509339363.21262.17735960168424995758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40810b92ce9564ed22e5d528db30fc601c49c2ecdfca50bce93475c96b43837f
Date: Sat, 19 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745093393
