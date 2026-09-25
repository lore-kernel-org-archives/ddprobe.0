Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F1A493646
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790332234; cv=none; b=UCgIK8eQSTBLkxzBSh6M63tckN11Y0juleidYIFSSnv6SIYWcjMiuW3F5VBvu4eyZnfuEYEbGjVY4wg+g07+HriQrRDGVTRlfL86Rs/nIgtVA9YLjrkFsBogTO7WcvYoG3NqYeVYmC+6Blfe/cbWnf78KkE9Q2rJUSHt7P94HA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790332234; c=relaxed/simple;
	bh=pg3Zfgvk9XDtbkxkw/5UL9ezs2f3aFHCBXEhXLd4bAI=;
	h=To:Subject:From:Message-Id:Date; b=J4XjZh2k1v/ROeTwGEhtwLS3HeHaKxSU+SulPpUlK4cvgKSG5qi0IiggNMkl4scHZ/LForb5xse3P8Jun2g8qHufWU6/hEQLaVdBQkb8PWj9tbL7pue9XOAM0MXfdTtwO5sSRnSLT9B879O0ViNsNFpogzWZRNnlmvR5jOOSdDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtCCOZjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtCCOZjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01AFC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790332233;
	bh=pg3Zfgvk9XDtbkxkw/5UL9ezs2f3aFHCBXEhXLd4bAI=;
	h=To:Subject:From:Date:From;
	b=YtCCOZjEY9AnC6ZYDPNF963NQsMimSFR9cGNlxoEV7IQa2bQtsWm+0J1ESBZaeG+Q
	 vw9CyXFsfjB5BAvVZ3ycYUfHJP9j+BPfgxxGO1m79tdWUTU93Xds+11XRb1lMJLqW8
	 HrjrbVDI7RLT4SMlvZsj25+9QZzs7Oazr+pZaY8GS91dPiyv0p/OfY/SGq1H+rrMwF
	 AzuMGQTMzFy5e/YjVf6qz0n83gz9IB7AMB2I/u0ahr080nV+nEz9UMiDCwuYmsbF6a
	 ouio4blarXfJSrBaQzlTSn2biBWaz3/kcFZNjWoNxJGQ7Ue4JH4lgS4UTOVLH0r72Z
	 hdPk3DYfXzIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EB0C98324
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033223373.20801.1901761167861211558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6ca6d663a7e8d6aea6633a9e493c99cb77528106cb770f4037a21bbe9502d3
Date: Fri, 25 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790332233
