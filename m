Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BFC272E45
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763632314; cv=none; b=I7xwY9jy241q0obm+VYmOLpRsHptjGz61LuJ4A68aZre/OHL2lB+hYqjC4STET2nlMRRbAv1D45twTMbtI8W2JkGG1W94tdnbNzaKYN6q+72PzkBvysopInWH3QBrJR49mLlgUTOs40C7EIIrAYU19TFYPw0OE5ZpZ5G4EOYSfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763632314; c=relaxed/simple;
	bh=3IHYtv2aUVQB8TkH1+EMNYGujnhu3UduWicS/MxL/TI=;
	h=To:Subject:From:Message-Id:Date; b=KsoB4RqYWLUKZcaTIfhOvba1phoPoBgsp+44nnY6r3Zrtbt0sGxe+cas49j9pV1ovzTCzGAqcOL6Ggf8j2icGBdLzNfemi5jvM5LptKlMv9hmpRCNqk8VIItYh/6xMSNgBHZxwdFXb114FLHOy1gJ+rcDNGMKLnktz6HZw9ixkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbFa2MC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbFa2MC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D2FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763632313;
	bh=3IHYtv2aUVQB8TkH1+EMNYGujnhu3UduWicS/MxL/TI=;
	h=To:Subject:From:Date:From;
	b=lbFa2MC84yfdGKyebX5HKAHb/C10b1GF0/TzVpGGn4ySogdyteHoOtDcKQR8TAnA7
	 Pgc/AEj/YfbzLhJ/1HUKHRBrooQINo3gAa3HMEtm3hDKh0SYq7A5cF9HDcoF6iw2g5
	 87DVQeOKvGINQ29DDRKtAROb7/SbzJDqgg2MFDCLgqQ4IhvVvNOwUEGyhYgcs6NMSq
	 M9iZtKlJ9ADALc6XJ9SvjsNQBuhSeHoJpZQufhhgiVBf6xhhyoUc/1+LmAnOHsOafg
	 yqIPzEbN5NW0kxFNbgBxsSm1eqQZcgWtwBvdB9dBotghUcRcr3dHpO9iQMHzeIvK3m
	 HTvTTceg/YWvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E45CF857C
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363231359.13714.3982794122218321512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7962e6436b39369f5cd4612678d89d9bff95955d543e00dd1b945fed784b5ef8
Date: Thu, 20 Nov 2025 09:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763632313
