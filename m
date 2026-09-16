Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B770233945
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789531234; cv=none; b=EGpF0UeL2dBptL5O0m34LdyaecsiVrQrEcjn2HBrs5O7IpZ/KK0CCOJ4BQLQlJFY7JxGxZvwkaipp9MfhrjO/n/OuvkzjclcRj7Lyh18NrVDmj0xiBQCKLCDwcYlIXqHRGLM8+Zm2GOfdsa4eCf3bzueIT3bO4JCSBpc+QeLl9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789531234; c=relaxed/simple;
	bh=J7HwAPvQ2scnzgIq0ORMaOXk58aO8mjXYsMNxztpd4s=;
	h=To:Subject:From:Message-Id:Date; b=biBXfDF5fpTqfplKTRg51g/bhXfwq0IpuBx0Syi44WPRvajNy8NjB19F6bG7ggM53tvez04840KiYlCH/hUip4vHi1x7MGclMAXR8Rl5qXnawWFW6EWVvMMr6Oohc/1oV6wOhCj0RyAHD8HnidDmY63JFADsDHtYIs7uMJbNx0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqkQecPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqkQecPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E17BCC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789531233;
	bh=J7HwAPvQ2scnzgIq0ORMaOXk58aO8mjXYsMNxztpd4s=;
	h=To:Subject:From:Date:From;
	b=fqkQecPvtM1O0Oi9TN7DHgvYrLuLyYbGKVzSJb+pOpw3pTIY40dWknZ0nwgaamEjJ
	 TzHZssa2ZejAquzpyu1GOFwTIUrEmaslnhoTRsteyZkdl36TquSHUBFsK9I1dALBbN
	 z8GjuaitXJ8RBgKEgtAxmtCgftzYIZZrm5anKnp5KLo0li93iXcezDs0ul9sTgft0o
	 LPRxnHNRMWTjPWxPycYizUP7zn76EarAOv9FCD43pABIpVdtkoZJAsgzkSuKMEt0nT
	 C/Cnk9ea0HSRwUFigNDRiX0CZGJF1UyeMDi4TUSp9vOfYR8z7vkl7W2PXrGkWp9CKy
	 ute5gS1hOynmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6977C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953123373.23004.11747126801940627197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079c9e09c3eb2edd50d68ff0c334d8393ee043a1e5b8ecd2db20ffb0a48f407a
Date: Wed, 16 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789531233
