Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1F247F3C8
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791450634; cv=none; b=jullvziXlFCCKd9JhgbMrLiSC1ks71OQg7c83CQJ+cm293w8NunUDMtIx0VnFqeOWE4Vouc7ywyg1rSCDZ37a2M38TCesGFy22C7D91ncFaImnagl//cbrQ3bvkCbkqw0tC6vqVPPXYSoBR0bOz/QUIzG3sqAjYCzguOA3rmzKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791450634; c=relaxed/simple;
	bh=OLQIm5eb+FORrmmiBbIugXwBD1JyYNDWuNTplE3E+8c=;
	h=To:Subject:From:Message-Id:Date; b=B0IJe1GE4bwbW2TDvYzW1CFPhcQhjbYOka9tBfekUph6btwn3cFAVulCdcpNWsqN0DV3ToWJxLJQV91UD2fQIX3Vty1RKqwqjhZBKDjJDJWDNwJMv5oi6IEyQV9OOXXSPrfV53PlmGPBPDCWPn0UYwNzBFeuhgYP1Yzf1HtVPjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOO29uo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOO29uo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A7BC2BCFB
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791450633;
	bh=OLQIm5eb+FORrmmiBbIugXwBD1JyYNDWuNTplE3E+8c=;
	h=To:Subject:From:Date:From;
	b=EOO29uo6KlRcfLXnnOdfH7iV3fNQ1kZUZDq+mApmsPK5x4w4LISJMztP5FF1pi0vT
	 FEdSgoHG9RS05P2hHjSYGITVuu4n9i59HkIiGDJR+ndEhoSC57YjNNhSC0U05CfQF5
	 DgvG0g7zrZXcZDcJUJfD4FbRKoG93Nko8XZiFMDirn7gepdigbE+rXCy+FycNXr2ef
	 PaGAgc/lkTqKWEbZQYP0yV9RXG6td8NTVyG3mO0FJBRxhZpjzfm0rJG/7KRD6x8zYl
	 CgRE0KtzJNu4nE5wT+3SKcuU8vJcm+MhFDHpPyNKLGs3Yb+ZMr9FAvOgZDfwOy9/oO
	 yrZVS3fgfaqQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6E6CA600A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145063370.25687.11803071691045470791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700e05457236994c95310ed21ab58cf2a991401245a3f42819a53ac4a09b6a49
Date: Thu, 08 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791450633
