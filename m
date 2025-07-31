Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06441E51D
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753937993; cv=none; b=dBQ2MFwEM3jUIf9nYSM0/Q7kZzqsTASYE2Fzp3oTGm0h8WDGSNB+OVzbKBH6mjcruQsgHLVX2F9U4HF4UqKPbhE9slMwkXUxE8tq/ojfyTDI8JZ74zb2pPkDU/hlh7X+scMd0hb+wxK457PKBfWim3Y588v7nvOdbW5q6/6qqFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753937993; c=relaxed/simple;
	bh=PEKE6UCV/4vgl17kxZEgQsAK3ybk5E2bYZVA63B0ftA=;
	h=To:Subject:From:Message-Id:Date; b=DiaVxP3FRMrwRp3JZxpi1MJ1bJNG+GnCS3/L6w9bfwPw+eIZ12ax0/1to9Br72OA+xYrYhpKX/FXyygosrya9R87nN8Gao9ywXSNtAMK9u2F05SbFztnIF9bWFYBm7rynlRCEvA/5JBLfstlD8vB++JO5nFBX+8I6zHtmz3nsR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4EeN8fD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4EeN8fD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D05CC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753937993;
	bh=PEKE6UCV/4vgl17kxZEgQsAK3ybk5E2bYZVA63B0ftA=;
	h=To:Subject:From:Date:From;
	b=T4EeN8fDKbuEOckAgr5XgIE+gAbZYnAe6I7MoumDTzx5CcmQl+H3f2vizuNayW/um
	 phBdXuRgF3ntohARTj28awEr1ynyOQv1sKcHQibEuxBcbkPDeHP27VOLDgCVBV3f+Q
	 Fsm48B5UaPj0zQl9HCAL4E03usIyGgUlWgXAcWqJbge52zDlQYDS36iyoVsWycSCiy
	 zahYXeKKWy/Yx/5BdhDTZhBGEx+FN9ZVFpPJ6Zqqk8SYLgOtGS4NHE1lKJiOj6IJ2I
	 EQgOvcZrO95iyhk6fTkPrR3/MADT1CqD61Zu3jYhoKN0Xicyza5nnWGHJHkydwYPLW
	 QumIs1Fd3jBJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E92DC83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393799357.4884.17021360954049860645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93cf928098d64bc8b5531b627a3c9fb90c5d70a90468797b091a29e047e00b4
Date: Thu, 31 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753937993
