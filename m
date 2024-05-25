Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCC1208CA
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716626663; cv=none; b=gtvgh19QQNPWVO3m1XZU9t88Tf1W+CRW5TNWvwPnm5I6GicIhxYwVBt3qMV50QE1GecPQyz+9S4n4X87qhGEj5zlGzaIp0aoXCrrpmnNNysErFSsPMoXSdIZ6aunGsqZwCu0sajX9SkRYZXk8YB31o0vlkooc916zhc5jHx91ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716626663; c=relaxed/simple;
	bh=jhgEGNCedNl3EeO95d5Cp5ub1a2W+P64bTY9MT/BI2w=;
	h=To:Subject:From:Message-Id:Date; b=d0VkGyNTTEgOEHKyimEfJlNtO3GiJ9yD5n7HrmHb0N9D6q++TXgTO8lgNLFokyJvby0cGwZdCU8PNLBO9zzo0jWjhZYLuimoygWhUSLbvbuoxNlie6Sb5SjFUH1BHKSCymtdjAth0Aia0TqJByab8fkb6j0ayPdorXqNDaQIWW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLiR3lDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLiR3lDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF06EC3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716626662;
	bh=jhgEGNCedNl3EeO95d5Cp5ub1a2W+P64bTY9MT/BI2w=;
	h=To:Subject:From:Date:From;
	b=gLiR3lDn9tFFQ0oHjc2XCWp7FQCGkr/uR4exjc7tIp+5riAmzFk2wtU2zszvMwxHJ
	 84B6XIgw7KiF5rrGmSXo4G4kyaOEfJEhLudE5qEQOxzA73Ty1ElMw6x0iYd0Tp2eYa
	 rCRt5WeFNnfJRg2mUvghXpWOaPczW/CoMlt7HNZEda43bA9McGqEiur0FEqzGOjN4U
	 RGe7JORZU0QygUZVURkil3hbgDd2jR6UNV6GHFZiw/29c7VdVzaUfIjkasZ9aShjAS
	 kw5CFBQLOOTg11Hpjwl4xFUGj8qXfSqdmY50mVf1aLDqGM16kvXiYga1MG2JdLy1+G
	 hZdyiH1U+mcSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C774BC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662666277.1631.16778756598191433802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405c1f276ad700b1443ea4316ceac0041c122e7638258aa0ede174879cad9c59
Date: Sat, 25 May 2024 08:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716626662
