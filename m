Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076BD1D516F
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752043794; cv=none; b=kHcNipozxsitn/wQIbwYS/Fg2cwkDsTJkCgCLaC/ltnHskNplHW8l6Jgwdmwkd3QjHPK/LlUNijRSiuACe2TL51eBBavgJYnGcCjCNj3QdR7RxCuLJoZQq7bWwb6lrWrzRBtEeZEt1qPV1KNLNhjVRmzd5rqKnANtHdxSsgEmlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752043794; c=relaxed/simple;
	bh=P10xLkqCuvDInNRE47SWd6bo0RNep6zzi3jLhyRi/04=;
	h=To:Subject:From:Message-Id:Date; b=KySLE4mmikcy6/y28Gg2F+R3JNubJDP1FtGW6iGkAQBnU6bTvdXNCQSznyN0MAKWwCbL932e2MF6wrNrw6fCMtqJzNiZ+YnNq76gbb9yx12yYrnpimDgjs0mCPDtpwA8OdRTS6kSkpHjKD0ctCCON9fZyxlltXCoYJQf4SgP6Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odZUOifj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odZUOifj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA26C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752043793;
	bh=P10xLkqCuvDInNRE47SWd6bo0RNep6zzi3jLhyRi/04=;
	h=To:Subject:From:Date:From;
	b=odZUOifjY//62Vx4wgyBJGaYl12ELrObnIKBirbOfDaB5N/+1frP0PupJyli0+CCi
	 zmxqHyhX5Xh9YdtUtNIwxxO8848Ig1VhnR2uVPvnFCv74QlAGaNIFz7Lb8HEZ8TQna
	 yxm3xAuRpM2Sv3nWgTTFA04gQI6XZ9Nw1nEjSxM6HxD6mEDidkpRAFG4maEU8BvQfn
	 mtHMi6dGp/fE24gTXdJeLtSuMu1xycbkOD5zgkZWrPkpqV6g1Rgdr6vnNg/MhPDgZ2
	 1d/g+fzRkaVpDslOtbsrLyhYqF0mP+VCUJIiie9fhQk8wxWQgkalY/RdAr7SRSvPRn
	 xKQo1R0NXJa/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC54C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204379358.21368.15802650534795467789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43829f242371065142f5cec3947ffd74dd9e7bd3c3ae347c5109f19e1e91ccf1
Date: Wed, 09 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752043793
