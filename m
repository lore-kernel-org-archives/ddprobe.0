Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CD5351C10
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792249834; cv=none; b=BooXOzpOcP0ZBv059UhcaXVRzEBP8XK69cZBFtnNeZBTrBin5H8QLhRzKk47h1v5QqOeIuJUkD+iIYLu6nTP5erBmUm4UTWMdrDbjTIZ9uYDg5XidI16J8MHx6wnLxSIquDTMlL2agKIX+AbCf8+aDomBTh296pK3GWmfqC326Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792249834; c=relaxed/simple;
	bh=JDR0brMuNLA/tDugqsklYu+2eV+k87HaMbykUaG9Xcc=;
	h=To:Subject:From:Message-Id:Date; b=DOVuoaQwa8oxvfzh/TpuKuwhEbQ38HOXeheOb0VGhbCGYksgReBzagiWA8FXL+dnVRzIHcN8UPa58dnlXqVZ5f2A5YFHEKIGiIKc7fT4+u8aXRJjGBOXxohUv2rOPt/KoXzCjrpiseF0WmNu4V4tU38uMX8LhxrydloWoGLK+DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PiPOYAqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PiPOYAqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F03E6C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792249834;
	bh=JDR0brMuNLA/tDugqsklYu+2eV+k87HaMbykUaG9Xcc=;
	h=To:Subject:From:Date:From;
	b=PiPOYAqVuwCqfYdv71cZFUyAlKHasPatsEizXtcp5xZdUfjrQg9YWPLV5c2t8Zrlp
	 A9R2slib0bizuGWcOkW/iWi5dOYgy2nVLOWKASdkXuUVzpBaAJlMzbKlgM6nXF8iTe
	 4qqRqJcdiVv/ISBA82YHdFA0evjgUkbfk6lFRa6iTrcmk3DDRpTl/YOScnnYX+CLhD
	 lm7MoCgBgHTtP3HDFK7xPtWfZijexLgmEbohOq0IFQVbwOCs7huR2gUfcM40EsYl4F
	 p7/3wbsMShKQqs693q9gkBMh8ZiMt048hBykeXArG01loGwYMS0K7c1LZ+jeIAvS2F
	 385ujyoxiXFdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4082CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224983375.25459.14717477805711092809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781f2e3ba6da9d81c1f9a317b750e1464b3b968957b57f3ee067786fff3f23de
Date: Sat, 17 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792249833
