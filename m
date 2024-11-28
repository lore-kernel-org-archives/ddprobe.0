Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC571C2334
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732827354; cv=none; b=vGOrtj4Oger504m5YI+FqiR/Kc9PWzxm2Xz0cQe4VlmdC/K+xH2sFxNDQzRjMnZrmj9612l65bwOT5HNBeRIkEXT0TkSj0MXeGs/s4s0sLQ/8x5S3bQhe49yvjg6NLG+MCq0pAlyZivSP/OUzARFvuqBbhwf140DAvgZQhLWyzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732827354; c=relaxed/simple;
	bh=XgX6z6EjSGEO+GOEx7WbuoBL2qvjRQqvInFgmvAlqes=;
	h=To:Subject:From:Message-Id:Date; b=mxKsBFF1BH1U8efLFCM1y1UfWouUC8YYPOiDkE8SGCakEh9qIHz8bjSYJxAanFeptQC9IKy3P3C5R0DnQKFru2mvEQu/zTeSkmrgiI28Bmic1Hdq71uU3gA1793NUJT/lCnaM5/jAG29iSOClcZeMOhDqT1J8/96XxC8mQlc6Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEPRrBBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEPRrBBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FF8C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732827353;
	bh=XgX6z6EjSGEO+GOEx7WbuoBL2qvjRQqvInFgmvAlqes=;
	h=To:Subject:From:Date:From;
	b=lEPRrBBWmBOq/+NrZgdZSQR350OeCk0gQOjM27JH3S2hiyOrZKIPMJ7hl9RvCyII+
	 kWseQ1fg6uoiublzpw5Px3/rn50eeC10x4DVr0SoNCP6ddcwmnQBUcfW5Bur1Yz5m/
	 ABmdYzAnPy4+6nc5Phxg7Ugo5xVi6IGV/UCWtX18GNPf2ThZzqO0TWUf+f8ocSbZra
	 DhXmgRFYO4GSarOnvlYs4sI8gKCdEKCDeOJ8dzsJKCwMS7C/x+kKHUD7LaCliRg+us
	 qUzhZqNN6qqIFwAo2uVou3DfHW759RS+jHZGECFE5uh3feOXk4XflKRmM+DDCvj4W8
	 86SzoV/7IfveA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBB8D70DEE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173282735359.22239.7427949958093774099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7360ae89aa83880da54494a8d6392687a134687165d7fcd1fbef19fee8a09c5f
Date: Thu, 28 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732827353
