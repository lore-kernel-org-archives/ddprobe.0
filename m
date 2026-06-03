Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4580719F12D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780460074; cv=none; b=LPhN2OUuXLxLkB9pfTGGuaN+ybIYPwUpAKir1yK1eYeNF4ELP1v3MY+g5KjTJUN57mxhan3o7+yl70CJtlRHourbDqfllHyXBmQvs0pYAicvFSwGy1AgCd2oIqls1EWvoDO/b/9a42uhKEhISsy3OrjXfEZMT19qDsgk4Hc9hPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780460074; c=relaxed/simple;
	bh=V5CkxiqJ0h32jKeYREHOAOP63E0n5eYlf7ozXW+v5u0=;
	h=To:Subject:From:Message-Id:Date; b=NlJvr9CouUygWbXoYen88hCDAkqkWpP0XRd+3OMiee6vBn89WOTWXKenaqMihjIZdjPFifyjdomjucCuD1oN8+VJ3HREtV02hGTQf1fdP47Tj32I4JcAYjoqeR6J3KC4qIXd7wK4R+b+z6Hv4FDU+/IsuC+KMSnsN2Dz8PQlcHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YT4abQS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YT4abQS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9706C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780460073;
	bh=V5CkxiqJ0h32jKeYREHOAOP63E0n5eYlf7ozXW+v5u0=;
	h=To:Subject:From:Date:From;
	b=YT4abQS8CyCfpmppt8bPUncjNB+XMn+WngOaQlu1KdO4vxhyjlAYiBITEgHEs6oPr
	 MEyvWAIZnwu1WKAqeWCN/fjEUiBBrapuBuffnM0XUUBqhZbiuOCc/F3V22uxgUytCE
	 QoIX0mjPjb9EgHO3L/Gx3EZyd9AoHUoMv3pnaf4QZFIGmiuUY5uHsMI4CGt5pjfjdF
	 MEIJOQCnZO7lFKaR3DTRayzWzCqNv5eSCha3P9JIFeVDO4YBJ1rxMeu/XwUeKeMNeo
	 jHqh2svxqDthhRLEheCfcv//Vfb1pWF54D3U5jxNJWWZ7NCFnhReKxSfLjRpwvchKG
	 YRppHFOT4X8rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD289CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046007369.25384.12479733394797784575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6a1b43746e7b774bf05790932fdbd202e16818c6b5600f4323ae84f8d90582
Date: Wed, 03 Jun 2026 04:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780460073
