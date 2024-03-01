Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E087B4655F
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709275097; cv=none; b=p3GC1nMBkwUZOResI2D3OcyzkYlOW2O+mvkSxWrCSru9/KSeN1EW8bW8+qE5lsrm7FOM1JPNM6TNyP38U4wzpT/QbnuZ/SPBclU6LbhEO3fNr6JfRVVRFn4sn6BJgWe9ixWV1Ph39CswE2zB7dwH4C0Z+Cgi86YOl0I3MzUrIQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709275097; c=relaxed/simple;
	bh=5Irnbig6EUpXuabKH+drBb63YjDn6PF4k14DawlScVE=;
	h=To:Subject:From:Message-Id:Date; b=DmhDYCEAThNB9p+knm8yvTIh/nXZwwzRDB8/rzvDEjRaLCFwlPQsWTnaEKMEQxXk0+NjNr0TBGkD/fhsRirmR8vIbxVRpTGdHd+ZWT8nfn/6Jvm4/rZ3lRODPDspNXyz65RCU261VGUs3vZOQY+V7AYDscim6dRzu9BazLLdJgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8vNu9lY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8vNu9lY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A6B5C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709275096;
	bh=5Irnbig6EUpXuabKH+drBb63YjDn6PF4k14DawlScVE=;
	h=To:Subject:From:Date:From;
	b=D8vNu9lYo990N2RQnF+22hFyVaYZRDcpUJBUMTgYgv6R7JjzxH7NxmrjkAdwP6TvG
	 JpEMJSMmVHfU0WdFkANuRuZcUyyWlrM0p+RTlaQXAeadN2gv1cyahDqjkIFgw8ZPpd
	 hNnmwohswvarI9DJXri+GK4pvqt8/0WdjggA8k1jVe4waXyYQnHV9tCj5J1+Pj3u9S
	 G/pXkFPaW0VlUgsxQK1NR5he684qulXqJ7SrchAwn6xSBDTCXzlab8TUolg1ukBezs
	 kO1jiEDuKO3CbWdT77Cw7rWjmBXhhnMWuTrU5ER+HEpY0zp6bO2WIMlA6F2HqBBejG
	 FbwglP5zq/Yvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C83BC5475B
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170927509637.19740.1179393417695329466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce84e83d9b4bf84771a4265b5b7d5fabe8fe3d83bf371b19d6bd8cc3cfd79cc
Date: Fri, 01 Mar 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709275096
