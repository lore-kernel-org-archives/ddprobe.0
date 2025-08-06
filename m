Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C0819005E
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754442593; cv=none; b=gQQDmBfb36/VmIyyjysGUTkRdzfteUqrHgPV3exy4iwL1ZuGLIDdohzK07O93lW1Nvr2109i5eGpNgQH0LLNptABMdVrMWrXGOEN265McUflI/eIx5WURBlwFjCXkBYkF5l6L6TuQXBgN73cBh9beyNI3SRwT1BugHLsV5P92eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754442593; c=relaxed/simple;
	bh=xBZbuNPshGDlvkkyVnORF6RWVAQlRLXv4JdHWDaUUMY=;
	h=To:Subject:From:Message-Id:Date; b=JxoBfS+/oAQEQlZyXE49Pa5GN5lMMRvU3CO/tjNa+079E++SAGLSIb8cRRpEa1rkcz2tgJrgwROf/TRu1w5j6R99lXMgRDbcVa/9b0bhE/jtX9u+bQ1suMONvw+zQY9R6fik8TkQ9eaov2fu9vaVriRDF1v6dEyyy3m2BUqQBc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAUy7vZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAUy7vZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D47FC4CEFA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754442593;
	bh=xBZbuNPshGDlvkkyVnORF6RWVAQlRLXv4JdHWDaUUMY=;
	h=To:Subject:From:Date:From;
	b=ZAUy7vZWyFCe0Vh6H5Is+glsBSpk6FNi2ljmQ9PftxsihEDg65WCb3M05ywSo7LoV
	 04wUzJAwq3ZjT8Bp2V5FJfqW0uLdh1VrV0sHTksqvaIyb+KuTo74XjH6aoWXhIBUDp
	 fTplnMZcUmdjqBwL/qh0AWxbIwHn01K1mq6KYsyoVF8pnHMme4D5s9wwW3TX02VftS
	 zddsTwD3as4uZp5g2wRr5poZ4nnYUyAd9oFphTHEWWqL8PXD0RSPrMp3xNzMyRnyHF
	 +ojtViyxdUeYkN07SvHVFzGTJmP9/Yt4iH+xo3O7H7MB22JMJTHzJiGKl/ineJPe7n
	 D3dhaltLjGKwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE3C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444259357.26023.4556834905810191159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f69fe4893910b4557af8d014e098699032752ba6a72cfc1a30f83d5d43c2a57
Date: Wed, 06 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754442593
