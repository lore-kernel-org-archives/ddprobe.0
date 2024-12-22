Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B31C190678
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887154; cv=none; b=uAb9ijvdDTm7XcH5gKuxZuN1bCHMJ6u48Cf1fSJbSLpOhQm46VzEjTlf7ipPXkuY+8LxcD8bHKQonTiLg135m1FnVQ1yeN+45wV7X62hi3/iXikVlVXwJNBacKMr+jCvaqTMf/jsi5jdNCXKUu0agX3MKChsmSqtsoG68wQVcyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887154; c=relaxed/simple;
	bh=m/jmRyRhPRXDts/kV6JwO6bo8UNQv83eOnUuKg06O9A=;
	h=To:Subject:From:Message-Id:Date; b=awkFVwZ8ZyA0xsASAEJhU93W4f65/Jrozc7UT0CugHwMCBmZHObuPGsNiUH+pxXyu0RX8sIBMoNctWhIEaohPpgtyZJboOXD+M9bcEJqNhFBJVkPgYZ/LyEz0Jr4Tof27mw9NWbuHFSZ89P1ndP0fuNeQzdHP11xxjh4LYnqdnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7XJH9/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7XJH9/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6B8C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734887153;
	bh=m/jmRyRhPRXDts/kV6JwO6bo8UNQv83eOnUuKg06O9A=;
	h=To:Subject:From:Date:From;
	b=Q7XJH9/KryuHiGf1NbGXO5kbDvpVkIiLpyGTYbyVLDipcT8omVf0DlYmtHdC8T/OT
	 sVftR3m04uqhbRSlYRXO3Tu03cpKEThEv4VNTo8JIR0DaaJrv8Qq/tPZmfEN19tOBu
	 XzZ1hGrncRWZmyqoIk+z4t8UXTFZs0PZQpl3g/mJMUyXDo50XHBdu/W383CvcbBvSp
	 JPkw0zwTKYT/Dk785M59qGa3zO1fxtJxG2W/UoeOGZQgpICCAHA/aw6wJbCSb6S145
	 u7GHsey1lIJrZUv9DxbYdihuaGEB8RV5jopuOoLKWPKWOekgcSQjMmpeRTxuMPCl+7
	 FAJhkSoFbdyOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A2BE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173488715360.24584.12217222462691917627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7be4e651e882cca8e56924b090f69192bb84a62c2cbac76af11241db906b01f
Date: Sun, 22 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734887153
