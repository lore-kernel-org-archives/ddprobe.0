Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206CA53CA99
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790701234; cv=none; b=oyGH7T+NhThG9/ltZFn/Rzv/Bz5qevtP6vHKfjr4UnXbqYyJzRvJ9n3LFhUYA4QczPVRetqemFTzq8Myrb6xFPo8A/T1UMW6nHy9ghd2fqNzFcur+WTtfTFW16vVEWXy5sl45srvpqlM47fA1bBb/ZLR58njdT3gwXuN+W8ki40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790701234; c=relaxed/simple;
	bh=pJx/WyBbB9z3xLLIaZbrBvd8Ad59yycGDKV8N1hx+Dg=;
	h=To:Subject:From:Message-Id:Date; b=Uvb1SV1VGLsilzFpUF3MMen34FU9m0iopa9GuZKwGAa44+H+SOntqL+GxoaGzrYNOig3glqMwar+4WLFTQ9SqP3rDAWpAHvYyWpsNrcBJWOkmRWJNfV5jQ7HqSq3KkD5fJ54VdfrS9K11f+i3asaxw4zvikVCGlVIskUWxNtZBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0S4p8kR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0S4p8kR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58C8C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790701233;
	bh=pJx/WyBbB9z3xLLIaZbrBvd8Ad59yycGDKV8N1hx+Dg=;
	h=To:Subject:From:Date:From;
	b=k0S4p8kRCuKDTT5p8MDoImoDGnVPbsnQgorX+Xnskn36HcYvfnGT/0ZaGPu5SK61A
	 uNvZC3mH7aQg/aUAoCkqqutX628u5UJqaaNUSeoeWvBIf3v2rOSq65We71JCl3t/Sp
	 gfHKIscXCFmDGhU8rWV4cHNNpLFC8uAbma14MCR22sMQb59okZTfKcl3CYPRyAoZ7w
	 wXjQjFgwlYds5kAeTTiv5JQdElPCj2hBLYsqiqsjCCTRdC04QsMaUaI1iE4tLauZsY
	 4tHXSxICazKuGFDaDRXjBW2Hv75b8g+j2PUm3niYqD4dy8Bym7ymhFQ8E7MQ+Oj2lH
	 VvCsAjDWUFfuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B199FCA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070123371.16028.9431302061443462808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6047981670b8d4fb684f533decf1ceff8d6ba79a4069daf0f089061401fc8eaf
Date: Tue, 29 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790701233
