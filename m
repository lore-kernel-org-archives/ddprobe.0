Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D77C319870
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755251395; cv=none; b=Tuy/nkO3qWn+aqI8SstEJBEicWkt9BIkYQJfgAp2aPSgm1j8bMxa3biLej9Z+VIPPmM4z+CaYCez0vCy2UCFy+FjrAedscurkOgamLIKx+ua6WW+uQ3f6XmOvLGhzMCcEQ0AskI8Y8xa6kM8EBfFg+4saZx6rYfQBr50Rbksqoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755251395; c=relaxed/simple;
	bh=JJlu2j08uZJnpk77ax5glolcH9QSOtygZ21JYMh++gs=;
	h=To:Subject:From:Message-Id:Date; b=CRcG9MyhzU5oU4GjHU+bFt0YIwxOLZfOp6LEvI53XjrW00UtGWFX3zeymYn6x85wFr2uD4rg0epH4zXenYbOa9W0TzsLc5XVJHl8EkpkR6/AVUB/Z1vEElFUaSWVvwlrk41mj4lIcgkM8F1c9J3VNw2hm549H9K5+DbejYGz9RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahbzNaor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahbzNaor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755251393;
	bh=JJlu2j08uZJnpk77ax5glolcH9QSOtygZ21JYMh++gs=;
	h=To:Subject:From:Date:From;
	b=ahbzNaorONAoTv2ouMVbFjFSKnXVcWu5q6u8ggoJb1N/sYF+JGRg/zUcndjDeb6BC
	 9AqzlIIVJbknxbxrCz6Vpdh5JnH38AXQIEckF5zA7TNZgjAEK9b48iWqILlGa/X8L4
	 lCqaHD/7sys7c+uHwmSRqGwqLV4EQtk2UUpreNjGx1dOwuFckBVssMXe6rzurTtpny
	 XKq8FBkw48wtsViJoa5GFzUx4AF2XZwt2BXEYsQIgPQ7BA4NYahhBHOGqsE/cXbXut
	 I7td9gM1IZkaSeZvEUeRZ02+NunHVRU6jWMxxJ5Z7q7lX3Iu0sqmSfLdez6fYspBBW
	 eJm/HKBDT8JkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948ACCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525139358.6633.500436624404826669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023abdece40f67a293be89d957c8d236b19fa7ab6ae795a3af4d5c0784100e05
Date: Fri, 15 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755251393
