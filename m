Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3050218595B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733307954; cv=none; b=ORgclmq5wMyu9u89lmImBnP4MpdJH7gFUzEVBvlmGpsyNq3DDkDxvskR87Vm++ASNBiSu5JCF4CcW939svkWGtjcq6vG9LB2ImPE2HZNdK2X7g3P2Olbn0L0WBOqVIMu/HTdZhD7KKWDSEIZwiC0/wkBt/oh0a5zXCq2i9uG5Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733307954; c=relaxed/simple;
	bh=3bRgDkagLR0Vgdf5CjS7qbRRLcVi+H9QAvsebQZQ3hM=;
	h=To:Subject:From:Message-Id:Date; b=qeaJVV4PxtATkoypM36rsfxbMJqWk+s4bscZblP3Gf/9slGG0Yi9L9OxPpCZPjods8JxmIkaca+uW1sheSRjGGDecgQHKRXgF/6fVdpknwAbImDdcTE26uVt+Y4bxSpuCcRi32B4n2fvSQW2DunRzbvjN3NRJ1QpbZ0yfPH3flI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6QsBR3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6QsBR3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88E9C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733307953;
	bh=3bRgDkagLR0Vgdf5CjS7qbRRLcVi+H9QAvsebQZQ3hM=;
	h=To:Subject:From:Date:From;
	b=I6QsBR3t20bgQUMJiGHyejmdKlVNIhp+nVYth6Vmn5uQEU3CwzoQfF29UsiYXb7e0
	 qO573sgA5N6Oa1WgRIqRLKv6/UiZ3aEQ3xkUPgFtgxdDjQq+9AwTORGG4h6uzhlqLp
	 u1KBIrtk4gsrN7JmMdoopOFRUtSHbZ0GKQW3rL1TK3uiNV4CnpxwrVC50dwUcRLEHJ
	 9J7yrfeKzjJ7CV7ZTc3WB4gVi/8dzkHrtLpNjkUVXpYakLoU4GIMoeMqjau8cP4I0T
	 oZ/cnQek6gFNYLPlXTKjStLPNN3LQuiY4UTVKvnnK8Vqo/XXcnwdc1jJa9pf895vG3
	 jiawJo6TDyckQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42F2E7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173330795366.22465.8736713525919376515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a840a8798174aa32d7584a13f32a2a79fcf83705528d1e69094c658666538e51
Date: Wed, 04 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733307953
