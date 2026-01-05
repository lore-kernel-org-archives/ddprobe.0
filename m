Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D63E1FE45D
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767634434; cv=none; b=JWFlHeHEh7NteOOsKJ3CowC/xvzPDpLkazBkfie9du06+H+AkgOivs+craHgZQRcAMaiV1ePIQYki4pouvS4D+Bq9A4GDc9Q+qOK1c6zIiV+uTnKX8LNaVqqPEwcLwFOVIe2FkUrEwCGdtwluSZyW5g4rjaKYrMgkDsxTb/S9mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767634434; c=relaxed/simple;
	bh=OzokSwHOdwF20eTvlbKXvN7LdKkxndoSjgyDuAPgwmA=;
	h=To:Subject:From:Message-Id:Date; b=aIOPUA+byz97vgainiBWLCrt3Otg8p7gUy/TrLqoOSzN9MTMaV73ItfxZKDhTd6QKGD/LNbmwO8IzYfc0Gvc2yf2rw2avQ/lUSIXrBv/LqNkI9i6FOavwyFRi9/6DGl/SujWnbW4vgvh5OxW+EIgNkELqFYaabnrnFolOtGPuHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZ8BfPU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZ8BfPU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC40C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767634433;
	bh=OzokSwHOdwF20eTvlbKXvN7LdKkxndoSjgyDuAPgwmA=;
	h=To:Subject:From:Date:From;
	b=eZ8BfPU8TTzJNxi4GMCy5AeeD1KJZX4bTpIKhxbi116iIjfaM6x3UgG4vS8qRdYcY
	 CzeVo7WQwyUD886NLiWLHn9O0szvluV5q7WUW/WtF5+9JDedpNdjSvSGbj4qLLxr2o
	 zfAraA/p41/p1W4eBw7tCzrAhsK4pevbt/RaSVyJ4xLdkOosjyROeYUp3jagjkrF5r
	 9jPU29ouuocypp5NYuVWXkoiNUKtWA4yQYiw0N0isJ1cd2J0JT79kBpelop8dzDvCq
	 seGZ5Pf0eUyJt7x/tupeHbxMicxx46jU/kOyofTQewYhMDNyBLPzNW3G9acl+hoUc/
	 TUjSw2cWv6awQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C45EC79FAD
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763443362.31898.4958474647669121233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fee4e360d5d6e9e4f9314417cb0ad57f6d86bdb4e3feb0eeba8ba93b071ff70
Date: Mon, 05 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767634433
