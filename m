Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CBC3A1AC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 05:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714024283; cv=none; b=Sm4lM3SYCDGRzfuuHB97ToCRjfiqx1n/11+icpfyjVw77/EJ+OjvJwqQd0rQyDJMiluhMVm7pLyi0fN+yRu/M5oWiOMdfRrXzhgUQafwEsjxSf+CYo3BVrIkjUD3YfpoWP7ki3eabaPdagYD4rfveY1gENB8Gu3oN3OOiwG1kRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714024283; c=relaxed/simple;
	bh=d9geO6ta11iq0E6shB6KjXpTaG/eUijSJfVhEFglCLc=;
	h=To:Subject:From:Message-Id:Date; b=kYgpSQmTmjzxb/vAreXsz5synSDnJ4b/4vsm5SvMvriY/xbP2dBYG4ll1ERbXAZo7dj0IKXkBzy5qGVoQ2mnZhTNTutzNjmOcBL/fGjknCoI3DwYMNs4fYaG15M18+7+4fFJc7SJzoMmOBskqdInfWhxByWH5H/1uvl7MtysLow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMk8edLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMk8edLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B42C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 05:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714024282;
	bh=d9geO6ta11iq0E6shB6KjXpTaG/eUijSJfVhEFglCLc=;
	h=To:Subject:From:Date:From;
	b=EMk8edLmWIkDKkRHste+nnYS2AZXaWs59VGP0g2YuKBPdN80ldForeyxaMIvjSLnY
	 vdZDM6t3TzEh2pmQhQTKmuv4tddfnadaaKzsriT9Ta7Po0Hm7T0GjTX1MVNKt3r+6a
	 8U+YHjT/K53cT3MWwcXZ+wEODDSt8kSz9JGwbT52a3HZSV2oLWEN7jkrcykas1ZcL9
	 gwQ3+uoyQQh5OWZoewy6HWtxL9ohu2aMmVQ8lGt1vxceZFAGh+ap/hqnn2ugiVirHc
	 onyyudDFBc17k7H27F7Ca68BGUpWNa+U0fO9feMZojdoFgWbZ8otOKVAYE2az2KhbV
	 TZ6kv9laBNdbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC809C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 05:51:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171402428280.19429.6797515295245539432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7ff2dc7f3dc414c508f73eed20dd25c2f43be6ec77bd7f5560a01ff5aba334
Date: Thu, 25 Apr 2024 05:51:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714024282
