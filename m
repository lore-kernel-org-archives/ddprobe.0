Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292A2223C50
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734028554; cv=none; b=eCpVsorYCN7YrooGtXQUn0zya6Wohx+KYIld6rEOSM473mOgAo+ode299Q6LBa0OQhvvKpHPmzVaS2iYWnR5C6jYgjr1ZJvOlb16vwr5Ahgg4ljuU1hYpPRShD7jwllR1jZdr4+voxhINkEThuQNRSiECgVk96ITeM6cdQOCA2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734028554; c=relaxed/simple;
	bh=nGeBW/CjQxZxGNKXuJUilFIDdusTPMUckw5+CgS+Ptc=;
	h=To:Subject:From:Message-Id:Date; b=iOzVO4fvQ3Kr6SubyK9aMysFbjJjDEi4XKEfd46KGa9ANMgRDE+teeYpY/TIlIGRllybs3ACbhuqCJwFE5X4uDdGLe1ZCcXFEkGuQLy+5l11mDMh2HJZBqCcImRqdZawVR+RHtlFVkngktFHw479RoxYrtQ4TekGjE1HT6MQOAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeclCdvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeclCdvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DCFC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734028553;
	bh=nGeBW/CjQxZxGNKXuJUilFIDdusTPMUckw5+CgS+Ptc=;
	h=To:Subject:From:Date:From;
	b=eeclCdvDsrzJCfEoBeZAZuFzs0vxXsy532tgbmRssKvj8hgzP7Ei1/aJcHV6AwUw7
	 QyZWdKaHuIc2B5LALrC1w+lt7H0PJTd49QDxXZS6ZLW1NmNiEVG0dcm/WAiUrLHbnm
	 /UNLLb3xG4sBdW17QitZfbAafDKRtUg1Grdho1oMtHfI0Unwp7uXJpJibpcmx9T9R4
	 VT8xeFdgw4Lk/4knmnOGAGTaIGEKMti2ao/oBwsf/h+BNH+jFaGc767xLGPK219N0/
	 JKBog8z53ZHgI6gFhQ6yzr/UqekdXCaN5+2DjEyYy83+hUDJjsqB622xMXVZwVXJSx
	 4kPJXeqwp6iIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3EB6E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173402855365.15625.5043303600722874258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791d19e8f1dea3bd42947bba6c2294d2aa1ddb3dcebbe950c359050fb8735e77
Date: Thu, 12 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734028553
