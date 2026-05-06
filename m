Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19290472792
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778079454; cv=none; b=UF5NhYe7FH1xmLCNDD1+2BLGu0jlLRB472Rneqt2/z/eGi95uU+Q2KDW9Ly+SyBSb55WUMo4RfMshsVlgyAmETVqR0TeK+Zw2urHncxKM6xdsq5FLM41FS6GnVZjgAe5jzsUyPxXyQitSz3UN6XZFL7Fii+7XSYDvRjA+i//9o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778079454; c=relaxed/simple;
	bh=4kOZOULOEDwuuR4lFiJGzQmQgDIVIm7at/9dBoK4xds=;
	h=To:Subject:From:Message-Id:Date; b=FB/yWXP7pQbugil7CJNvYS1DBkmnpCk9ZCpc+4WqANk5qeV2myWzA3RYDrmecCW9AfAUx0BziUkVFEsg9BHd8/2TtT/knxKSjbtFqSN6IMUfL5aCpND8hnqeJvm7vtaL1B353iJid7sRcHOnA312YtUmxf0D6YY4gB6RuikClRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQ0J7Vbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQ0J7Vbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96EFC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778079453;
	bh=4kOZOULOEDwuuR4lFiJGzQmQgDIVIm7at/9dBoK4xds=;
	h=To:Subject:From:Date:From;
	b=XQ0J7VbcvWqcgfK1W6zJCRA2sfy5H5HDuUNe/ySKdxUVTehBPLilQrjkg3AVmG7kR
	 uEFtTyUEl49zhGlZYsriSyix7agpAu4wXSwkPZwHj/7PxvX0F5OYCOIAsIM7ol+f8k
	 rJKodW1rCYc/ZrhK/G5/Zc4DIm7UjU4yf4MsSX0nnpebK3VEpcC7TWvryiZfXwR1gw
	 dTdhqvHND0WB+eaOpzr9idaNQ7Rkot5i4gLYoACSgTIDFKRZgHtxJl9lN7O+AFY7+C
	 +7/+J6BfmXMCzxxtXZ4NhzrcxZAcfEYLW9OmgYuIgAXz6qsWa1itkW51ZwhaOemDZJ
	 iLWzFzHykDmFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDE7CD343B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807945369.6885.3142783292766277291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7d50b7e0ed7d1acdc1a0ffbf226e62370fa5b7ff7e1b56f73d1074519cabcd
Date: Wed, 06 May 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778079453
