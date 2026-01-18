Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13172EBBB2
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768767233; cv=none; b=LY9noGRoSafCk0Tt7vp1D1jd5EIHmtfNK3HQ6hiRSwW/XZYkeSvkH9U4WD7gBirjXC6wXzuu1rScWMY4JKCQ/eYDA3z6ctq3oyDg68kCXjJ56oOQf8iNBIs/z/SznEjI1EeIrahSsENdXiZBXC7ScJf2HUD9bWSWAafO0xCFB2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768767233; c=relaxed/simple;
	bh=nfy8nAdXVQmkBTuby1/NUHcfLylmQCVF6hZpR+puWtg=;
	h=To:Subject:From:Message-Id:Date; b=g2BjT7tMwUGaFNz0oZErsHSxAXOYo6INhCfKBWXpLE5O8u+gvAk921cxgwPSjcoB11QVOPsV36l5lzJpr3A0XBwNhwm+bzIU5vNqLlXViUwPCISps4bw02EPcdZ3ulkNEu1PeHs4Yg/nI3dRiG+blogPuBEsycvs/tNR6taPaYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLYG8cGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLYG8cGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F02C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768767233;
	bh=nfy8nAdXVQmkBTuby1/NUHcfLylmQCVF6hZpR+puWtg=;
	h=To:Subject:From:Date:From;
	b=gLYG8cGGWsoPe3MY/Zyca/K6QQU73LMGdF5JmhkEeNkA9E3eCha+GO/KHb2ntkPRB
	 b+oOLeGZdKYuiOlV7hFgTYrjoaIRCYE4iWBfIDmkNW+0PgmkeaT/sQkT5FpicFth0+
	 OS7Mkb7qsgjoaWLYCFcA+9oqbKW4S8WxKeBK2eq9v/+5JDTsD1WrRp6qsZiYE/09v3
	 EPQyacxkVvK/Dp+UEfkrYHG7JtJT/4onu3k8ms0aqTwSo/xV3XbbcWm6v1LHJJkN1W
	 x+TK0Xd3G0D76MNi+aI77BXqkyu00d01GsPF+umWONEIe/MCOImE4AIg1zWRUWMXJr
	 bdppcnKFJuUDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6CDC9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876723358.6995.8585002574320304012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14df1bad9059db4f0f1f36d171e4d1c0c302295051c71139b00585749d3ddcf4
Date: Sun, 18 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768767233
