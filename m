Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CDD23C50A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777612654; cv=none; b=laKYSVlDQO5kmiyv/FKo892VzY6VuPrD1Odqw9nytTCYUg8IBYMUuhQnw7eNW/wcX19oqAYiFX1T+9hEqBrD1ZEIDETgWjKZn96kyoZdy53V3PtGoOiKSDDwj1cNrWECmBPPFN675nQ9TLwMiPuieSc1dKfTg1JMBCKKw4oCHfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777612654; c=relaxed/simple;
	bh=2Q+DwnJzCw1J3PztJ0n+lBBn3tG8C7bw6N2soPMaSRE=;
	h=To:Subject:From:Message-Id:Date; b=Zhv0gvitN8X6h66fKG03YZ37kBUa/Z/OqB6h3fOsKbBAjNlEXrctE4iQrlHzFLhUbWvvVLA+DoCkrGOmxKaCm+kFqOHEe8yUWeXa4ripZMoaRsEO0UqM3HmR1lZrk1dlmBy4+qsMaC8pmpNAAe4Y41C9S5Nagv2KCd1yygRIAoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnr1zMoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnr1zMoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD40BC2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777612653;
	bh=2Q+DwnJzCw1J3PztJ0n+lBBn3tG8C7bw6N2soPMaSRE=;
	h=To:Subject:From:Date:From;
	b=fnr1zMoaLhKVYpWaO2F+4anK+cmq9L/z1BZnlFfAIVak+TiH/7tg4KdO3ByMPQyc0
	 ah0MFrdE2YGwO2OqMUkOcW+yJ36OwvrzKzDgsvixsbwhOYpoAr0StfZDuKrspYc1If
	 KCjFYVRm8/xIW3MaE0prHjjUMkJR6pb1jTpn592P7BQ0we/lnDeoOnITpGbzNFm8Wh
	 DEAx2bkI7PGysDMEaH5i2qzlvm6g2W+LYfBkISD9EGHS09ypmxzKng86pJM5QdKPvH
	 h/F74ueWGv58EtF80DfKgXneKWpwZRsLsfGKGMR9gySMxXR1t9cWcF1mqLkS8Eoq3U
	 DYxwgYI8oR1uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADE6FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761265369.27349.13699714946365805017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3eba586aea2c1774e79d30d9cb822ac12919a673a7252d0fd9b5538624652f
Date: Fri, 01 May 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777612653
