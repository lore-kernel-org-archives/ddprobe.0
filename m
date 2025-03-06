Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F7D205AC0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 22:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741299534; cv=none; b=ITC1hpkYCfr6qFyKaOhTfsopzqkmkoGzJoixRnuX2wLsQVeqvdAuaaDW1l6SJ3JqNluACCtV0wsdWt6pYS21Xm3z8ef3bCuR3KmLqc5PUR0EPurhNqJKIxzEbB3keMhqHd2fJQPTR6t3I8gHcWSs7NtBU7cJ/YffKwX2ncVYHGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741299534; c=relaxed/simple;
	bh=2MnU4k8MAzVg4+Xx4KwlPShdq25xNwXfofHeHUh/Kgk=;
	h=To:Subject:From:Message-Id:Date; b=VpiQI/jmsdA18vSxxqX3LAg7AKpnIO5x3g7AUe1BHgCMm0wV4Y5kjuBJxk1J7imgMmsfXx29A7axCDVYEO5Do+icWTr6V13vwrJ0X5jd7UjevQ0WWl3HZPeRWvn7dKZjCNm88582aR3ntZ8+fkIwdBP72k5AbxhJnkZbUwBxUIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5X/u3Hs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5X/u3Hs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DF6C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741299533;
	bh=2MnU4k8MAzVg4+Xx4KwlPShdq25xNwXfofHeHUh/Kgk=;
	h=To:Subject:From:Date:From;
	b=a5X/u3HsHYi8OGbCeeBZp5yeE1G+ADJjYPjTfA6qnzGBy7qOqwQNGlRGa0PTU2Q4B
	 d7l70x5/HWj9zdVzn9Qjm6KR3ad1PVmumHFsXI+hwa4x7OK7iP4lMdShEv1e1mJu3A
	 vwNvW4iXEY7kpAwwEdVulczfALIFXC0kk/oNM/tQ9i03ZCtOmKoLVsRR/wxaTMEsb7
	 m/784Wq8zx7CQrMjiEbGrKfm9JD/vYBn6bEWSMEiCH5dWC28suNZNIkUl5ULBCy//O
	 XQANMpKXdV0rL+3MkAB2saEE9xgeSaxaODq/y/gASFflQLq134jjc7Q0UEhsAQ/PS3
	 5UR1YvPXsYnYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BC6C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 22:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174129953360.2377.3746568798674003409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a201fe30cb4c724cbfc6c9f1769eb90d0663b8d3e430198b3bc8fcef3a9dfac0
Date: Thu, 06 Mar 2025 22:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741299533
