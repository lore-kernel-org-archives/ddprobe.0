Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558E72594BE
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744397394; cv=none; b=XvFN8b134UUgUFNVg5K/9up+kzP/vWmn2JMRiXjSJCvxfxwD+DxdP9/8gfNtzLIOTem9i7IhOkpQQYnOLYRhTwR1/k9S97+jFR7fy06M8wSpIWurOYygngiP4Fm0IgBSfbXeKoXN4p699iG480QwGf7neGEqP293pL7Xn3uBK7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744397394; c=relaxed/simple;
	bh=K/SEBDOex+MZkXMpqDIsHZ9bUijF4utjf7v+cPuanZc=;
	h=To:Subject:From:Message-Id:Date; b=rt3Zb0BljqfIlQvsJQkrTEnHOX5L+qLbEjnAO7hVRYfwG2+OVdlykiBBSpGBl4bnx0R9Hq0cIk77CFRybAmIyXCvOP5g86CPJZfqczPAFJpI47CTWIm9JB0T14M8qYgpLP9dT4TKa/VjiITSENlrLm7HAAdailRz3A2Ui+7v4Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ST9752Ou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ST9752Ou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE607C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744397393;
	bh=K/SEBDOex+MZkXMpqDIsHZ9bUijF4utjf7v+cPuanZc=;
	h=To:Subject:From:Date:From;
	b=ST9752OuAy1xSVbvpnOA3iNkTOkSqQUxBygcaUgHUGN9DEz25KUg449plAVj2h53k
	 DiIg143Yd+YDIlHw5IOgfpuQSFgUNJq0KgJDwCco72dOgSWRyaxL0dh29wc4Zj6yjn
	 j+3CxSisIbiFdCTW/vyu+cramv3qEpcL9mlbGpJ/XoLDeaIyHaJOfAmQlvTPB5jOxl
	 dYtmUWdq7jXFTa1sVLqXba9MyynVOLtAsp9yUQeI46MM7WF7St00le8TkOrUI1koqF
	 K+UqsZgXHA1dknYu6uXpM7uxvRp04K8USO0gLiq9O08gEkpDz6rjB5d8L2JeWNxriy
	 Cwlo4xmP97ayA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60C0C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439739366.31077.12031484634579781568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79caee2b03040f453bacb3ec66fa9bf0835aeb159f2e0bc65e34422363dbdcad
Date: Fri, 11 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744397393
