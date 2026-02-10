Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CE9277035
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770734634; cv=none; b=XGDIIA7X0du4ds4WCKgjfxUL86MW63BY3/DF0XonmuFs/uwDOnX5mckqvJc3ho8cMK+gvJrVEwA8AUJUVgGXZCaYaAjxuapMo5bXZNxI5vAS8FoDZguzgGFFSYzLm7XZAIKBiOmC9QA4ra5UK2QURq3/Z+szjuLGJV7+mlmrhM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770734634; c=relaxed/simple;
	bh=hVm4pPQvqRcfM5q8x5oRfJWtpmDA/LkiD+qtWqx4I5g=;
	h=To:Subject:From:Message-Id:Date; b=fJ709XC2inZDburnAhCFmktkrmovJBYcu57a3/pTrO2fFAbkyngKSR1Fg//YYqz4QZnHhSRkCjvV/WbQUIUBLDxSyUFdEPNjFPJIzvW+uyX3I5CH6394dLVSAtmFX24Ij6j/9O63zvsQgn4oOAi1uTXodh8diAgxJHzPvc3Li2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QC0hIdzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QC0hIdzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E95C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770734633;
	bh=hVm4pPQvqRcfM5q8x5oRfJWtpmDA/LkiD+qtWqx4I5g=;
	h=To:Subject:From:Date:From;
	b=QC0hIdzw9Pbr+fjxb16dnvSi1S0gzdutqxMwjuyJKxrtt4ZYTUNIP1WYPKCTeQJrD
	 tUEaSuJik6vY2n3eMJXZvV1QZZgr7h1TT4eUC/NM6iudvHiaqco8m0gU+4mUgWimZ2
	 enhsPYVqtHTEjylzNp/+sal7RES8FGjQiAwlcBHzgaMMs67eqxdbf/JaRfAUzqHX3K
	 DtP4agKbaA/oEiEqgnwgi6DOGtTj/ozo3BhCQ6vmYvUDDJrF/RxvZ68HxqAw1SI/hO
	 b4rli9RaCVOboE/vJYUVbpR3kWd326jdlQllrdwx/h2T+lQTbSuWQ5lsYGH6DM8M0b
	 hW4xC/auc+fvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955B5EA8124
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073463359.7141.15428196634564108259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4b7a56512e464e01545c482ace20e3a54c78ca72a7ed374cd24b952ae7c096
Date: Tue, 10 Feb 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770734633
