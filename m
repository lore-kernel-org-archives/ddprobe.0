Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2613C3FBB3
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736481354; cv=none; b=CggC1nUwV2ncGFH+s/zn/3pckv/9vdhVi25ke2u08K/71Tf0FvARMu2p5qnnL3g2YXJGFzRaCIymoYnfLWPfMDKMVZ8tG0AZB0+2TdMg/Z/U5wcaWWaolArgEL7ZMRRomTAOUwU+4XFPbZrwqHFLUz7dFhPhWyksA1KVHDlDUnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736481354; c=relaxed/simple;
	bh=dgFHFjkfIlz4OEyc4Nd2D+PiSBOCw+FfZ2e/RZ/++tg=;
	h=To:Subject:From:Message-Id:Date; b=mKA3v8X3ZVF74LAvcfMTus7v985ASTMwg7hsz0vxWNKIHZ6pINBa2RfY8vaY0Q92JeAYISDtdLJi5AwWtcSfe+8PZjcD7z29OHFT6iCqex33DDKScoRIt3WdkiFONbrqOVJfRVRxF+Hz6/tNfYAC8RJSDY8t/f8QU9a0MNuCLFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKqcAnkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKqcAnkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99E6C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736481353;
	bh=dgFHFjkfIlz4OEyc4Nd2D+PiSBOCw+FfZ2e/RZ/++tg=;
	h=To:Subject:From:Date:From;
	b=BKqcAnktThzBSGhBUCjxoellMm0I5oLRAFcKE7ZrVgq2PUUbS8/SROVnmtHHF8oxv
	 VadJJIWiq/nBI7csHb3oh09FN0kVZXhRc+j651EsKIxl4VqF7yYoPgpM+CUZXJrOSD
	 8OXc8NLz7FAfs9qcwioE0slyIiNN59FJWTq7spYTbo9t0wlod2GNl/NNdwvd5HAasy
	 Eg+1mDdcinSNhspRDd7AidexEV16sgyqwLm2G0P8+eVQeMv5ffsaJuBqaWwSWjplq3
	 VeCbatq78o9hk8+b8Ai2h9lFeWFEHSCZ+gVn8wa+6ygRD+zq+ihHu8WMfpp2iRgyYp
	 m5aaGoH1tOlbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98510E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648135359.26474.3685375712812472386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850e476e507e97ab3a9e27edaa55d43b34129a0249efa4d9c25112d0757ef4f5
Date: Fri, 10 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736481353
