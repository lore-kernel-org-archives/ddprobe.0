Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1651A214A9B
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758606594; cv=none; b=iQKb2I9VkxPIFIoAoYv/wn20zZNcsey0k1KSFPg69HowgXuxxlbkkVD+twR6njta5uJJRysdDtvDLpZ1TNieQSibI/MMKHrcZfZqvlz9nE/dHkG3W3i4uXV/VtgX8WKDoY7dZWyfx+o8D8MirtAZ9HewjxCN1f8lps3Po3bWRKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758606594; c=relaxed/simple;
	bh=6kvOISHdkrCfpJLZmP4y1lvfIoeBC5UgjACYCuqXA/Y=;
	h=To:Subject:From:Message-Id:Date; b=k+xAQjNvqbKkw3Cb404u8DV59X57sX9JOOp/KNgrSFvrLFGVquNQC6GBCc83s8P2GgnfT3qAUkgA5xlNeuj8TyyB9VV4wH6YjSMQla6YVJX3tYHRnT5qms38OMrDZxR+GwUeK7UDv5nKstOJ7kZwAdvRqJ0RGdD+0xBVKZSnv2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVPOmvsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVPOmvsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12BDC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758606593;
	bh=6kvOISHdkrCfpJLZmP4y1lvfIoeBC5UgjACYCuqXA/Y=;
	h=To:Subject:From:Date:From;
	b=TVPOmvsSfWiHuf4wLN3n9i4Y9ZxTUGLwX787SIlFAANMcbhGZZ11V6DFwbmxfjX8W
	 10ijzauAnYYXoJpEyAiDF5cSdHC4gJKEBkSgl5WwJ++Yf4dbHMB5cK3aH3nP/NRzMB
	 Q8teKY0yySTbbJS+v61Dg9qJipKEUnnXxbUCoXUztdhSMH2NL+n9wDxwpnZLRNaVbP
	 AlBAlHDUYqBiV2pqoW8ZFXr0VvLICq1vTamPgTgojyWdk8h4y63qfzUNUhnqK7N807
	 V4e2s76Cw3haD+jmAgV5i4FZSEf/kpNdZ9lF6AfBij2BTlmGaZkBdxNiNp9W2Om6ed
	 oTfOX/OL1NQig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1DACAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860659357.18654.1963233246909121572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94f5478869067b77e048fae27dc77fc0dc8cc8e42c864c9a1d29b1bd70a8330
Date: Tue, 23 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758606593
