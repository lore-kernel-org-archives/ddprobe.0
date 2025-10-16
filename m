Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327C519F48D
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760654394; cv=none; b=qPAyhvKIIDT6o9g8//oFmIcmjl4ZciRD10rt5VdnFxW4sB5vNYKyduZLSelaW9qc5RerkjswEObaS8WKZ6+kWP9ya2LA82aGpPYSQG+paWv8PfVjPrAV8D8B29QLlBu7aWNAgbB6YadCwfoMLNoEPRakDfBys2Q61OAyIsHhdIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760654394; c=relaxed/simple;
	bh=dPenoDwIaIIfCVZG7lUZAhkH/r5QbiUNY/o+9xRJ3y8=;
	h=To:Subject:From:Message-Id:Date; b=BBkswTBeWjobhIy6Rf5YO49qMDoD1SwuyEJAsRPKHenIO4s9w+yhbJw87cdk6UaDyvpMWE7Pz6xQgO+eQlx7jsXRNLUl+81SdkupI2eRpWFSTVCFxH7KAafpfjEXaPjCKQ4PS5LaBa1hgnLWVhKuYQKFXRbQAVah39iKky324K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELMJfjSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELMJfjSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD7AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760654393;
	bh=dPenoDwIaIIfCVZG7lUZAhkH/r5QbiUNY/o+9xRJ3y8=;
	h=To:Subject:From:Date:From;
	b=ELMJfjSaK0iVUgU93jePcxvxY9M3xpWpHHK7+yhhV1n5/w0vyW1R+3T7GexpBYNbf
	 heeE+U4gdbehM0Lk9KOxvAZtU71b/0ijTJP3JKMgfyNIvNOqqrRduhSQ7rqk3jMdUx
	 9JnZlFZQ2Y+4WSLUowuEZhTnCABlrPQiQLhXTwodduv1njxRiDIXs48yH+y2XmuYf5
	 Tzk5qC6XBiivkp0rlogCoReRhJJE2bjE3ZwvkDn+LRCZgeU9bA5B2B0zgPAj3jW9KY
	 2aY+Ee2ytpGtsg1raQoT+E4kukrINNqs4m/UBjoWy2zHp1HwknCEsJGWomiS042kGi
	 dzZoNuWl07aqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E0CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065439358.6541.13336545379366578696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bbf3673555567aac0cda7136f5a0ccb6f7c403a6dc1547ce37cce64b5896c8
Date: Thu, 16 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760654393
