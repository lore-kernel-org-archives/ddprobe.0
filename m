Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C071724729D
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755202193; cv=none; b=ClMGteI6dcX42sUdBEWYFXWsnyxBR5ls7KBSA4w4FF0fYB+Cl6KB5RUK3JRDCS8M4a9hq2LP+oSUDadyp3HL57Gt5qW8DbMv515wQsjR8TpMLtNtYgTCPuNP6T2RGVLFjCLc5jLa0BTynA73LiON/Jvx87hPJP+M2zSouyrvI1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755202193; c=relaxed/simple;
	bh=mPiEFgkigZf2BcrTt1JweUC6pSFNb3E9sG0FyELe2IM=;
	h=To:Subject:From:Message-Id:Date; b=daevYeerTpx4xIrevman1iWqfRBLZYoa67yTNOUGzepsUurdfN686jCHvvGUGKS+fLyNJcf/Bsh/FnGO2t+xwebfm6C2q2H7kGk5+HD/hbabqTkUvEZcn2Bt3n4na/TIMIjJd5t3n/z8vvS15a17s2SaN377i6WWV/Rp9nNeo/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orTtvYcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orTtvYcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEE6C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755202193;
	bh=mPiEFgkigZf2BcrTt1JweUC6pSFNb3E9sG0FyELe2IM=;
	h=To:Subject:From:Date:From;
	b=orTtvYcNqmtouYYZWXkRoHyxfWurWveDy+JjF2yJAjWk5Hx7Do5/98knrX7QmJs02
	 hzwQnVhnGvvBaQC0U0X5+pc42yFaarxv2mxXAgkRtrkG7ykxUzbBDoLPjD5QDgEjhH
	 rZA5Yxpoi7ZoIItg+m0kE4iXdyB2DdcnczXQ9/T1vfQjt4QfBX97yKyh9GCHUX8i+/
	 8NIbB5crnj1IT4MX5WGtltx4t1u8R4Od/MnN5kI8o05zCydvXkYg/RJlwfiPWAdxln
	 nRNJnSeOD0WlW1gG1eQsL1wHbwFn7DgvBf3aG/laD46sWF7odw93fZoUeissPj8L3a
	 gcfcC/lR3Z4oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEAECA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520219358.10532.8874067159952770661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90528455d8e27c08cfbd116893db2b019c18511064fcb3427a28cad10af38d21
Date: Thu, 14 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755202193
