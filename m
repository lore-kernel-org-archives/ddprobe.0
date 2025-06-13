Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24162275AE7
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749815994; cv=none; b=pvNkHnHTIIK454rA13y+QcNx7NgLVazAodJGCJUpjX5mOtnvsdNHjahXgWSzPldQ8sBwMTdDpqyygnEPugoo2jx5fCdtzW6UGlfj+jNufXBRvK3Km8EjBFYkzn9qIsNF80JlLwkoZO9aFHbF2mYn7a92ILYtVHRewmoC5jO3fts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749815994; c=relaxed/simple;
	bh=9XAcKY7fhX4fcr3cbkpKnH/ED5AaeajBBblOhkPoLzQ=;
	h=To:Subject:From:Message-Id:Date; b=ZBsU39esqtBnNd8u8C5yKTvdB1U60j37TgR3mPlkRaxtEbQx1hl+rfbVC1FilhvB+V4FLrK0HzR754LBYH3BcuyiP6n95bi/ARDcvCqyEdW7B8Y4kBWdt5mFYhQV6EkWJEgEACiN8DKw69SYXAjixFWyRVi0Q+tNdQBS3u2Haek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Axiogxa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Axiogxa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4447C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749815993;
	bh=9XAcKY7fhX4fcr3cbkpKnH/ED5AaeajBBblOhkPoLzQ=;
	h=To:Subject:From:Date:From;
	b=Axiogxa9JKwVe1YMvyFdC0KGHeayBNMmJTguPSnQypsoopWXvVU1WBmitjp/V+/DN
	 xlmf27QV0IGs0ExCaMrv931jYyRFP3z/9hi7f5luOXClCmNEVIX1KtpGxNR9PeUHNo
	 jJREra6sjtB1HtOETwzqwWxXlQEFeQ/no+x0zOM7zrwK9gwtYam9npRXihHRi1+soH
	 rwFVCcx0x/LPvh/llx8xzA7QsKnBMLBGSaBqJz5kbytc7wW+8a51PRaG8B/Gbp2hvT
	 5/xR2wkWld1LnJvNNYQiR9RIrOwuC35zuNfCd9IVV/sqfoxS1AnxP65gueawWIL/Ia
	 HOJrgdY5B0EAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F486C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981599357.20224.4432874171821791553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f9ef059fbc218de6f58981b039193fe1791bb31d59f3daccfc7b615a4b5e5d9
Date: Fri, 13 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749815993
