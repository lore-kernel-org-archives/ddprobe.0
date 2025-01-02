Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09641193407
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735811155; cv=none; b=pbRUqROiW1GBMyb/2d8WU8jQUTFLfqZcgiG921qFPsTcPTYBtfb1yvAQv6LmTGBZiSDVKBEJi8/VO5h0xd+KdJSsg4BpQBM7FU4i2OyFb1R53dsxz7dFYVA0Q1l5HBJ6Jckeloj/NOoN6jvx1v6+zU2RtkjsMwGEANVkLDeKthM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735811155; c=relaxed/simple;
	bh=UFwXF+cQ9GyconqKWZIo9z1VZ4gOQg/84mXJpJMC1iQ=;
	h=To:Subject:From:Message-Id:Date; b=mvaoDTOxg2CEubIA8Y+dSG6M6iDXf6wbrhSIhAam7xTsi5kRB8iBMFhEHH3SuVF5Lcx6rsKs3gdGhmUfichDOXhwKISdmu03gVFvDNgpL67SHhPGDztRMbZnli8AuQ+n+jEsk4v+ILA2dKmYQFK7DAgmTS1JUTyupBqABlWDCTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mq3FamtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mq3FamtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA51C4CED6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735811153;
	bh=UFwXF+cQ9GyconqKWZIo9z1VZ4gOQg/84mXJpJMC1iQ=;
	h=To:Subject:From:Date:From;
	b=mq3FamtHFOwUBFdRAE50cTPMKsWGvT8FsaNKuXgtF+sCmuqOd72ZYwvgcjUx+8EGG
	 tj+JRZ9ngVSE4upEufxRabZzRHV2QQviX5Wm6EyqXcNUVWUw8eVV+ex3fy5RpP617W
	 MuA6s+3uOMevkBw6bsGpqNhln/hDD/ylhnRssBu2ElFs+LJq1k12fIgmrejALgRzFk
	 471C8hEHtzxYhbZV66/ImJCcx9evFMTlgc3HLirvEwYGU+/matvpbURdoPHNItsVJ9
	 tbKzBu1LL46JDwXK7vc5fwkNRfySF8VyCyjdxiHxjquSwm3/VB+vH4e6AFXb2UPQ5y
	 Hye2hEMSTScAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C92E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581115358.9320.6335215216862417137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd0c6f3c232ed7b56ae0f8ccba900aa58324e9f7f47713b37e89e392f070576
Date: Thu, 02 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735811153
