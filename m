Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D5019EED3
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775111134; cv=none; b=bC1EIV7E+/XMk89srUzAbB0yuToVnsOJ5XkKHzz6iUzeW0fwaSEpI4eW9Nx+MmG4vxq/0LUB+eh0oh+v7aIZmZYll5AsQkP58VAPU55Rpetz5/hXFrme3T3pALjG9TvyU+lZWzHkRFqUYZvvZsMeznMDgjItToXSxgx369WBgB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775111134; c=relaxed/simple;
	bh=XA/1UifeDRAvIduK/VCbZuqkKkt816M7I1XlKW8KERY=;
	h=To:Subject:From:Message-Id:Date; b=BVwmB06KFSsqU0rm08UFGviy0TYffKSGPvojbbf6UDO/tMtN+fe0l76RkKK3jCm4BFSz7ul08f3JyUnJPUfYneIuK6LxQd5qTegLZWwTxrVxII7G1dh3KvqBekGI83XSQSadHeqQd43KAGDEUG3dBMwQsNfGnlyzW+i44OmcJQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rI6Afd1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rI6Afd1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC99C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775111133;
	bh=XA/1UifeDRAvIduK/VCbZuqkKkt816M7I1XlKW8KERY=;
	h=To:Subject:From:Date:From;
	b=rI6Afd1rUq7oN1Gr5zNRpZW4Gr4REp30pUNQC2cN+RcwY1E1o/KcPlPRUnEMs9Ghk
	 1m4TAjyueWlaiFEztnmMnNFjeBMn+fplKganlQXpxatIBdSu1Su5z3k2fyeezMsPaZ
	 zEwYGju0ru9cz1yNCxtSqEDFrKBpXraduYfUfI0QIyXr819fQLQrsH6IU4MGXvMXLi
	 SiqFcOFlVQLNXEzWrPk3n6d8/ke7+IdCzulqrsH9EhF3fxCQu9bG48156jcRf8Ghyz
	 2t8O626rRKlkMIV0xZp3oOslXpmdtXC/u4xGvybnTZtusxaTHoQzt+wG0dtCQ7GHTF
	 rhjQXk/YmaQOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF64CC6B00
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 06:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511113369.23638.6155033260982659341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93d49ea49a619d6a288c68f9b94a740ca7dca7ff9771b2795c46a2d34ffcace
Date: Thu, 02 Apr 2026 06:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775111133
