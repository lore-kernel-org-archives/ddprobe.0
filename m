Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58190149DED
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717855043; cv=none; b=V97HDGZ+bvos8WgYaAibBEeZjoKCPmm9LbjT6+JC0Dc7r479Ar/YXQ42uIyrWcs/edz5N9Uxppf5SXpstb7m3BogpqZj3jRPTy3mjqK/JFEilUd0JkotDN9fSYw9C2njAAnXodMvUEjyiZC5jd7RiiecSSEN9y91hKianuyRqF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717855043; c=relaxed/simple;
	bh=gtLajYnbyaM5+ETz3Kq44kG9WMWgtlOtON8q7l5vB5E=;
	h=To:Subject:From:Message-Id:Date; b=f+i5B+syIesusTnPxqMINYy9IPORcJmxCFj9fZil/YKXrTK3u4u6t0C3VwUKtH4hXDdDpwM21H8NCY2/iDJKAd34vzK6A5w5rdQBtyVnbetKpEtIe1fEdyU3Wh3nuoRB7QwPBQ4m18SLFBM2MUbws98LniyhN7B9Q/+P1aeEkOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEdRHgp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEdRHgp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE563C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717855042;
	bh=gtLajYnbyaM5+ETz3Kq44kG9WMWgtlOtON8q7l5vB5E=;
	h=To:Subject:From:Date:From;
	b=eEdRHgp7HymujUEFVwksm+KXMNXTa7kWkHCfNOWndzPtY7aJ61w1EzDN/yWROqeUV
	 RLdmaZnJ5HJ1t2By3q1AoZSglfVBPDxHVewUhPUiWXCT4lyuzmRauWnRiqcmQXiEOL
	 k3FiP/+6SQb/1ZMYhuV/OHCtbkuTJYv+hflsbfFAsvYyR3R+G7XZ1dObxFNT/EZC5S
	 vJ6J06dQ/WWqlx+vVpQu2acBf7nUoY9aYgBkaLsQszbhr4ucWZbiyDfxTLmWJjIHqV
	 3p9IrRrjXAWfzWc3Uca9Esi/RMm72ODzDwe65dTddXlYtKQC6fbYbod4+pmEoTn9jx
	 uhIk72FkWquSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABE9C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785504275.16326.4416757940377055974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9180608b4de86beda5fb31fa8d68b6838be8870dcae6e5ef14bf592c03dc748a
Date: Sat, 08 Jun 2024 13:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717855042
