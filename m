Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E9C143878
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 05:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717046663; cv=none; b=grhiqP2g2KSV6qSvcuwJ+I1WttdQRWz3VI30CvawS9S/0XW4WDOyNjCkwa5C3KwC7QKgCf0h/02CCXdiND/1ibt+KUpdD05aR2moOxChYMbXZFzKmds49EFbDEhTKpYSLoUEnV/sDz/lujCMW6nszQyBcC/w/j99u/gn+a1ZfpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717046663; c=relaxed/simple;
	bh=dHB4QDezPCJmpoQVpBPJQf/y6be/pmktPhtG8AHDy0w=;
	h=To:Subject:From:Message-Id:Date; b=VMOqBlanNXLTQ/Gt40e9ULXHt5x8kKH9UhLgcFmPOy4HQbLiMJVIMWAUhFzoNN6NYARkUHzcWhzizoGIxEl23qjDWRIAyTngF+fmno1vkefg3K1TZCa/mKKSCwFmPYaw9cRQ+CDNbO4r6vM9Jfd/xH1wzFDTGnJL/lP0Ukjveo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdOK3gFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdOK3gFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FE2C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 05:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717046662;
	bh=dHB4QDezPCJmpoQVpBPJQf/y6be/pmktPhtG8AHDy0w=;
	h=To:Subject:From:Date:From;
	b=IdOK3gFQgc8ABIuh+geV+gv04w1+RmTKw8eMpZnaJnCK4w28mZ17rAZJ++LreJRal
	 p6oHqwC5Et/d8jmw6GP7YHyVWpMgO1dheySspvV2i4zuwvdr2AP8aFIlrwF6+swkEd
	 r2kzpb0fKhmZMc5uzGuvfupDnxvUeVIei89YFSej42zGgNX5fqdvbsVJcPuXVFswxk
	 Mt4qwIUoSYrYD70bjXiib1IAjK8duqRwpgHvP4HZ3UjwzIjzG8NP1ZA6FFiOhUgPeI
	 0fI/PFdDQugwk0wLEjh/E3NYWV11mHiEfaVzKoo7zArSKJlNPSpxCmUeCI3K50u5Az
	 GQ63kSHp524xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1828C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 05:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171704666281.2732.5833017688670477756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5cb9d5392afa87adec493a09e2260910a01a1221b27c2e1cbeb626f1f8d38fa
Date: Thu, 30 May 2024 05:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717046662
