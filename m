Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228A638552C
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791015034; cv=none; b=VcRJoKrRM327b0d/zjPqFYKkXXwqD9UV0WRzUiorHei3lDtV2npL29NnfoOCcDlWNEP2OumKTQSqfiCGOyuTwGanqKeb1CZZP4DFqxZC1icuuIBIFgqYcocSdRBk3kZth+Nt39ETwj8SsyrpmPBOUZFfiMWflig6wTQvI0/wgW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791015034; c=relaxed/simple;
	bh=jlLe6E8WbEbL2HuIQFDKIs0JyYLffYSorjZOcKaH3A8=;
	h=To:Subject:From:Message-Id:Date; b=isouNHEJODyvG1+N4hrHIc69cKsn2Y5Nl/LPqLL5KupU7vZROm6+IgTh0SjC6Fwa4pk5VWqvSKcBQbsrV/Ifn6ewjfEsyLQY9DUdOLgMDC+FkKYXImssegDKrkM+hZlzko5HdO8KCV5eyMqEBu5Cfdk3jnSLwnAWVhsaUpDrzwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMAZBpPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMAZBpPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA91C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791015033;
	bh=jlLe6E8WbEbL2HuIQFDKIs0JyYLffYSorjZOcKaH3A8=;
	h=To:Subject:From:Date:From;
	b=nMAZBpPmpCjltCqvsYJHanNWN5OgAp3YZCYLm4RmP4VHZBZg8aaFb9Uj+Nsd+5Rc3
	 9hcrgA7+3Mt6h2IxY/5IMcNtXVc/zt++o9L0yzk2gklZW8UDCnSMr5PmRFnSjJi9td
	 VGokZQ6gLzr+A0wNBPA8KtfoeJ642RP6Q0yXqrhH1YZ/tg+Ui/GW4HDyYmUnWy6XEm
	 Myz8DBFBsmBPvc3qXxagfYr6FLdQ0zv7YjBgsbr8u4qjrVLfAtH7xb2lSpbQ55go7s
	 EYu2Z0KD4+dHRPNewCb1NSgt8pHj4vtkiXuLBT4TeWvQFEpHk9piRlQx0PTx8z3t3m
	 Sut98t/WneLgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA16DCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101503368.28578.14446129145985429431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2a44acbdeb7fe12622cf926b42abba3f3e0423ec82e7ca9bcbd8355a863bc5
Date: Sat, 03 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791015033
