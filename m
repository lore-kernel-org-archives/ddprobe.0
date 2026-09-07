Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D22F384CD6
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788801034; cv=none; b=PaThvC0A7IaIYStNpBi6tzAYbKHOm7CZtB7DOv1OMOXA8rpJTzPWcatP4jlPiERVW0k+Ta50jQmq1JAu1NJNx1nUpA1NCzlXudptP8ReV6poaGO9qRysPi5vSwGsXn2EOyrEWBaFhItTBvs34r9eU7smszuLJ5vfTVDGXMhbfF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788801034; c=relaxed/simple;
	bh=17SrT81F4LVGzbFLC9QX84JKgv6h0k2I/KLa1FPWBv0=;
	h=To:Subject:From:Message-Id:Date; b=cpipx2teVQab+/VGh5SfC0XZ/j1RvhP3Z2B+kUsHe1GORKmylhnX8/mutRkXdA71WsXTAAnAQBZ2b+ZcVrwsp/FcdXXmfje4DaKPzdcq4cWjTQ58/FeklId7Zy1ivRdEzrtqMOuTC+kHZyp5C28dFXsUnVtGB6j7AB+5x0XGGYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUDa+i3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUDa+i3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7901C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788801033;
	bh=17SrT81F4LVGzbFLC9QX84JKgv6h0k2I/KLa1FPWBv0=;
	h=To:Subject:From:Date:From;
	b=VUDa+i3wk4qqOE0DA9JOc+YgOpgN/c3yUKKiiP95/Ore9+yJTayhL/uzZ7yz0GxO8
	 WrjDxf6m97NwE7pBDVkMcHLdtXmoOz2diepSng+HpPh1gICArONZPxoJt2q+zjYOAQ
	 +8ZNfyAzn29X44090ewN3cfyHeSnGtoFGaXrOas3/P1GgzElSjuPeUAbjBd8e1V20S
	 u65viTSUTcCbvI0W5j6bEI/OJ5qUPeYLCtP3tefZVbHYh9YVnhcNPMS8PxxJUM4yUO
	 b5Q0iIbyXnwAB+LD+iHtq3Lr06tkpYWhnayfKD4QIDSAaxTVmqzkr2JQ2MCor4E7MR
	 jf5Be5hsY5hhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FAAC79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880103374.31222.3480642446731919850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51735b7cc6f4cc5cf7a6c727e25fbba6c050fde08ce72c07da94eaf7b8544f06
Date: Mon, 07 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788801033
