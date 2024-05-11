Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543DD1843
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715398943; cv=none; b=oBhEQBlIytOxBvUU9LzURofEwUpeClVar4Mb0VXSIp3kaMHRsjSzDTiE2hE0Y4TOt8UgLST+Sk3dDih8h3GweT/8IVIPvw0HlRtfj5RVW54GawJK8aFxJEJL1dmMKQUKxkDs7coeFZhe+pmZCFM2Hh/EYKOe2z346BO/KnGrKvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715398943; c=relaxed/simple;
	bh=UVG9a6eTt4LvUamfV3yudzTPYzS/Y0zysLypq7OptPc=;
	h=To:Subject:From:Message-Id:Date; b=lJylT0qd7hmr8XRmOvSq2xaAiJjxLv1DBCZXypIxhDnGm9ZAU2/lCRfciavUUAZDT0C0m/apTJSICB/PYOLxsxFYdHfFgqOn8fdfwuy0+Ux8twauErFXZAxz4wZP9Z5FrgmCGeCVclneTgGJs5Snhci4WjdHhLjivYRA4wrGkzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLEWbOlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLEWbOlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC11C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715398942;
	bh=UVG9a6eTt4LvUamfV3yudzTPYzS/Y0zysLypq7OptPc=;
	h=To:Subject:From:Date:From;
	b=XLEWbOlPJtx0UsfTi3TsxW3e+kXzzERrUqFoPLlTObR7EWOBZ9Szo/OVhYTrlwol6
	 IpGTwjDSA3LMs9QWCpw3ZE+hOXYhs2uXastE284+z1LetW2K5L+ZStMzxyUlaOLtrS
	 RKR3sFycMQ7WrzI3ZG0hz40/6INpgAAP+FDqH7TChBpSP0uuMJzgmMWtoyVHaDFTgS
	 g/xbAAyoWlkOHKOUIp6k6Y2a1q5XMIrP1Nmu2hl2N5g6HYd6agNYuBfyyj3X86Tb38
	 5zdC67r1b//zT7oPquPmRonxTfxvMDVCKSqwr7jilyPrnikbVkwRPwuYtpg77lHqKl
	 ocHTlZBfU+eSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E38C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171539894277.30310.8689678565338132340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f790b32a8f5e5660faff3888e7daebf5014645d0efed8bcd8d88829ad64ba6
Date: Sat, 11 May 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715398942
