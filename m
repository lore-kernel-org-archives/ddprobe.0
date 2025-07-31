Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15008225417
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753960194; cv=none; b=DYM/eJDKwDbkhKHG+xOl5HYUfNHa2uq6zMOidfvIRkcEk4aXulZhmeC0Q3Wed5y4N2n0alWIzRWUibxoQzZpx7SC/5dRqoP4bBspeccDa1djUCAmSZHSQH/uqMYB7Y8elKvubI/Rcz8w0vRtAaifl+0rZq2JolEyPUxlmRxndTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753960194; c=relaxed/simple;
	bh=WOmEWUSuhowJGecgy3hzpXc9gsyBIDCB82OqAfDDpAY=;
	h=To:Subject:From:Message-Id:Date; b=TRThyG+YLOxbarsYQbO2KLshTZfynyZ1ryjkzL64HBEfeC1oWWVrqDC1sSd/CJJx/7UN3CTS6U+6erBLd1GurRo9ltjd2AvDbuQvd8u7P2KV8eRBIo3WAH+fGdi3Hs1Ko0vaWrfwQT1YE3dWDlZZ+5suYsguUtN1eOy/8TqDKAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZVniFTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZVniFTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9EFC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753960193;
	bh=WOmEWUSuhowJGecgy3hzpXc9gsyBIDCB82OqAfDDpAY=;
	h=To:Subject:From:Date:From;
	b=AZVniFTFkoPpRRvrUrFF11NiZYVyaisMJ5hy4Jv3Rp7vE34eqp8tlwOxAOqdN4UUM
	 KMw6cYpGvKAG0FPeGqFOeoFnwTyJP6F84H7o0awfVsrx6PMs/QnIPfhLOJq3+0VLKQ
	 47Bj/rufQgvbtOO/99EEKZKFafPJqObhUNTLilPciDYEG8ReRtMSGVaXcuztOx8m6W
	 ms1gjeJDouD+pTKIUAIutsZBuQoKx0JQnaevCkmAx+3g117XHfTQnuajodSA45MN8f
	 2NjpMBsWBlejxbOasZxljcrUmp5RccbgKAgEqjS4uVAKxrPyrG1fMkbnZC23SNWfLx
	 5OnOhEOiprLGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC2C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396019357.31142.10444855825230202376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4fe9ef9396ce6f95a12bddc2dcd896227d5b059b8698d141044aedeac93ef77
Date: Thu, 31 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753960193
