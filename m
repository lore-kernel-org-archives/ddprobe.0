Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3B54C042F
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787858434; cv=none; b=RbUb0yvizGwEhAoxH4uOORwg0/fUY2PAc9gWyVCPFM5Y8lGgWzl9EKtOpLN4cjVeiwuzGgPRLllT2ea7Z/vQLBRmJhgmz28s1CLgmvaPchHMyWAj6YoMa4rEkBXfS8YCyfixvQZE/3eFczYldgIM/4UMm0rj/ZWVqaqLInIEv/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787858434; c=relaxed/simple;
	bh=jRSdmtCDZ2PXuQjn650EDAkZ1cgmb+W0ni8m8yDvUa8=;
	h=To:Subject:From:Message-Id:Date; b=fUAY7K6WZ1FAAVZu0DZDwvHjpuUGBkh3Pwd7yFqxx6EMdnoGpEbJxeYFNF/7guoXw2ITk/15Lg8kPh08eRPPufrBn9df85zRtzvRqR08KgpKgZtuAge1brSIut9VZIcOn5rMLUzfumsIzJTwrpozgBGqI5e4Cc40q4qDOG6c4L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5WL+9Zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5WL+9Zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB217C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787858433;
	bh=jRSdmtCDZ2PXuQjn650EDAkZ1cgmb+W0ni8m8yDvUa8=;
	h=To:Subject:From:Date:From;
	b=P5WL+9Zx6B0XuB9QR0ON7HvliIa+oTdLfTylB7Jw6CZkQ5u1Yr38FSo2zBlSq973X
	 uFVrs6UAsYivDga9kCCGGn/stailvm5O292xrP3NcNL1YXnz69Dl/hGxotKS1bKsdP
	 erdKn3n+eGdMMWtj7Gu6SJ7xkQVpWdx3oDsbbZSaEze9k47SkvEuEmZsdFLZDPnjac
	 GFB+Yytee9KPvO6j25gDSPt/twXNyR9hCqMbNBTQMMqZe8SS00wJpRLpxo5H0GHHgM
	 u1gE6iYDlHDnEVBgvFykFf0gYMokQo6C2h8Pecn+8uohT/92aToC8R4ze/S4IYoyye
	 qw1TYgUEIR5Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC1C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785843368.13168.4991411779805929713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dcda29a46a371857f2c28354ab6c3e9e0f9a6036c12ddb9e182b4e201531c59
Date: Thu, 27 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787858433
