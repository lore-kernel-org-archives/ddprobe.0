Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3ED27FD44
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774212894; cv=none; b=P8DWyJzeLmCJWXSLdzJhMfa1wOxhaql+tOqnysKsoNkPtx6zXeoR7bpdGVOcQTmFwhUtExSAHcDyvzViJ40x7ClGdbze+DSGg+FoLkb9pxvTisBR8LIWQM9dqZVODLRYybeXqIi6ujP/1aPClfU+mQaDSvr8cVQ2HlmSX4EzV3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774212894; c=relaxed/simple;
	bh=ymQc/bOW3cgDASuMmMfCG4UIo7p5u6gloJj0L4I+YIM=;
	h=To:Subject:From:Message-Id:Date; b=LB10qztoB+UFoUWGFo9xSLvg01KJjWE7+YGSAIxxJTh4n9PwqjyPvZef3x7YvUAOu+btBYPGs5/qepiAezNTCHFHKZCsyfIoG0z+wukwDYnp77YeDDfnV7P+Rhna1d18inE5ylJdpLpDYKcCBr45RxRux2GUc717qqMwA5RtweE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeKnDNZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeKnDNZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94F0C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774212893;
	bh=ymQc/bOW3cgDASuMmMfCG4UIo7p5u6gloJj0L4I+YIM=;
	h=To:Subject:From:Date:From;
	b=AeKnDNZCffJDmT3do1lrytUSFtegnpA7ubxhzIJ77QQDSis+plIpj1yGdqlO4uI1O
	 5xNSt4I/INZqD7CejwZoI2/bhtRtLHNaigAkHr17pqxygnxAg5GpMzpxVL1SMwK0oP
	 jtv0QIzk+Hze43/hW+o3NG/BK/Vfc4PMUaBd/o745wCzXqIl7Mzi6llhRhiXOqyDt6
	 gRv1nyABodyWQyXl/aITq5nd0xzEHjL9JwOSHbK9VCBsDdB4ILwPe9bw1jfs6h2+92
	 CGNgIXNv1bKikEhMnnWY6oX+2mhDqwJOj2BOUvtPwfBhn3lh0JfXhNj01cOVi4Blt+
	 EygD8GYa61O/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A53D58CA3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421289358.5961.12827341499597256717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258057ea802194f4a0ed82de2bd5e64c4fbfd850e82917c746cf430b739ea050
Date: Sun, 22 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774212893
