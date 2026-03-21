Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F9323D2B1
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774087494; cv=none; b=RCJDFmwx/keG/5OV4nyd8GfCTEjXWJgdp/KMnFsU9iUP+uPJBRwDP6VRhHvLLUd1ZP4grbp5kRZsjfZNSeBWTB8eueRNI0iRcROdvr7PsR7klcfn6GKdUxaByi+Q8ostW10wI5bs4BxXcz04wVB/nz9uabqb+XCSyDnZ2PGTGrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774087494; c=relaxed/simple;
	bh=Q7icuxaLm9pyfsLEDWNin8YIEBxgYz/TPmX7fdEKLfo=;
	h=To:Subject:From:Message-Id:Date; b=NzrVb+SEvCaGiEKwQvhUf+MVAyzCsfqha8bkjhnmm3Oc4DDmYSTh2tiPJWWPAguF/NbCzn/4IfCn6HOFLAFXdW71Dlt5u0PDDHfw0fYAbpzrwwO3kMf8j8dyBYcrVLUnEdGpvofYvCKhiH6+4goxANcJhKBx6Ok0Ed15wQ8YN4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPxC9M+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPxC9M+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12F9C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774087493;
	bh=Q7icuxaLm9pyfsLEDWNin8YIEBxgYz/TPmX7fdEKLfo=;
	h=To:Subject:From:Date:From;
	b=sPxC9M+/bZNkL9QHzoLa4o4JVuwsXrxTBOZg5d547AgzWjUfSAiXQ/wZmLljWBYNZ
	 JSMJw6Fi5X00KtVn6QEvIbjbJwtN4F9sQeizN2Op3vXar9Hl2VFppsArijB9FoOBT9
	 gtFyUM4ew0tJIRJcb9jSm+sXv625Ka7xKQOasS1ztwDco4ce441cQZJjHR0m4q1QaP
	 ASULc6HpivTu9b6e7uf1IFNQ8/BmBmWtP6nKIqBa1rMmbUzcjpKpiHJasyga6zFNd6
	 rJ12eGl/VawaE/ftQhYGyA6qM6KDKWLZADI4gr/JAi7xq+JJd/P+JZYkZeLSsvqZOH
	 NcS9wE1BDEvZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918DA1094463
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408749357.31293.851174562291845277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf40e69e530af4d6e829b1c8a82ab508dc029fcd0caa7db92575fd20c2cfa24f
Date: Sat, 21 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774087493
