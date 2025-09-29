Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F96B47F77
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759148994; cv=none; b=SFM8EU3ZjWs10p30fui7DNERq5f7n1Ct3t9cAbR7zopa3F413eaIPLwuqoNmh7sGhWEr8RqG0wY07VQnFoh7tBg8fPdHJfDYGcsSOoa3yKkgf/B7QbfUfiDpM2OSM7kzgfl7+wq+h7XvFfr7QC42bSzlSNgxm39VYT9Flh+PZY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759148994; c=relaxed/simple;
	bh=gNhPiizcFRhUsG0GF38Ax671rK4MPOu7nUsOAm3y/iQ=;
	h=To:Subject:From:Message-Id:Date; b=JZMsTHTnwwLuqpJLo4IP4ctrT1OOPkhK/ooluiOvZMwH6iiqIqMQzlKV5p+geuWlXtZq8l9BIxQNl8kFNdBGhWNOAj8A+QNu9VnkyyJe/jvFPLY5NDCoOWQnRsfRNSrql2i6ff38skB960QQQfY4eBqGsMxVHZcIPNBamnyVlpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZRWNlJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZRWNlJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9689C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759148993;
	bh=gNhPiizcFRhUsG0GF38Ax671rK4MPOu7nUsOAm3y/iQ=;
	h=To:Subject:From:Date:From;
	b=iZRWNlJBtse6q0OLbRxTtkSTAw1Q3pCjyajRQAOVcIUZ5Zi1gpkrDIg+vqUcDQjqb
	 NGoTFvAYD8poCxeQrYvrN8iKMaSJU14JgYF+/ao3XyZcMcQcWktzzeukd449IaipgM
	 gxCMj5Nvo6U0ZO2b+eymKJctSOcEJsN0uZysb2Nx9/ictFSoyzTmOOtyAFCa682sqo
	 hCHct9qflZoTzNxFS2NnDtgtvNqruMGk0MekbUpoUdiqmBbZYgRTQlevqQEti6+Q/v
	 YBkVBIv7ahsN4clr1+PX+drA/zDHo0hWyUzi4LOxeok6YAUODCRbQGpo0jI1m900Tr
	 3L5KzDYA1H59Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93985CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914899359.5968.6489677614582205258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca9baf002ce796c48cf69dafb1bc9913af7c9323696436aaebca0f1abf62f55
Date: Mon, 29 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759148993
