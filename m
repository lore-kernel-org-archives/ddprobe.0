Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289D532572A
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766595234; cv=none; b=oY2+CPktQjDMAO2RmKyrqpr9vd24x/K4i5bTIhLr6mbyT4GcuI94EHz+hKJimGsMEUMviWhn8tvke+qShd5ymnrSLAnSC+UrNkxK/iqy+Ah8RWeVHjXfqKqOlQmcfF6zRGstR70quxavfZHzm4LuXq9e1XoUVD6QJzdLrnnM/FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766595234; c=relaxed/simple;
	bh=dKbdYKA00aJMl8OPnmtQRZr99Qiyi11w0+CRTngIcOA=;
	h=To:Subject:From:Message-Id:Date; b=ZtASDDMwT4keca1jCYLiOVzfdWjlZS0xkSNw2KbSAj4xLWnoMcKBpy5ofU+AEUtutqSBontDJHQ6eJx8WxH6ThWrNSW0MBsbD4irsBFxwfe+6DgSa2Q5kQBkzJ0zUcvVDko50aAnHoey/DUzv8E95DZgT1iky79wN+q8V/j9RlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxXuUPrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxXuUPrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F85C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766595233;
	bh=dKbdYKA00aJMl8OPnmtQRZr99Qiyi11w0+CRTngIcOA=;
	h=To:Subject:From:Date:From;
	b=IxXuUPrg0WoJuo9GGVH/Mt4iFFl4K7jkZkK6Sg5gb+SjRANi7Q/8sifo8WieXlHJO
	 xyw4yWZ5tBgy/1CIOm0rc4jC2NJFotpbn1dCkeb6zR/T3Tr6PZclDzarBSxS3Ykf6n
	 ph/RdGoYH3DVSniYeFtrLtnJqx6NYyNQjOJxWSPQZbw0a8j2CCu3YGxZHCUcwFj8A9
	 WlBykqMl8pQME4HFSRMZHUoFvdeQAdkVqKECpAudSbmbe/jm8Vg2FKIlpptyTiwZZc
	 SbN21uZA3ZPrBBs5UTRmLmzCuJHndyEvYZDpExRyDZioNYSBuYFob99ASFxPxHTfE3
	 lb8oHiieI0vcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C2E776C0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659523358.29367.11004805305631617537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80340b2b6470c4095d85800020b785caaed41a5f44ed3fbfd9cf8c997342bc9b
Date: Wed, 24 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766595233
