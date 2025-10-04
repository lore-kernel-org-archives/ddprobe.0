Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0E2645
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759538994; cv=none; b=lsV8hbsRxoAMPYkBJDkcIEsOVJHa0q8vvI+5FBw6CeiBr7Odm5vtaW7ONsy48+sVqUNXGpxj17ZuxzZG6/NhyMcWD4kN/6eEghJv3Xs6RwGrMYKFXSljgMXyhE1MD34UIScrF6w6ysy840UkuAJuRaB7M/te+8F1V6ZdeOegalA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759538994; c=relaxed/simple;
	bh=UOXIMxRo4EIKhT8GT7LBwyusWOC1iIvHyPRSDtmyTlY=;
	h=To:Subject:From:Message-Id:Date; b=dXneXxKpRXG/AQK2s8Uc6koQf6BVIEA7g76z7nLyXpVJvNQP8ykwslDPRWehx62DQ6LO57ec3c9SBFi81sqJ2ug5uLFNFySbUJM9vDNaLn4NvVShXbcZvlGxmJNK4I1jyMzI/7qTkiDXuDPcyYsiiGzXXdE9T+bVOTGbmd6fiTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUmHXE58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUmHXE58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B15C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759538993;
	bh=UOXIMxRo4EIKhT8GT7LBwyusWOC1iIvHyPRSDtmyTlY=;
	h=To:Subject:From:Date:From;
	b=cUmHXE58rMvN9iHHTjC+MxleQ4KEiiP5yUQdb/TZlp+1Usu5HNxZRfwbUPTqHcPGF
	 yvCJM8iBtDwmtWtO+AlkMoYNwBkhOSdwftIX+LeIp72ZSBrUeXviLjI2c8LKdfWzRT
	 7dXnQstPap0Sy+haXuqEyDq1tRxCN5e1OMzedAHENsxE3T5S/hV0l7nB+HBcJ0wczU
	 e4QtNMbMivkDEuSb2v08rvB0dA9k14kowqRusbuFzMODEn/b7qA3n4G9pWEPczkZ2s
	 62oIGMTq32Z8u1V7fxiC7Ib5U5fuQaMoHxPIKjPlIIHzvjqASau8JLlzCUlRAiu1zr
	 F7Jr1WSicr9IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB9CCA471
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953899357.31881.3306531751484768266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f98349772207d824080f0df1c7594c93a752661721f78bf05de3d7049da275d
Date: Sat, 04 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759538993
