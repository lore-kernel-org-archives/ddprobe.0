Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4464CA59
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783232314; cv=none; b=cH6qe7IA3hFdWsjQWIH949RtMu4hATeDmcVxPe/87ykX6rvgrWt2S6rTBld5gtaf0nD9VPASMxtuFHjbYKdpTnnX1RaBVxKs2Y+iamcNGoBq8tNy7WkVgnmcMmf5nNMjsHR8RladCVOToDVD7YiL8HcXdLXNjZT7OcmrFqlZGSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783232314; c=relaxed/simple;
	bh=zhhrbaLRmN/c9A6TW8iYrUnPtMNI78XmjivNT5C1e/I=;
	h=To:Subject:From:Message-Id:Date; b=desU0ssQQZzawxrucathG+GZmiOOySiXsGGg/cd2ZJOHTgPWx2Imk06jrWXXKX8BuiIReqEx2bUdDfemzNuh2BaPLiHYEaZUxeF5WsqmIW5tc4RYj7320XSWbgAZXclWcmfXS8W8NEoi3p693nXN5b573kqroYbtBoYAKi919gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kxz6Auw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kxz6Auw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14D6C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783232313;
	bh=zhhrbaLRmN/c9A6TW8iYrUnPtMNI78XmjivNT5C1e/I=;
	h=To:Subject:From:Date:From;
	b=Kxz6Auw9M1hdwEllpyYCS8hTUzZt7seySKY+3YCf5KzDHHqcqACv6Xev0PJDPTya7
	 syKgnZ91VVSlJenfAnlijamCgaZgMJ7MBA5c9iX8M50j3ZS0KIrZMrJa/EAl4kIE//
	 Ba66YYZo5zw4UM0xHomkZ/4N099reaXB7Mmml8B0b/RVWcFgSet0Q/B0uoBBG7QDTa
	 LBZEf0Y2RzmTLjqOZjIADa9vtDLcdxwIYUJeAVN2lUfXosSF6Uk0sQ6j7WwSRAEygn
	 LjxARQDhnJUkg6Ep7PaSpQt2KAEVQIFZ/ZEoOyrR/U4aszqmBst1xywmOeinKGHcCE
	 gkuF+ug61CwiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1CBC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323231368.30540.2073446904160736933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17cb34e9e7cecdd724068654b16ca8d739cf880daac8ae4d2ca80d4745091578
Date: Sun, 05 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783232313
