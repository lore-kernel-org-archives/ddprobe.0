Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45977BE46
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741226335; cv=none; b=VH9ah3Cm37jl8CUloIw0Jm5ULJLRxAWtyu3odLMTqKaHqqPj5C7Hahhnh4AoVCyn0hd4VZ/nkPfCMSyTLzGjoOh74cvPp8ifAr3+CTHCcvTTmC78ou00w0TfBiU7qhPMTwoKq3if8N7jETXquWbA2cQJgsCpNfm1Dve4nyKEFRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741226335; c=relaxed/simple;
	bh=45WMYJt8Kvb1S+GN7AAr321uyTk5ytUY01JFtF6T4L4=;
	h=To:Subject:From:Message-Id:Date; b=GjXvXu7N4y4uDmoFoTjmsRVpSs8jcMAz5HmVRNyhyATyNizqCl4aEpqy4WJIDz3Uyat9co1XsY5a3HsKMPwYTFJJD8G6EQocE+YnGser32xDHcuYHHIy4H9OUNbCKFM0ViMLpMyGXNPI8V9wH8ZSrpVA28NKDXlNOkkfhiJYqYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDOuVoOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDOuVoOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD81C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741226333;
	bh=45WMYJt8Kvb1S+GN7AAr321uyTk5ytUY01JFtF6T4L4=;
	h=To:Subject:From:Date:From;
	b=kDOuVoOiVR+G3yAipycTpu1Zug3KPfbozjfiE4wcYD9jR5dJxyV4hNJKrK1Zf2gdI
	 vHO9deZZxeqnsGYKiOV4O8I5a1Wh0vYbx+PjyToORO7qzDmXzpNRGVbPjk3dBGjd13
	 rPC1CHOurhyQttwybOx7Y2PBZUWEqZX4gfFj/meStf5Bp/Cy+Rhmsnl4rmFauyCjcA
	 gfJqTgaEKRGA0FdX9PkptKdEhyUBMk0aROczF5SFb5a+PENoxaPAwxbwChG1I30ZU/
	 cGF6shZDjSpUpYU8ezv4ju0woYq8mFVIsDzU0JYmz1+3ZrUXnwt/2v8Wp2ZEENUF6Q
	 4b4wCVtvOVLhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957AEC19F32
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 01:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174122633360.12818.1003310579497000919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b58aadcd0830fa9979ddb663ca3787c1308249764265f68a5128bad0806563
Date: Thu, 06 Mar 2025 01:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741226333
