Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C16C1F5842
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754459394; cv=none; b=m8UwQqguwMg2IBuM4Cf9bFahJqiih4qopaTabyo2luuX6Iz+q9p1LyRaR1ztWRLSn286s9BE9Nt+CK5wEvv0jlULy2XkkiVTUGME/O4j5sk13/uLapp2GQvbR9/CTSoqQsfDPrukh/3FTl9ebMAAAuIU0Lmm+vj+rC97gK0Mn5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754459394; c=relaxed/simple;
	bh=XioH5VZ+NrB1B2UqnPmQT0fP3sCy7zb1/j38GnJ2F3s=;
	h=To:Subject:From:Message-Id:Date; b=Vs+90YbaFgM9f80fGOea74H1MJ9Srth1WRdpeo0DHKU7CUw/RcXPx7PYAe1Kpj2iZKdYxum+U5vfM/qXzGA7wjcqPI15kALtGkf/PXe36/VGahJAxSw3N+TWYuTdnIxtKE07A2Idrolk/9rZAp8VADg0jq2dFBcupNH7odPibJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7AwwYuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7AwwYuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C462C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754459393;
	bh=XioH5VZ+NrB1B2UqnPmQT0fP3sCy7zb1/j38GnJ2F3s=;
	h=To:Subject:From:Date:From;
	b=q7AwwYuDv9tkmMJJ5TWSWZ9xEpkq5+b/H4grf1oCFVQ/sHu5cJXyZyeFB6IGkX66u
	 0XbPhnJ0YgGD5A68RT4rv6oWr36BCJr1w9zHPww+RecuyEUh/TOn4/0Tc5csD6chiD
	 tkyX7bjXopXTMG5DR69lAl5wWURyDQDCCDAqy0HcWpmKUNVxPdHfvUQBnU69IPE5cK
	 lDt8D1BTzXPwQz5Efbnw1UM18janH+4BcFI9dCeuj5WgLd0IW4J5naZEZWuryORejb
	 Pbudf7MAgoCakZt9NciCwztKvU2r31Hjb5a10a/MirZNJaeDFb+zgBPJJsyW67Cn81
	 W+KzGor8PWpxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2EBC87FCA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445939357.2753.2043984365872599411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6c95be7c98f76524a2dc47a1485f44486349f938644521b0c2fb485562dbcf
Date: Wed, 06 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754459393
