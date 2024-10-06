Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355AB175D48
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728214554; cv=none; b=PFjOfWuQrdjjGJI6wMISjNVHtGpwqp4v0bMVEchUyv87EPUNjSi7PbwX/ef7WEXDk9aEapNSYerKCFC4UgVeTZBsJkufc8eSzliHJsfp0TzlkhI6a0shOWB/v3u9E0vMmXzGjYkE+5TpwwniMoEjmX0LztFAnIlAl8yDZ42+k/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728214554; c=relaxed/simple;
	bh=sc61paOb0RXfsMxngMvEi/uNoK2mThK/LhL6hvvuFyI=;
	h=To:Subject:From:Message-Id:Date; b=YsBIb/kLGkazvwopI1Ksmjg9kPqdI3Y0kT4MSMelkL+329A+1arpsj+C1eyPNE87V7apt4zalROYZQ9YZoMaXaOVqm2Ly4Y7Cd2ytet+fF8D/EFzEu3TI43MAwd/8yT/pLHoTOyrchr5PtJCz8PlmK95u7ICX4V5zayFAy48ixE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAbgQbjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAbgQbjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F97C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728214553;
	bh=sc61paOb0RXfsMxngMvEi/uNoK2mThK/LhL6hvvuFyI=;
	h=To:Subject:From:Date:From;
	b=fAbgQbjfSmgnKCcfXCBWk/JaP/EK/hhqmP2X4HUo/647vAcm0YyI5E9TIUVBHgNfz
	 1O86y0APvW+7KCrc+4A8SjauPxpn0+9N53OH2CcDUl5rI7P4PK8+IwNnadWnd6YbxA
	 FWaKqw1HIk+i5cFTlyn/UrIujZ7+udcXB3tuc96KCxeBKoC+SYJHqab30NUKGu57tW
	 RbFJ3bJIB1WARR3bhuBkD3jliyo6QU9X5cHIkD9AxGnYZ3XrUISxDLetZVAcPWOUKM
	 5rr7DJsA0TGtaSUSAL/sUy+1PU8yQtKdUyF82AXTA1e7dgPpKyRPuYbY/BOPMzrxiT
	 86BmmlvUh+4nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9756CCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821455358.20131.6646209066992095921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879d227e0b556fdf1b718d915afdbba8484263928c5a8c78f6abb6a6548db59f
Date: Sun, 06 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728214553
