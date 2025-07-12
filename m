Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32245217F3D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752307794; cv=none; b=jf7gHJ/0osuIa9xIqTLYYsC2xQnO+asjLTRKcDMqmG3oWARQpLPNORC/LeLq2250krWP8U7RGNvkE1arxP0FzcXROfyjFcKEwig+NARCadZyC+6gG3MkzXYcCiPkYJK+iQdlCeUQxAJ4CR5lKwFnJK3wYO6s5kOeNn4EKlnxPNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752307794; c=relaxed/simple;
	bh=+WunC1kO5xt6XWuoIiR/GF6vfyddLN6hFbXjFgNgNZk=;
	h=To:Subject:From:Message-Id:Date; b=VRvrM4qMaC3SEuH9GJsPEH8AMqRvu8Y+WQAadyfudTgmiFZN7s8Hz71rNVSP/ac6RnOQsoWXDgC4KYetPZodMDdc6BCkY3OZG4ejjIEJ1aGlEKVHwzSR4cspncAaG3DmQDtwNboc4tYLyTgQZ5xfSJYUdkWz6U2jQ8OEL0puPf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgXqqlHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgXqqlHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5280C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752307793;
	bh=+WunC1kO5xt6XWuoIiR/GF6vfyddLN6hFbXjFgNgNZk=;
	h=To:Subject:From:Date:From;
	b=AgXqqlHdrjodfNaTYDMeZVSBH65d2jVjtW0aT62MfuWeM3MsBvPJegVjw/0i2q2hc
	 fLo03eAF1m2dNsZomI0YmSS4Vq02szOez0YVi/z0bbdLKN4e50WWGvwGMBDCO7bXe0
	 krbBoNste5FikZlohUWdC+nkGwpyaKG45PU7O/0GVEOdm48hk/I/DDnvJPssA/vSNg
	 CzBBb+CkKqUxxX5FM3GYNEIKHA/YXqJ7p5pAqlAuXziGFe5hRbFy03qql2jwkg6lLh
	 MwsHjTzc567opFCg3Y/niSZVTtm2mdWzomqRXmDlf0iGIcA/E2l2jjjKQXxUN3IMLG
	 7/vHTFcpZbrOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A1FC83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230779357.12744.745170754243728624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 480ab41e27912ddce7fd0e1584d0c7206c6a25f88648960bba53eb9ea11b2750
Date: Sat, 12 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752307793
