Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A0E2E06F8
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750161594; cv=none; b=hL6S7smpKLH8JCSJx7Jn0VXANm8RJw2lnpchskpsRlji28XIcULBPywKgAs54MXYgQa0w7zwVwXjbKBWyzH3zHfoag1Rv0btqtok5ruMymMN4KXdD6Gwxmbne0cBO134skAghB+6gtWboGZ1E/fZ7h9IAxnUeFYFc3F3Ijg4N1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750161594; c=relaxed/simple;
	bh=cU92ZcVujRukFrhAzoKJPLj+6osVe2C5+qNheYpTlLk=;
	h=To:Subject:From:Message-Id:Date; b=HckJdAi9aiD1rd521F7HjR0kY5kgWeJdmHgRZh7Ap05EidMESUyOxvduqjerOIhhFngnSBWeuHL99vtHQK61S1VfFd4y319y/5r6/mzhotGTp1oo6oQ62hlW3U/WFXnw8wL9LrIzwoulprNGQsroCdt8+Yp1QbBMMmuUNoWWlbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDRXWOoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDRXWOoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC25C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750161593;
	bh=cU92ZcVujRukFrhAzoKJPLj+6osVe2C5+qNheYpTlLk=;
	h=To:Subject:From:Date:From;
	b=aDRXWOoLtIBUkD4fq87e0gezxtifHuwxzhyaeMAoDUOjYtQ/IJVMRYZ7ay2YVxp/U
	 /688kPSeKDMxtz3chunoe5T8wDb+O3KvX753KZjEt6iiA/5Fla7gu208cabykYcSGR
	 ZHGKOGIbawNgoLyehSqbgSsItlMJXAt/RE4N6XUtEUx2RFVagB1CLeXpOil2RkgjDI
	 LVvuD10uTbdUuTAJAWh+Ih+AL/PvYAcXncQSI/5v/ivF18kBjtloX88LFc8TvEtn5x
	 9DrmpkVwx5TlDE/y4BJCCYhr3qjLGqb04+6sP0AifCy/AEv5rZHZyVOykEVTabDGXN
	 2SNqxJFEXJH9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94128C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016159359.18861.2761619720799357894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e456bfb381c7a40bb61eecff98a66980f865a43402a21f54fda60fd19788171
Date: Tue, 17 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750161593
