Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EA1328B44
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771260294; cv=none; b=CGZh9kKEV37V2nGJ4WbVmDnZ2qnweJxdG0CSqhjGO+K1IWZWZ/vh8wAEbXYAIRIHD49vpoB0weAgMA7UDfEKPZJRkP0UpK6dKk3OfZmqW/OC+2wjCGYjTwTfg02Tme8gyjoTasyhutPu2Q1u4j1pIsJEaT3noez0EMPWU7ALBP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771260294; c=relaxed/simple;
	bh=XrC4oGpFkQGmL2urWN47Byod7igFqXYdNOJEI2GGOcM=;
	h=To:Subject:From:Message-Id:Date; b=odgb7CxEyW9mrOrpXxnWJphpV6x6B1PJ5JeND4BYZTxlCl8OO7g6M98jDhU4jb2HJMOAgftmAiVCPcm1K4EttornQQtEcPu42Xh+vdWMfCvBTKQ7SfrkshoItpeHcydOvioBxVVJ1+z5X3nUTTYEYFAh4tPiKzxUC87mACh/xBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEzq+HSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEzq+HSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB717C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771260293;
	bh=XrC4oGpFkQGmL2urWN47Byod7igFqXYdNOJEI2GGOcM=;
	h=To:Subject:From:Date:From;
	b=aEzq+HSve7kx+LuSVj8EgJ+FA82xxQyA7SVoYhhLQxJCTxTffeI6yxz8eQlczv0qB
	 I9YjvezAsPWlZDu79R+C5rWkIop4L84mPiBuQ7vVtVprsERj0nkhc6bTfc7RyV/aUO
	 EwY2XaNyS5wedyMbKQu81nY0SIkDeFojLyBIa1Sv2WTYObDbrt4QlqR8FeLKp0FM8S
	 2BbNl1tS/NsrQEzdXmNsJW8VwZdiWcmId9iOh0uYGbueh67oxa6mgA75D1/+WoBkVd
	 F6+IQBEtdIQkMS0D36axFrmTqLrldA2mEp7JqsKlaFd6PkPcC0ctiKpWJKhk5fxC3v
	 5ErDLWoCRRxBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9694AE81A44
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126029360.16719.11307157642428622503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e7254531a0cbfa3b3b1013c887c9b1627fe4bf70ae43818e3eb813cec04aae
Date: Mon, 16 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771260293
