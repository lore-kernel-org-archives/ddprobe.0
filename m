Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C577E17A2F5
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751321993; cv=none; b=b9XmgSyt527tEhFIO9Ss9tb6x4RYbfcIfO0Hxl07pemJF9mbic6IeXXwyFRYxmbUpV0Ghv4veYanOI9DpapsmELFmaSPpwmiuCAWeCGWBMDhoATxp7ZRr/Y9PRpZEVVM4ykAwMGONX65jbmd+btNvmousIwJkCUrcaW4aI7GiTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751321993; c=relaxed/simple;
	bh=KyBeZYWDOpNd3y4HY5DBhu0wteAqSs3DKsQ3rLR66Vo=;
	h=To:Subject:From:Message-Id:Date; b=l39NOqSdAfppVxJJk5QsPbkwjbKjivW011sdxJXagDDFxBoibGAAh6Pq2LYptPT4ntOS0XfqA5G1OYcEYE6b0fYjZ9P7DiMSpuGOGuICIYyLU5CIfP3c2jH7cywPcQEI5exQhF96LrmGPEMTELjjTFJ7/cUuQ9S85LiKMyts5zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYTL1/jS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYTL1/jS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E1EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751321993;
	bh=KyBeZYWDOpNd3y4HY5DBhu0wteAqSs3DKsQ3rLR66Vo=;
	h=To:Subject:From:Date:From;
	b=FYTL1/jSUq+Pyamt5lIAObh90tjYjEQ4Mb6S5MOOe9V8iw4XutYlcuq0pXYesA+kQ
	 uqUwe+FtlHabknjwbNvZxdKxHt0HyEJZuJFHx5Zes9LzS3BHReqWCLZCmXtvbFNS/5
	 hTt/6hq13XviAu621FwfE/DlrhxcQySbQmqR21Ka2glRufaFPPTZSAExLvzWxqeqU5
	 7BINADOBNEC0xC9lTpabrm3A4QzkNTRqop/OXhIa8CRHxTi2HBPsGMGMpzRSCkJFdt
	 SmgpkVpJ4clr5PQwsK56IocY+yiJFq9Q0bnf6IMKn4c0xw13DxFYDcH+8Es90KKz1J
	 55UzhS9IbCiTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923A9C8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132199357.12894.14755438321613548865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009b1d1a6344cc9904078c5fb3a2b16fe8952808f2dc2dfbb775aedaa31cd83a
Date: Mon, 30 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751321993
