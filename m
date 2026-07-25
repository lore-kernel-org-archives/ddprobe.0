Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9981A6824
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785002434; cv=none; b=goKQwkhMQcCsveg2cWePFASTQAiy3HQZu/kcecx53cl+MM8JAVUUtM5gcuRR+OsLejCAFRECNZFNBRItr3GrzdHsuzdGJCtbULOEg0XbpiCUYPn9SuVfDXIcL4UBLgw5jAM4ii/prsacKDZAiVcDV+2KBU+IVZnOfFwRyJ62ErM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785002434; c=relaxed/simple;
	bh=JvNWKjO/RjNvsLeUfvF3GXwYbIP7QF7SgF7MZe1yIrM=;
	h=To:Subject:From:Message-Id:Date; b=mvmPQG2iEqP4i+M/tE5eOPJ/i15aeVE8qOAKBD+XM+zI0f44jpgKdkVDBMKeJnQ5hHtHujBkfgH4bzgE9Jjr0jLhH6k0wzwa3HIS9m5ZLUYdWFzGJWWtyGeTSXuRGECqYzycjQ3SujZuZeFImg06KRyig+VzfYRaqVr8HKTVr3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSKAF3Ly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSKAF3Ly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA1DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785002433;
	bh=JvNWKjO/RjNvsLeUfvF3GXwYbIP7QF7SgF7MZe1yIrM=;
	h=To:Subject:From:Date:From;
	b=ZSKAF3Ly7cjtd2W08876GJ1mRiixqQ5kiiRjCzrrpaks7hFAjv060ex1AyGodQ+tg
	 fTG5vNIEaKkyFVf+Gw+b+ThbJX+AQ68GFg6+XFwBtjfRSTNuLm2n4i4wi/sEG0GbgI
	 WA6EV8AmUc5gijmfkod1Uh1RBfDdIK++ts75f8vfb3HFbNRZsiCeW9LULj6W3m+CCf
	 cAOerDIGraWRnPs0bRHZ4p1VHA12eIhIRNkxViQXK4V0QNdr8vQga+vmd3TPbRFfOF
	 qDdiyrQkHukJ+1zrgbdLUvIhauHb4ukmq3sKFVSIcqd8XE1h0yZf41vC8Tcew1mg8O
	 bYdp9ErlJMCfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB485C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500243368.31839.9674435057027605357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b1d0a5e24c0271835df437203cebecf7b929c7cc9bd8aef9a4cfc52c3a1927
Date: Sat, 25 Jul 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785002433
