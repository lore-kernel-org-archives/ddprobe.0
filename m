Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDA41DFF7
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742715594; cv=none; b=it3zQxAsGKe0C9HrnVQFs4Eflr5qGtAVCPd8LKSebu3LFfE81uzGgf658WpTqJDes6nmBXvLayuqDNgTMmBPxB3OgZxwT+mJOrdv/XH1DRJmbiw92iikJeElHHI/U5tTCcSvC8QCHV/P2o5Y0cFJvVtrn7FcWOJOsriHO47M52M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742715594; c=relaxed/simple;
	bh=TWZ2UtivGjUz4BmHc6llqKWuQxDpLbU0kh64O/6CrvI=;
	h=To:Subject:From:Message-Id:Date; b=mBWauJUHcye5vI30UivXjzZwB7SwhKGjllSFTGVgBATQBfjA6kPao0LIUZlbLHIJaTU/9Crl4z6Lb63U3SEm1sUVn14Yh+/3Zu/fsdPpDH85iMJjcSxZq+7yAAJlj2AANPSfCNdjH1/tbnIRR5V1nCaqHtVtJ4KLdgG//60mYok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fbnama9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fbnama9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BD2C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742715593;
	bh=TWZ2UtivGjUz4BmHc6llqKWuQxDpLbU0kh64O/6CrvI=;
	h=To:Subject:From:Date:From;
	b=Fbnama9wg4hWHtVJMsipX2Oe3GqhDUebLwNQVTlDzg1/JjZRc/Dhr24cWne6cMUMT
	 Y7qq1SF7VAQnB9IGLVdqc3yjaPj1b2383jhu/TUiMuroeL3nTcHzFewYD4hGCefz8p
	 DD0USFPMtWtXmByPcCDvRFHs5fcNSm/ohshiHiXI/vlKqVVKGiXeu6Nfi5IR7htp6b
	 kiei75jrMEpA76p3SJTPtIUQpDNvaSb1rbAfnQmiK3IC5OiO04XGQCBoLGh39JY0dr
	 yfVLNzC2aYVpaNkM1JrUogOhJq2PmF0jVggotOdKlDGk6jOaE0nz/7we+cL1KRcU9r
	 eZ42owH8WYc4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EDCC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174271559364.26129.11306728885642589070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8d203e8285a99d02101f3532e1e18c18688e0457d52fdd58f1ff6530055ac2
Date: Sun, 23 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742715593
