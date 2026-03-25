Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DF23DDDDE
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774448094; cv=none; b=oR+mxZJHV70SFlly/vfQAKPDWNk3RJcrZpT9reTNNr1HXgi7qVMbf8KVSfk5x2q+59xJcXQxySNhO3uGIPM4tm4j0g9m3pYq+1XlqjVaoLcJaYbTSBdAJGGqicNRPf7PHSjThQJYG9YHAeFTK6AJQ6YM5or7/yzWWmV80204tKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774448094; c=relaxed/simple;
	bh=Vd08QH5Wr+MhkMjLWWUq0Bii3Na/aNO146HYc/t4/L4=;
	h=To:Subject:From:Message-Id:Date; b=Jcqu33bYyWaX15RXsnXLgXM44LDJeFZiMHEEpW/+egFICUwgEt82COiIvhk9QmPl62iPx5Z1yc59IlBKzUquBq9P1xHTfx1Ctr1jL+pDC4OhEkNQ/jF7+hQ4Pl83T6kH+YWd3DMZgilEdYJ5GblKZI7eurLF9frXNxm2Dvet+ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3kEiiv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3kEiiv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA095C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774448093;
	bh=Vd08QH5Wr+MhkMjLWWUq0Bii3Na/aNO146HYc/t4/L4=;
	h=To:Subject:From:Date:From;
	b=h3kEiiv7Pqb67ulrHfw5efPG4BTdivTCGusKXYGWjVGveF+pwDX1QWNJU84Bv5n1x
	 tYZS6J2hPyzfng7BlMxh/nxY6x4ZTMIgc+j5I4JRlUDKtZtwYS1u1qbkqEsLNhPzi2
	 G9U8kS0Bg2qX5O1NHFyoVYYua51yEv+EVixbtH07lFVAQRd/UE0AaIYzYd4TKiJKSi
	 opYRjN71O1cCCjJRfQRD577zM4Chyl4Wj/NqBn2hXiFcIfkck0GI7A0fYpyk5Kz5kR
	 0W3amkgnY/aHZpNPD9H4B4SFF4Lsqam9Pk58MTy0vWFMfE4Ds02cFQRdXO7S1CvEGg
	 fp8FCaagdRQ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2E5106B53F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444809361.15232.8386306365052330528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5729939b1f4438a4c94b909cc227cf858a502355e11ae0525d74dbc5b91aced6
Date: Wed, 25 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774448093
