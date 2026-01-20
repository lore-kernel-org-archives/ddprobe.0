Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242B03A784B
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768941834; cv=none; b=BE4lBIgUeX63CbxK3nEHFnA3vPjiyglWGXkm+7I/ITdpyfjHtQKaDzVcbsI+jzhw7KmBLphykdI1U2MsL+C3ZVgjiPofnMdQUC5LmAXKzm81vIrkf37SVwqRc8yFoCL/6e+bOEgJA2xQ/BSUjnLQxZ4ZflU9tF95ehLlZHr8taQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768941834; c=relaxed/simple;
	bh=Dn+K0ATRXd3DoOMQlHMT7XMa3Inp425BJxtcZjOFX3w=;
	h=To:Subject:From:Message-Id:Date; b=tRq+9RgQMo01JrPLkoU02Gt+rLAwhMCkwrnjXnhdQprMkUXxg+DAxO0AQ87Xb7YdKQkO0DHwP6azeodY6ldjxXkVrPUtMN1saPt4Sp+kp5/ajn0Z9TuER3qLNYCCRHo6tH1REJnUKiu/A8OpUJaSStcG0h1jPcYOCXRmsHNpscc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCVUKe71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCVUKe71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD943C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768941833;
	bh=Dn+K0ATRXd3DoOMQlHMT7XMa3Inp425BJxtcZjOFX3w=;
	h=To:Subject:From:Date:From;
	b=QCVUKe71QQLVlIhwIrm5Jpp6E5CsQmlMJ6M/4FhIZqdH/BCQg0q50WWDYHpoG8V6J
	 D8NqUSUTr1zcOeVPNyNDDvY24wNfo4o6JS0EBiIT3WOv5sS9AOaK0NvPu15UNjOQaK
	 HpMeV1rz7LPM/tg3cT+T15+pkvfT3JracwqMKUZI51CCab+3SyXnA+SDOYzoH1/V9K
	 k65jRE6h3+8CP2XsbHSkXm8RY6ldea+t3SpOjNXaH6Mb9pRijXVSTYkNF8WP2BLEhy
	 8Pi4juKVChNoc2n5Y7XMQ2jgn8jTIZOQXsODQ1VIQmPkuionNiBwWNrbp6Io9Ct+LO
	 KzKLuQt5J7Z6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1A3D262A2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894183363.28261.4777265043536826007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9caf485c1e960c48596b1e0c7e6fe0f673d8503c6af00ba32be28d263694eaf7
Date: Tue, 20 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768941833
