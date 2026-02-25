Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CCA27FB2E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771998294; cv=none; b=hJdWpLs6+ftrvajo5W2JSnV0uKbmFul7Qn3MKzwkTAx5MOuVyeHwRJX34iNpURC3cTYtDzGe9+M5VpOW8Vs1qZ7Y27uTO/RhOOOx4NWGdaqVoM+i1QfrGCyqkrXt3MgZY3R+JMoc2q0V9nhim/+FQbh45JnhXia6+5JJzZBeV68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771998294; c=relaxed/simple;
	bh=DYLAkvXig9MWweCdLxPZaoU8clQCizcGzZFm5P2fGNQ=;
	h=To:Subject:From:Message-Id:Date; b=c2gbekdJyAY8Ol2u/19HJ2dWOW8rex5zBo2mSHmpdKx3uNiVVa1SxB2SSDwE1Th0ViDDkqlSj69rhvdFG/2sdDfjc0HW0t82VSo2ohI2RtBpXIzA9wna4mDdaVnGxiFV1F0lfu2FqecmTYhYdXoBnkdBsxGVA/t1qidw0DJ960M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBkdQjpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBkdQjpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38BDC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771998293;
	bh=DYLAkvXig9MWweCdLxPZaoU8clQCizcGzZFm5P2fGNQ=;
	h=To:Subject:From:Date:From;
	b=KBkdQjpmS1/ol0lg5zAfbqNCeZx+hTfjgunTtIdxgQPXOddintVE4BJMB/SxHUyE0
	 2ycgjqwalkP5BiUweOQeHW2R7wrjeSlt9OYokD5clefhRfhScnKavcdFZPHtc1Epzc
	 gxbmFx6EoaYyIobStNckorSUbLb5I2H8rMJPR7w1uiMw9aiFb8Jb+7l1+/n+zT0JZy
	 SM+B2ZwCimoY80zPPn8S9UcogmSpie+VfBWaPas0/jH24R1869FBlGrdAQCfMZJjKm
	 5z0BPu77CkG3IC13O4oAMwSLO5ZLHRDNYM60HNp/GQSldKt4ToAmb1i6AJCS5GsWx2
	 l3RgfgA82v+5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CE1E9B25A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199829358.29907.6398561644930150330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a97d298f3ed11bc020bb894a3720046e7f42633d055676f84598bf78eb4c00
Date: Wed, 25 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771998293
