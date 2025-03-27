Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D81F42AA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743085794; cv=none; b=mjod8s/aWkfxjmYqvxe3xvHSOCPQnVQV/k/mDBpnNnBRWBFnIR5F2TsIkcfhtQtY2dZLGe8Tn914kWynxdu++E/t58xaxb2kPe7kQ9rttZr9SxZMggwgPBMCITiNdLt4KnJzn1XK4kbdrh+1EP5xEWOb40S68ei5VCuSmCarJVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743085794; c=relaxed/simple;
	bh=5uAN5z9T38nlaKbeF9U2w8jQlL4RdNHeHflZoISoYTY=;
	h=To:Subject:From:Message-Id:Date; b=fVUo9NDzL8kUOkEMjRaNLnJMWaBrEzqHFn4c++fHPmSizmp9t8TEmpbtxCuiuPr+GCal23hx2qpyAA2dHC5lgL33gUFGjfkISz1e2HE9L0upZ9Frn8Iar1+cxfT1mNUbghmEt2aHiJ8eieWEbhvf7N9rJvXX2gnhqccSMLMDwHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKC6+hUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKC6+hUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB71C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743085793;
	bh=5uAN5z9T38nlaKbeF9U2w8jQlL4RdNHeHflZoISoYTY=;
	h=To:Subject:From:Date:From;
	b=BKC6+hUjnVoml2Go3HvJo2aMxe7+vS+IoPHmbeHi9LVW3EvfqyLwjIgsTLUIMPFr/
	 sdUfLUHiaIEFjdqjuRc1hOJ1OLgIpBhIACrHtHXY10u50RnF3Szqju1jQPhwgtORBC
	 QBM0uXw/dfpWRxHIZfScJuxdYjLrkvnCrOqS4gjaplIEg9CPSoFa++iB4zp1XhJtWR
	 67WrumKgK4kGKn24pqYw0a79QRCIzEihhNfw+Jkoobslq0heRFz/A84pk+RX60K+BA
	 zBYrqzBfbdGOqejH7YI3ZC50ma/9RIge6XnAthmxlNjf3ka+5xMpK4KNiADcRuLHPc
	 pS5kPJL0o/WaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B88C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308579374.29657.12365413964432687400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaed458560f026e246e57b52cd811ee960dd1d8974018d452a93b874b11bdbb7
Date: Thu, 27 Mar 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743085793
