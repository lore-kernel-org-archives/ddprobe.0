Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219962D052
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760276994; cv=none; b=jPrU07ckEiNGtMlX5REWVB9z1HwQkdniFEsd0u1DIGJKgX76J71UphLm07lQ7zdcjXwh4jjc9kVNP2WuDdEONh1ZCFE0QY8+9mCJcpemVAIy6JaFFwE+1hsVwSb5xIWF42DJyyZoLCYznXQW/Yq8L5hLMr9z9FBHTz+eUiA12i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760276994; c=relaxed/simple;
	bh=4oQ+f6+ITDx0zJubfIpFKHlv9AID749gQVm/6gwe7x0=;
	h=To:Subject:From:Message-Id:Date; b=YOC7Tt7JRtDihVqg1Cspviv7xfGO4CdnTevwHQdKQWwZkZ8LmqTRibaZMRhlGPIAaWRamyhQoufup0Jno0D9BMwc/ImcRsHqxAAxlSvMhbWfkHV/V9va/vCrsZdIta3uFa8Gi4OxgVGmCSIHFL3hai/8Qq7J9ovAnXqwFe96w70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8vSsXaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8vSsXaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A08C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760276993;
	bh=4oQ+f6+ITDx0zJubfIpFKHlv9AID749gQVm/6gwe7x0=;
	h=To:Subject:From:Date:From;
	b=R8vSsXaflemqCYnusrG+jhOdZ8qtET3hLmZP5WLabQP5ZwNqnmPJa3HdN9pDmVSeL
	 VHbMl6tE8sHMSajccCx5WJC9b5njHWvdq41YPHNc1FSpXbXMwhEkMhof2WiVHMgJ+8
	 c/OOHKYTPAmbg/tMVT+n/EZE3gWDjHQsCXKUBSR86yboKHOTqYQDEM0r5wAr3rLaEr
	 evxg0G32XwwDOv8Ob/N7YBSwiRVEKO0EKkU5elgf6UM7rtmXBoaV8IDAOwJ3vb/OUF
	 KxV1E5Un7LUApeka5kiiWlp+zAB+Q8XVlNm6sbfUzg4aSr6qFk6KPSeirQmQ0+2FEE
	 scgu0xBeSIZkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921FCCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027699357.412.7032417505669189122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc20ae7942d2f1b2af0d85537f57d9e88d121c535d8a692ba51f8feb3cc0878
Date: Sun, 12 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760276993
