Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3077D13DDAE
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781930794; cv=none; b=UxlnjIoIsoNXBPI6p3QNxTE2Ptqe/r+m9q1WD1XAjpWPiP3kePOeFssFXMoPL05Nq6wpu3Oy4rmgSTAWXQ0n9uZ45WKcfrSZXsswgtkrMd0SCsA7XEnjzLLoueRv4ylAy24eEa6aAUWTadaWNIF4Fj4Srv4plErkUupOUAYBJZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781930794; c=relaxed/simple;
	bh=F0QoS8pPXfYoJidbLRwShiL0ghtZUdrEjpYP5ogPweQ=;
	h=To:Subject:From:Message-Id:Date; b=HI59UqAcZtSNN3JbaTpX/vOgh4KRGLDKQDrPQPVooi9Z7io8kdq7T7SvLyDr4AszGB+rp1+qw6MdLnr24BiFAp260UWNoRbZeyB7hD1KXIRujJqx6soJnq2byKn+3wXWKyrEiKCvetYY1tECT3xchFvhTnLcU6EhWiDzcNUM52c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rma7bXzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rma7bXzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CA8C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781930793;
	bh=F0QoS8pPXfYoJidbLRwShiL0ghtZUdrEjpYP5ogPweQ=;
	h=To:Subject:From:Date:From;
	b=rma7bXzlbioJ4yfbe0T91WyrMsO62UqBoXy/JaJA0gf9xVe1HgWA4+TqPiUq3O2AV
	 +qxssCqvSZMCKifST62/iTBEUKlBswZbHge8w6VXNH7HxZY8VIC+GWe1CbAyltn8sp
	 oZsMKYqs8jZMqbP1Q8IuSRBMkKoI39wVPJDKg+ANxKKfoIc5zl4vQe7H+XwDDr7WJt
	 UJqJeKK3/1s7wmETX6HcgigpODwBdiOs/uY1JNjdguRhUqoq6m+xAvfm11WmVYzbxw
	 z5QTPXRy2/Y+uz/kOly6s8i8gQ2TbVGHQo2eA9wrElIb+itCrydmuAejrfqDWwMSlT
	 jEbrtVVe6P5OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5127CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193079374.20577.12416806787672487640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3a8db2884d22db56b426b7a276488cc6c91d6f284851d7497e66288b0a243f
Date: Sat, 20 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781930793
