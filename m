Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506A021CC59
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787198434; cv=none; b=JjeD7qKsxgHYbGmbhWXZpQHen5Eox5T7zQsyXNz2naZHovEn68etryvYvYLM/f8b7r7fSAykJLpVcR9bzSwatimLVSP2TN+B+Tc0uH/X17H/hOWsfoz3/hb70fq+0aBIcXm+ftzwBp0DnZdasCztzViUWK9yyQATNgW0XX/BED0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787198434; c=relaxed/simple;
	bh=R9RTdxmLXQ6At6y86DbLDvqsiQw2/VdnA9KU9EKKyKs=;
	h=To:Subject:From:Message-Id:Date; b=jjNGIakBp3ykyRh3l1nLJeENTh1ix0qaZ8d95qUzHtrc5T/OvErK/r/XzAVAXSMknhFsnGnpTq8Ds6IDtOTXY4PnJ/QUA7616SDBTSYGc/qkfP1gsS+tMXJOkXC4Xx1zMcSHzXeLufNQWPSi0GE2QWNbvQ3cDxzEu0wQcyJkRqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtJsQ68Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtJsQ68Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC967C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787198433;
	bh=R9RTdxmLXQ6At6y86DbLDvqsiQw2/VdnA9KU9EKKyKs=;
	h=To:Subject:From:Date:From;
	b=AtJsQ68ZYYV2NIUYwhA4oNEZm8K6x7FHBujPMO4xi18HYh3MI9PmM0GzyLCAwh4NP
	 RuafMjyVYRiZKkLilvb9vwfUsKI0H3gGRdXnapPWryujf5JNNywwDjymj1WNjK8c2U
	 vNmb9zdJNqZ6RChKMXmRGP0csLdYjw8njjfc7XVU7qK+XJzEW/RPmdnDCb3z4y4EuU
	 PX0qjkgDAL5/6uYMFZXezD9CeZXM1jChY1KYzFRWVuD5Lj/Vme/OkvK/DpBKxyhNs2
	 JMKErGlKufenJFI5l/xrcB2oiItsHpFYYK9roOz6lUTEvm6bOp6IXQxH3IyStQnsyS
	 5q/IlygROiQpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4593C5DF87
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719843372.21195.395612179537892660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a50b6366bff362bf930abb7896bf9aaeb22763f0e52e26502cde6895d38d5ca
Date: Thu, 20 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787198433
