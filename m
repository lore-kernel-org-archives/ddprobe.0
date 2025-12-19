Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388AE2475E3
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766170434; cv=none; b=lXW1VezvfQ5FtpQlaknDKkf34h/WneniDsBq4ieexL48/+CZDB8hHjSZeIdSG1tOARGxwpGPMguY3wAtO5gk3cjKcgiwxLMhsuqYd8kaU30UkIdrQeRuhVRWV6vDUTwzs29QfJPmDksMviTnV0Q6cMEntvYkiIRAMZnsXtGoIhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766170434; c=relaxed/simple;
	bh=xRYNTqCaCx0MUfwzBkjqpAozqUHoKC+wY0R5eGX4U8M=;
	h=To:Subject:From:Message-Id:Date; b=bpmM9Eay4Hnii4ZmOldy2lE8vtF7lT2z29uCui21KL3OeQONFWK7zxoJ7jLTBXq11l6UuVUYmSY37voxS2A6Xd09cFEAaxutwmqW4ahc/txxwTqscuk9BJcEJfG63Ep27zfK83qNB1KnShw57C0wRfwGRUi9sGAwJdKfZGr9itM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKv5ZwyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKv5ZwyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EC8C116D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766170433;
	bh=xRYNTqCaCx0MUfwzBkjqpAozqUHoKC+wY0R5eGX4U8M=;
	h=To:Subject:From:Date:From;
	b=WKv5ZwyH43Ib5V5WTmQF00ZnDLdMgyhG6VwcxqDYyLQyi5hrANM01QiEcLPbTjSE5
	 BldLBOncqwevnFhiVUdSbRSkIFbavChJTp12DHHcDEA1TiN8ETRwF43KUR66WxfUNk
	 2QNGxgUIsDBLMgD3ZhR4IUCYs88xsurBtGf9ceSOU2ZAz9DdPR28pTcs+6RhQA+a6L
	 P+icnz0mOL20dVhdRS1IaSsK8iE6A7PRPgLMVJGyczDXgndz+bXqjIMyUFVuCPwaBj
	 i1EUKb4bWPKgC835qKBN/+KvKfpePZi+sNLN8sO2Uaxku0NS4xIzabnaCmYtiuTJWd
	 rIVKbaiiRltqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E3E66882
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617043358.11717.9224458480630072070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de1407e60244567c50bb293a07b0f50c5887316141a3b02c7ee3ecf56989b90
Date: Fri, 19 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766170433
