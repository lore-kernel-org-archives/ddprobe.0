Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E22820E70B
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752918594; cv=none; b=LhsEz8lD+1QPP+TDShC0vaRZSCeP1qj10J/ai7pxLgbPrKoCrNvr7BsnDByLjG8cj4BjQHb889Wwc9jc8DGfpLJNJa0rXzi5lqVT6HGSq4PKpi/hVvo2t+M3GwN7rpLAt3hLya4CQTSp+UCAXcE/2Z6yhGqpjX2U03K+RuBbl5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752918594; c=relaxed/simple;
	bh=zIr8bbxfjcFg7k6EJIo1B/DesSVx6i4Mgb2nXLHFfrI=;
	h=To:Subject:From:Message-Id:Date; b=ZjeSbOKsSp43H0EmqTAKhvzCg0Z4rxnuEqCoFf/YDSKP8zYQwGds6aRe+rktbdDJttG28P9vnN8wOrCuI/RA8wVOuhDfEXkbeF46c9rc6KttrBuFcz/nhlLeE1h0QKFSDu1GxD+uZU2vY3AchekTHteQAm/ljuXc0ZMWtNllds8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/G6YirI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/G6YirI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C61C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752918593;
	bh=zIr8bbxfjcFg7k6EJIo1B/DesSVx6i4Mgb2nXLHFfrI=;
	h=To:Subject:From:Date:From;
	b=P/G6YirIYd4z4mcsuxYxyluXzm+eYa4+zonbC6tPjqCEkRz3lT9Tk5kwhM22tK+mB
	 12r9+f+pslje38jihAg6h1cNinIn0SV3+okIDvWt3/kFqeBo8U6nKyZa+NzntGptE5
	 NHzog/1rWnRN+ad5/BjjScZHhqQ3A9tviSn5NWLiIdFbl1nkOEcLtzVWmrAW2e5P05
	 v3OGuH3EgLB77NTjViCzm54bKuYyNUIVMQyGqE4yrWHzRodojt4aTMJ2Njzr7G4JwQ
	 pFnKvy6C24hnHzBssZkaxBjvWMuqPaDJzBIqYkbU5RrBEZ7+mDuexVgM8RIdd+zy1n
	 Ioi59+N7YAb3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A61C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291859357.3848.13190979314242927411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b07f69614389b8621ecee7d7d64a4fa073e9a46844e3fdf541a7505f9f8fdfd
Date: Sat, 19 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752918593
