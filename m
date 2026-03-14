Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4DF41754
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773482694; cv=none; b=XVPMgLjiBol+r/BskNsXDMuZtQbFZ+vIvb5m5VZF/v38Vk133P2di2XQ2vKTyC1BCFlQmd1nd/U41vkTNG829YCOdeEoTVMFFhmI5Zj22+OuJks0MTNhTwmbofy1EumWpnRIRd9z6mF61eTyoUCAgq0YsIxMTVsQ1lWA4q7iizg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773482694; c=relaxed/simple;
	bh=UWVBzr3twQ/kTn+xY+4daJ+fGFgf1AHB9x0HhgXsfJw=;
	h=To:Subject:From:Message-Id:Date; b=mS1MsEbgcDC2Z+OB65HAeDtL6ezHFxO201Xb6zwsDKG4ApupFciVkaHxmAcUzNlqb6ZiKYuSdb+9Gpd85yXEYxUNUq0foXrWX8iH48LbOnzfgWU5TIQTdem/5ktAbN/VGpzuM0OpZkitnQwNtvBwqVX+E5w61DrmbB4Zl43Gmpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjKQvkGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjKQvkGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2FBC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773482693;
	bh=UWVBzr3twQ/kTn+xY+4daJ+fGFgf1AHB9x0HhgXsfJw=;
	h=To:Subject:From:Date:From;
	b=BjKQvkGLiwXumc1F/Aq/NLpJ5jIuiuM3GJUkt+04Z+xFfl03EiBqfCdDXxWQEY1Zr
	 sN6QIOjKbjJNdR3sPAg11F6BZ0TS2jMlau3y76xO5sujnnsXeO3EN9AKZr9diVGtKk
	 fAPkboNsio05tzkmas55pKmuE2kf0w+aLiPD7xBTJAkAhs/lfcT9ZCqNDHLMkODN32
	 HxIEndn4ufl8Ux2FLUhwvVPEQtQFWpt3Ix4fea9qBL4PssXhTPOOkZVPNix2ZoQQXA
	 hmxurs7Ug79EU4OvOMB7CigAdahr/5P6lB+ZvlX23KDp3daoo5Zfw4jJJVfJwEdrQk
	 ZckybCcjzuzVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986F010706C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348269359.19676.17368360064656340466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a460e813d606663e2d5127c48acaaed269ded1a15141d95793c939d60e2be97a
Date: Sat, 14 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773482693
