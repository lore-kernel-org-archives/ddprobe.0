Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0813A26A1AB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760092194; cv=none; b=k+fZEAHO43qf3lj3X8UFN0/ZJoByeDF2SUcXnnWLr5AYupILTxZwNd38ou+XOcoFgxicIXbEoB1jUEAFDfKpEOKIU8A6LJxbJZ/eL20U4rz1bmK3ICd3r7CGOYR/62DjAEnyqyZr8PBQw3HMEnll0z/4WpQ/MXBwHFn35ncXsj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760092194; c=relaxed/simple;
	bh=bCn5nc8dOhOOEYpGtf4QWbwCPYYlAJr1N3p9BJKXK20=;
	h=To:Subject:From:Message-Id:Date; b=O4/SL4E5mxDM1OjHjlh5fsLCXbdZEpxaHdxkoKZaxT4RYpY8ruQ+Ip9kVHMGL6IyQER9GYikTOAvahIuVCibhLPrH4ahu4pDSJgMQ1FdAA3tQBltCm48MivuiYkMrsji+8Tm73YGkOXFm4dbHk1cpCJxOmAcYCKiWaZx4R1knHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4ovtyAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4ovtyAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52B1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760092193;
	bh=bCn5nc8dOhOOEYpGtf4QWbwCPYYlAJr1N3p9BJKXK20=;
	h=To:Subject:From:Date:From;
	b=O4ovtyAOHCXzYGzPtFIC3mU6uWjH1DhMEOlkG/sT+h7Liy1fx8WhZ+HXKEcYc9xqL
	 OnYorceZVB2ejDH6zOdwCLyAE/kn3gAjsak8UpoFPI1Zwv+bw+N8Kwnibydzd/gIg0
	 EoFMOFTsPK9ygW9JH2UWJujoKCwjNsM7+cFi681E0flkt9VB6TNjcEDFQj7J2LVjr5
	 At9hmS0vR1JlfymuqRV1l1sDhdagOQMieZQ3znXPWzs70AmgImSsBdPvChlRjhkP5G
	 jm8ARR0fXR/Gu4CtVnBoi+HywrsMpxzBJ91wh/JH2y3rd2i4D1T+Jv01s2PCeMisfO
	 t3noaIN05f/0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934F3CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009219358.10365.18405927059117344205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4b76252d35f41b58c762987b83452c88e8c7d6772cc0274038b6f8e5dda2fa
Date: Fri, 10 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760092193
