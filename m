Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA5424B29
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722020754; cv=none; b=kotaaHvYSEVFA31jcuDV3HxDK/1MnwJXb6lkz62Kf8Y87SaFEbDgwvD8z3zaAqeacb0LLeTswWoZp+w7IkY7g9UzcVTsbsTltY7QEIHz50+/Sb52N9sOlCClMeilzJg8n/E7hyCPORPEN2x4bvdnLekl5QPmrI2m3LMOVcfyNaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722020754; c=relaxed/simple;
	bh=JL9JGOxWiC73WutH7rjqp5exkNX2a8m9/c2bNf8lLQU=;
	h=To:Subject:From:Message-Id:Date; b=A0YmU8Cbf7iFib14gvCGq943h0OYuuO8VuOKa0Ne2P0sntY6hrrHkCke+0kyf0uU8hBMBtqPJkkTSEt8sOuFkhUwAsozechqTZ+nw8intprd/gNey10Pwe/gHiT2qmA83mxHLh2WPEugieepyH4y0sjohR56qNAiQIdv/LocvW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qg19ndTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qg19ndTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8631C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722020753;
	bh=JL9JGOxWiC73WutH7rjqp5exkNX2a8m9/c2bNf8lLQU=;
	h=To:Subject:From:Date:From;
	b=Qg19ndTd10kBylaFXmnPlXHx1exE0O98XycS6+DnEJ0l5zl9A+3m/wnp7mlo7Vij5
	 mLIBV8DIKOKFvYudyMBAjDxaYeG3BIX5nKJn4Z8N2AFcic/JigYwz9eR+RRc2Yk+IM
	 3Q1T+8sceeNJ9dmXErVogK3Z02AyK4DbmwcPuqyywREyJMXtsKjXdQn23EXolNwyk/
	 1tzz3Y1ivVTaSg/MemeMLwx7omFspk1Fx2E2ZK2k20hc0tAgdjt5qxqEW+n6yTBicR
	 aQ+0UoKvuhM+834HwVghjlSv5u1y1ZZeS7CMotGBAuhdlFDU5Y6nek+uaAD00WqZB4
	 VXzjtwE+EUNyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92859C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172202075359.28087.2806835699114099072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d63c5ee7f3cd869122c54929c46a92277ddadd0d267ace3609752005a72e54
Date: Fri, 26 Jul 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722020753
