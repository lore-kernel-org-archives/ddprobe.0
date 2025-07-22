Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3105D2576
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753211395; cv=none; b=e5UeDblyud1jQW9EPWKqrjRu1ELOulYpAXswzdi0SxE/dOISVsbOqXEX8q6t1bDA2Zd0gld1qrpbNA1zgVP6FctpSMAIU0qb+1FQGKU8cSuvFd63pONhiiscdLoMwgnvV31kqwUwyZrxRAwir2LLlFYKromqg5TpLieNjCn9tgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753211395; c=relaxed/simple;
	bh=Vst73oke41WMx9hjcYFT2hjiqMW8MYnhTIon06eyjXc=;
	h=To:Subject:From:Message-Id:Date; b=mv/IKlxQDdtuKzMRnncfK2hYb5vO24JlNLOi0nOSvllBKBp5Fo0SpGL7iw42JoU2+tJ+GvP9nzGdDSu6PacSn9pB+urWfK2pOplUO3O/IqjRVlgXgiI7l/ExiSGFyYyKzeRSwej1xv6clVVMR1CLcMtY4Kr+Sef7S1I/usEAyyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gld9Hzfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gld9Hzfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BFDC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753211393;
	bh=Vst73oke41WMx9hjcYFT2hjiqMW8MYnhTIon06eyjXc=;
	h=To:Subject:From:Date:From;
	b=gld9HzfwmlpRKyknGvvEnGd7HIQFKxzehr5JBNDfSoQs8pOuNUosOhhrv+gCTeFqE
	 MCUpehLsmfIacCmL17MuFZ5VOJBYMmQi/GgLNojrePyuTaQnFaJPDenOGAT5kXakq/
	 beeKOtpA91aT5PXEOxXeqNmVgxnl/Da9zqwtjoclpJJe0OWqRpjJTqMFiqJ78Yqeor
	 Q50xiI8LdIxACK7i3gPu+KIYu+grK8eR07zPKh0TIAEQehcVW2SoGWTAa5pw4DxTuW
	 NCDFenwaEzw9uR5gosZMbNAMBTCJU62wUBfqMbDAqw4gsHjK7RJZ8k092abgbmzaAK
	 jhSDNkeNXcoMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E355C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321139357.32193.7552858198832627614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d609c346807a88dfd901e098eea6bf003624871893a12d1f3f37f801017da58
Date: Tue, 22 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753211393
