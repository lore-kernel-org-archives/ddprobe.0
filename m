Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B6713AF2
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768671834; cv=none; b=TnFLrj1FDkEqEJh0rWeSCQ87IFrxelzahCUIOWViG7g4pbXpW/oSs0GHGGp0baqTh4kN08RtB7dJeR0dHYnyjWIg7a0h6mv8n+lcDg5A8qf3rV339ZUMKuRm8i/Z3ti7jG4siGelg2FqGaUZrwnwM9qsYXnXSe2AACjjKogyBa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768671834; c=relaxed/simple;
	bh=qHBNtvnNbbuyU7Csuy+mIcmjPTthwtq0hPUWuY5dX4k=;
	h=To:Subject:From:Message-Id:Date; b=u6Dm1uYPf7px98tFBcGjLHJl9imgbRlsZE617pPR9IRGmjc07VEN24n42MTWzlMNVcMvIymrh+tBut5EbvQN1ppvZr49Q0vog7hcawWhc9asSBGgZSNzmLaFSc7Ies+dA8A0Kp6MDef7cQQMXIB+WjqiW4/mNBiHWrF4Oy5HyQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOoBZ2xm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOoBZ2xm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0657C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768671833;
	bh=qHBNtvnNbbuyU7Csuy+mIcmjPTthwtq0hPUWuY5dX4k=;
	h=To:Subject:From:Date:From;
	b=BOoBZ2xmrnSPUHtzz/ZxKEAkBmaHBpbOFr8jPCBRNUBnEG+NiP1Wlawl1BblJl44y
	 KcA45tSq4Lz+yumk/B6eq0pEHReV4o15dNXagRK9EBankRVjmvBSqTQ+1mgty89ezR
	 nrJ+vNBtCoDBltc6UK2fekmO/ryO+cbd1u66E9Qd7ZXks86TPnjBqIYOaAilEjTQ+t
	 drxWx66SGTu4jNDYx4lLpv3xw5qS6QYL8XsxwOc8NE47LWsLk44JW+/9kbs65kHivK
	 5TAzb0QpMnxdPCZnQfv7HeXy5QzHKzkRPA4h0+0kMZIsTizUK4/Pu2GiVduTvaUwdo
	 bIzo6ZHr5fEzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91191C98315
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867183358.30549.14363522002880843853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8224cfaba7ce5dd172c80c6882ebf97a2e334018daa2162295c567575538a030
Date: Sat, 17 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768671833
