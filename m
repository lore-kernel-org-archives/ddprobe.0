Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F10F2F531B
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779612154; cv=none; b=nanrVV/MAJrDmdRmNAhPa5H6XKMYLEYHyCKsKKzYpkg+paiLuyK0R+7vWaoZzdAhPdK1pv6fRd0pbrCsEQtVzeANIwc/xt5n+PEvGQJw9ESAL5rDzcF3VJF/pyXyMz2V+TZK/u4j6pkG0C6UOOGYUgOHTvbXwxO/uDQHvcOv3tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779612154; c=relaxed/simple;
	bh=HzXEmlzKd85UE6sBGFQXt1kHSSKDUsrn+c4L0i/7Ric=;
	h=To:Subject:From:Message-Id:Date; b=uwnttrNoRh0oTQQ7w+MhgVy/EUxUiiDQfXqJEybb80AxIDmWeZUW80EtgjoOpr70xENwDnydPSb+2V2LvcxW43lZ2mdVzxBMkbLhzbROlZGmQUtIAoWAt4LCUzIfVfAky1BDjq4s/roUdx9434CeV3KZgRj2wUnB17j/XdJxtpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzDM9o1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzDM9o1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFA5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779612153;
	bh=HzXEmlzKd85UE6sBGFQXt1kHSSKDUsrn+c4L0i/7Ric=;
	h=To:Subject:From:Date:From;
	b=PzDM9o1r3MlybimqnC4twXBMjyLpMsxBFZIoPen9QnCDavx1koyrJs5uO5YbHRfAU
	 eFbUIkgCA5P1BradRlg+ssr5K2MMVuwHcepLTZqSfnpYIOA8BSY9fYHzzp/Zl0VfzO
	 R5xq9iP1l5q0gtyGLblMZdazhY+qHrI05Vg5Njfk53gQTEG4miOpBjo9vQxgqOCn0i
	 D8jOoYKA8+s8P96QoUqRNYcOBqBwaW0zEY30A/aFoT1kOU1YVHklln6V2aHjAfMv2t
	 cI8g52a8PZeCwbO8xa3iBxZnvKmE449yI2W5k87KFLUa3+On2fKqe9kBdq0sRiaVwX
	 C0MMyOsCwBf5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B084ACD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961215369.9153.15875081757652696286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2542a027faa70e99c5f85d1bb8cef827c32e4c4b411f2f076b9de0c1f9733a3f
Date: Sun, 24 May 2026 08:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779612153
