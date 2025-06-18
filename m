Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EFA2D052
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750250394; cv=none; b=A+Wk0HKRM25dx1qa9eMrlbI/NPXsuv+OaluGLDTIj8oXjQE6yMVK1H24KPpRyNRf2/RebJN29XXRlJVBzvckelpsQ4fKBZvem7vYj90jr18PATnsr4OvidLW4eYu4DvrArm0TDvx+BDBznNQAINzOqdCqZTcaqMueT0nd32th6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750250394; c=relaxed/simple;
	bh=SDKxZsgG5BmpLkLHcqTCg5D8uPHrVeyef9Xm/ZBXj5Y=;
	h=To:Subject:From:Message-Id:Date; b=eZt/cYWcensHoigSpkRvQaurirY9E2DpRumuDIkj0QsAIpUe06hXmsGmgyovkZqg6P9t1335atyXpyuMT/W07Wt5IdZGwVL+MkdRU52C3eRWmx4a/d4wAtlU/YRqHRrHlN5SAwasiklnxFGRP/k+83lhVPuMGqo3vZsNRNqCYw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyEqkoB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyEqkoB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23AAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750250393;
	bh=SDKxZsgG5BmpLkLHcqTCg5D8uPHrVeyef9Xm/ZBXj5Y=;
	h=To:Subject:From:Date:From;
	b=HyEqkoB56Zy93FlnEF/7F2K/slDuj5K+uB0dO5GebqWHEMer1uR99WVAEPDbWPiuk
	 d4G0FQhEkFjh9FIpXVJpWdNPN+ptqKpD25FRkBPXMl27WnNGJX+q4b6ygHAPm21x7k
	 4BtXNP/JYzbh0F9WkLeWz/9UZLTQ6NC7BNnHBSuk/aNzOfjvWQwVgRRTswOS61VyRM
	 rHo2fYH423/df/2LImaQ/Wx6uzJnfKqd+jzoGxsmSPEfiyDQ91G3A0IssqoSFu2Rek
	 IIJ8pJdU+zFBsTF7IuL04qYQrLIM85i2+qmCEhtZE2wMGN97IvH9nQIV/MfZwsG1Pz
	 HRt7Zwu0dUhkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90450C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025039358.24139.3261690516845486797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e209a0bbaf089d81840710f4f0eec7180dc17c41d7919ff344855b1186fa3e1
Date: Wed, 18 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750250393
