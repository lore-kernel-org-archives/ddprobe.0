Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054A53624A6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773039294; cv=none; b=uLNssZZQn9iYaTVU3N75qdblCBs9DGO3PLdsESgk5AE+EHG8Fq0aXY6gW4WoKgxD4C4F9BlR8OajYhjCNqV0B5H+06N4oA6ZsGXNTDw8+Q22uSoEP9GehMFAd8Wsz/rGdxc139LzzxKk5m8vF1XDkV0Vd8klvdTZxAyrYDLHYzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773039294; c=relaxed/simple;
	bh=AbxqTUijVBe1jtvpMuxEAgOzePwdcIGGpGbmpPHBOf8=;
	h=To:Subject:From:Message-Id:Date; b=assjJpFhWtT2Neba4y51Mq07FfPX+Rn6bbpz3JT2Jm9D0wcks+Qk7KPx170L9isv9d+EWrBKeOyrec7SfkoLPWXylTPSDt7hqq3x3qmMCBSB4jiRbXo/a6SCkOuHJQIMSQZNcBHCOQSfUy6Hz1CdFfGylq1sd5LZYbMwQ0A9c4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJyo7ARZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJyo7ARZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A258DC19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773039293;
	bh=AbxqTUijVBe1jtvpMuxEAgOzePwdcIGGpGbmpPHBOf8=;
	h=To:Subject:From:Date:From;
	b=HJyo7ARZSktS1CUHuEc7hGS8soqxdXY8l049Znsk7CkMukYAy09oUdSZ/3NWg//M+
	 7dVb5J5y8Lz0MCPn9V2/+IW3sO6UNZxFwrC3WOIEMoZdld7HhNhfsGGJ0E0isNbQhK
	 UifyfjaVRtydGcq5iJMnXERxdiDuwy3+sWIh/A9wbymMoIftZmatH/3LFZtw3cg5gx
	 M6+EeB0cWrjiQB5Tsk5okFal8sFSZQWseaJcchCd9jBpbces++L87cr7BMfDDKhyGx
	 Y8zQGo1/llFbxs3Iy8ndR5qKnFBtCxD5MwsepqWtFTjRH4mjpazvk//K53BdCSUdNE
	 M044h8zUQo4Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90880EF36E7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303929358.26167.3295317836787693337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69f84906c50e2bb70aa78de74146eadf6d66e73e92af269e8989560905594ae
Date: Mon, 09 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773039293
