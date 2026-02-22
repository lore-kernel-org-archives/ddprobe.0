Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDC135BDBC
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771793094; cv=none; b=BZLD1GuH0Ft8JYyrfwUQ2ON9btYM+1cGAkK/ixvZeP4mT08TO4+o89h3FEBO/aOkhZw5f9UZ65HBnrfaX+QQJQ9zLDkQ9yTtk7xUbaekglYU5ajxroi9wHiYMqt2bqFcb578sp0LHVNefVcuk4m8k8UF7MiFj1cuhO6j9WVtURY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771793094; c=relaxed/simple;
	bh=nz9SrhmnVJ1lthFnM3jEej70Gd1ZnRwypXEkCNnWdok=;
	h=To:Subject:From:Message-Id:Date; b=XO9FUbut/HBMvqzgleqcivQZneFM4PpzkmQMvx2KyGzoNd5Qpu19stKBJJuEB/QRD1IZUHr/RrtrZg/QsMF4yGeswWR4wMeqEOPjSoLlUyWscDjBsNnWwNREonxEnzCTDdhwIHMxKoxw575ak1VRxRjhL3XToLcP9TCkJrjyJjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEm8ATwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEm8ATwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1278C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771793093;
	bh=nz9SrhmnVJ1lthFnM3jEej70Gd1ZnRwypXEkCNnWdok=;
	h=To:Subject:From:Date:From;
	b=uEm8ATwQm/0/FWoPmYnmUM6fWjeGXIwocmJP54CYivm9nM9ZiP8mU7nLcXIx/HW73
	 CO7B9xJbstErLGa/Zim9T6HRAIyjF8Y2AxaHSg5f/XxhRBfGcHxGkZA9f9Jp1lHmUs
	 eZnUalvbh1v1I6ib31XtWJtenhCvpQnleIxUt4QdMZl7T8FWyrIbWzbeN3CO5uZM2q
	 zYWjFto6QXqzrIs4fUeZOBsM6HjnfeXr6QLYJODeNZtm6lfnv/UcfYkrEO0/2XUpHl
	 vVt/cOZQFmpcVRaR23vKin3gYG879yXrNSDr6VEqiVCDHzxFULteX+uTrlgRWIVsAu
	 v9O2Sx72PNbYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B62C636B6
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179309358.13105.13177661220862408119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8c9c019c6d81f3e1f083416a1fc46f2c5afc1d949fc39c5f4b08ae9edbff25
Date: Sun, 22 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771793093
