Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1F73DBD65
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790794234; cv=none; b=J8PikH7Rs0i+55fs7izaSDLkeyxcbhXbZ93fB4gPiBSM/RAKqMRL+vmkSSaZTltrXJdmAE66/+YuveuZQEJx+V8QCgJcRm/wP7UD+0QmgN/mQ6IWDkWIRXWmR1QUVtocuYd+2W2d7Pj9blu7Mg9eAIKsA5aQJ9VAFtmV6VXclKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790794234; c=relaxed/simple;
	bh=e5nmO3i5FNK96q9w516E8RrdsOf6+sAR6pTdwOIJvv4=;
	h=To:Subject:From:Message-Id:Date; b=pF1HyLVmc4Ktk2intLZJt5/ymsoT3zQT5AAKuLzXrL09NIQXX68nGnT9XNM3MMJbGtaM1qDfSorzxGZjNCFbD9SlNVI87RlSURkpH/2xYILzQwfzD0zDb1kHlnwT0/jtqPJyv4DLLl1jocrmwUoGtSBmA27cF6IIVxvp+CLIy9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLvEfsBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLvEfsBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0E8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790794233;
	bh=e5nmO3i5FNK96q9w516E8RrdsOf6+sAR6pTdwOIJvv4=;
	h=To:Subject:From:Date:From;
	b=bLvEfsBec/PTuveJzEcP9KlDV+s21lEx2jDl8wcD4MTD7ky++x/GeTsm6wf81Cfgf
	 1Nq+qL3ZrzNb0S6xYGVu7pci5HRPbjjTrCb/xwgggOcgTP83xZQpWjkiex35V+mY9p
	 qmd0f0KehnZ+iBs3KzeSCmSolc/O6xpzV+mzwoeRzJqIBjEzEXC/k0jduVtztZeANA
	 WQ9sILBPTwszLYp2d/nx45jXsABlHBHyR5QAd+HfXcDcljZX7JzTOCWgHRc0UGa2Zs
	 KSbfn+/0vKhbtM5WHgYLK5efiH/YPkIQcowjkHXV6f2aMj24QJCamAr1t6voYcZf1n
	 CM1ReF4sd/P8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA54CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079423369.7405.2529619911553932709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25305ecd05ffee08ff9df9f9981472a7899c07ce56a72701bbfcb9dc5a3dcc46
Date: Wed, 30 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790794233
