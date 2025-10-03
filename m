Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2431411CA9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759533594; cv=none; b=WuHZN6yN3UlhYN13pJRNZnrrre4LtsqrgNqb0fTu4jIpSkQ1tCgttRyMMBUo1dRb8CGhzIGWZGzSORoczLo3+vQINxj5UjdvkOtcH5bW2CotsV02wEOWIhKmD/WK63qmRFdUkeeel7QI3fbxHnhv6OoDUxGVJRmtdYcZBNMoUMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759533594; c=relaxed/simple;
	bh=icBPt6jSfz7v08lx2VEeEFTBUFCXBHsklpb8I90cGrI=;
	h=To:Subject:From:Message-Id:Date; b=dYUlnnKszDEsbnyY1rJucwa4jWsq8+tDyMpGQzfkP7IR5voDPkGnj+PHiP6wTUpCaF3UxA3PHU3SEHCs9ZMgyzJuMubLVwFzpNIkK8N+v7KmGjIsbVLGCNW5r0VjqEJC3BAzmCWHxsS7Q6fLW/2N5X5faPurAvfo8WfEza19BAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbfC2uPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbfC2uPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FB4C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759533593;
	bh=icBPt6jSfz7v08lx2VEeEFTBUFCXBHsklpb8I90cGrI=;
	h=To:Subject:From:Date:From;
	b=mbfC2uPW4D1LqpDCApF8/jtyQHjOY7Lld1QTKhT8Lihir8Sl1N1YeWnP2sdjAj12t
	 69AK68/KQIKNGFLSk+va0UrJ1KVG0qZpUg3sDnjohAaGX54PrtAjwPRAhox0hrJ/9U
	 ZRC56DruH+EOSi/OR/nDYEBsj9XLK2rb35bewN9P7tz/ojoj9dRjJabCRXHm4t5csR
	 h9F6kMVFr1KCTe+iuR1KOyUVmzZWc6UKuWn6ubcaSxdvwbYtuWOTdYCsC43yaE06Q7
	 BHFVWhoEB3+K217D0fMQ4ymO0Mpxsh7IHOrPji4LABKB+JseV8t2jyIyxtcsTBEFoL
	 Sj28+5qT3sbIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0276CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953359362.21057.2854000313746246574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd167ec4a4f2445a7584be18ddf2d90b0aa7a020ef38d8ba09bde9b43cc5317
Date: Fri, 03 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759533593
