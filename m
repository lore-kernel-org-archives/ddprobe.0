Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936A328695
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764987774; cv=none; b=CmQjEBeBJckXzaUR3v2UeR/249nC/xk01J+AU3WPbdBWwKFLPsXf+my82qCRS5eungNU/ktWS25k4LNqf3soWYN0p4ztmbiIjNZ/idqFw3Ij5eDEsEz/VDXSsan9VDa1kljIdIy8Aj7pHl7pswoK9BxTmMEqHVAu4m7t1qUdDfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764987774; c=relaxed/simple;
	bh=sPgHvXnJBrGhGAsUAnRj9O0gvoc9pNu2eBRHcrmQKCo=;
	h=To:Subject:From:Message-Id:Date; b=sRxuc0lIhidDkKIyqeSIYtYT41fTF3B/YDZQFIpZ8VO9vsHWUFy1OMObIqnb8zg7lWoCo2wKCbqvdDFBZAoFelljksAoyeM84hDbm3gKgc3gfqmTTyIBD10URh98oHVeWamHZtK8DKrpzfchAwXkT3v5ZWORS+g2nA78C9oIK/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQ3cRTLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQ3cRTLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE82C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764987773;
	bh=sPgHvXnJBrGhGAsUAnRj9O0gvoc9pNu2eBRHcrmQKCo=;
	h=To:Subject:From:Date:From;
	b=aQ3cRTLq19kkBWhWkkdYQwi70Qdj98frQsjTyUKaPPBwTJYW2A0oqm+Gp0YAiooOZ
	 b3ISpKK8nBRv9RfNCbcR7duL2fD9dmJUDbY+sjfXJagzzRAnQ1jvbyfT+YZlZp6Xlj
	 sWUooWmwO308DwygcwDviZTanOkjr8lFnefhkO5TBglMWMw9tHHw/lsBPKcc7eyLn6
	 3pOzNmmYpdl7as03yp+vZRYMIcMrnGgKkFWQlwnfpi0wx0NXQfvmFe1Ivnl5rWXwm8
	 lq+VFkM0+1WTAmGNBJWm0iUzE39kv+wwpWOVAeHyXc8FNgdr5AlCJikl5G2jv8PAQX
	 IhXZH64soW2Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D72D3ABE0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498777359.20084.2931239084623934281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc70a3d281a7a247f25d4d8160d0f6f4ee7a1bcbfc002073eb7503174d22733
Date: Sat, 06 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764987773
