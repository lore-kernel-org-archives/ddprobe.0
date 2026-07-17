Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4324831326B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784297314; cv=none; b=Y8hfi7WZHA87H7P6om14QbVrNB4yvUHcwRatFZ27Cf+5QpOYejnhvtOU9qAO5GAR3YxdZxSeJezqKOgE1FQKkj9XZSmQhEC2+RQPnD7pe0ApgAFSxSSRq6dIVxramT4rQ4OJaxCPXMVLVEf3YirRQhcfByHwcqkHl8B0Xr20AYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784297314; c=relaxed/simple;
	bh=t+QZ37l9OOZrkSwgZPDJxCPfW3ALTXTRYSHxBUApC0k=;
	h=To:Subject:From:Message-Id:Date; b=lMk9pXloMgtZgYyzPUuXsYNknPndIErUv1sZd8cN3fPrmUTiypi6dFckfuMqis1mN5Js0n+T8U6lmfEoDdhXgHSr1sev7US0oUasF4i9x1cgL2AK2nr9U+kBb/5YsYZ1RORxJAJCWuAWp1HRZUlJVwHiPdrChvg+weJUDMjrj8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHevPq8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHevPq8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF544C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784297313;
	bh=t+QZ37l9OOZrkSwgZPDJxCPfW3ALTXTRYSHxBUApC0k=;
	h=To:Subject:From:Date:From;
	b=UHevPq8mWCLBg7ncLhr8oq3DkmlmOCgVNknl+Ob+xNUZeN6Gx6p7gA56yKn0DSSmM
	 N8ordAtclioC9W75goeHlcXpagerjjRIvT2Sr8xsUZblqTiK2BQq2RZVcU9Pdy58CN
	 Wko70KMfrwFdNZIpJ2R5+SqyaJpGVaaTJKKb7Nayk6V62NqB2ReVMvJJnn2Hx3eVYH
	 rFTUoPAiRxER3CCmpWhEtFvzGSlcPgRSD27qauREgno5LMCSOwiN3yPg8Vcoroa2Zu
	 FXBUlZRorv+VisI/gs3D5aU+FBt/cIdSkJG4sbbsBEu5CoKLg3xby0K2YhHkw+e4kn
	 4flSOSZVJ53HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD9C4451C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429731368.1928.2874046845442105941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87a30c60119c615e2cc221f54415f2b7434f6708e24dee3caa4f0f44c70f17a
Date: Fri, 17 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784297313
