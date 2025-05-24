Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B2E7E0FF
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748121594; cv=none; b=Wj9OBA28VBEG206X6FwwTRkWX/PK6nXFLhQmM2sIzPOqNiStWNW3yvVBGkTCWY7CcAYo2D2hh9XDruViQH1jPTyenzP27pE45mKoi0O1xQjTrUDYfVfh4lMhc0/KJuXwq6fT0NwjdFXB3i2EfrTcXzRBY0ozIdDvvrMOLmJpkcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748121594; c=relaxed/simple;
	bh=gw1Wnlz+Hj9mkUx4isUVJynxdQ+cjTXFY9yUmOtYg90=;
	h=To:Subject:From:Message-Id:Date; b=Nu8VZ6gyHqT02pBF9w/pI0agdSrYEXEYq3HhW6HfUqlNzxm+cyfCh9ca/hs4UqEFN1Yyz/1m/pdbGXoRrgWyM+VmlklzSazqLnFGlIFbwRL5hxa9Vgw+YtxArojZIJcYa+e/1VBqi73XDZrVFxj+jfWkGfEpqRdaACoa4O/luXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2P8DRpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2P8DRpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A816EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748121593;
	bh=gw1Wnlz+Hj9mkUx4isUVJynxdQ+cjTXFY9yUmOtYg90=;
	h=To:Subject:From:Date:From;
	b=o2P8DRpwytoHN0RY5KN1BYLLk7OYRmjGWSSOf7O9KyaSTuIaUa/rdkLBgeLagpH1Y
	 VuEL9O7rsNmYXhponWnvDUeThQedEPxHkJ+LtW0q4KIepnbZOue28ziQv5wMajcuAk
	 V/lNV84bgHjhMNbzsAO3aZLuBw+PVVV6Ld6/bm936IEzn6n5Wqr4I4LEY6xbJ2nDPa
	 pTRZAEZAI1D5lLBGBSABkrCGLZ8aiKwfLbBU6IIGG0qOwKblp3E0HBwpO1lbTb2ib1
	 221MIg7zfNbVw+qtNI0ZYKUvxelQ38ZhKg3LqD9SI/9e1alAA0nwDNN3oOZhFLe/eA
	 FVpqwhp3NJp5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C7AC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812159358.16528.6659485450060872757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973f330c9e64253dc95e463b4fabcff97cc355764d46cd8f88f9a69eec050a21
Date: Sat, 24 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748121593
