Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F87B37F8AF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776346054; cv=none; b=MHugPfitUmSzsKJx/1sdHzimLRJHKzXC7pzIeZzDpiw5jvwk0hTjfxpYvi+AxeG3U9+rFdBSr05H5F4iK/Ji40v1rRuTRnCxRPw85rSUTgqR1SnAD/i3W6Gp3AV5yNPj8ejW7o6PxEAK/E9vWSQPt7cBzPod4jivZG2GxhrfRQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776346054; c=relaxed/simple;
	bh=PxbWf5mAdyuggYNMhJYUWv91qt5lyw4IEpLVpVwW91U=;
	h=To:Subject:From:Message-Id:Date; b=ITHN6uW8SBD4nzqNPPE6cE/7//rOlbn7K4GyW5jKFCAyoDrkFsFY5t390tej8tyZDqRpEZjyz21xBQc34LG2nBStX7RCyp+qGy6H9733319KT1pWPoEWCCMTcwmVfzDsNTETuhkOwMJzdDuStLk4jFfP133ZaYk2jBIysXez0lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFuzpqx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFuzpqx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F6EC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776346053;
	bh=PxbWf5mAdyuggYNMhJYUWv91qt5lyw4IEpLVpVwW91U=;
	h=To:Subject:From:Date:From;
	b=CFuzpqx3bRoXuUbkrT954lxmIyuwpaLaXF8LxyHJ6a22QdrHHPz9+57/Vq6kbrc58
	 hTv4LcF6mHiUL2qjaf2UydEdj6z530Cz6ASBgInDOabsFvvvT0K+aZ86EpOlvRGydj
	 S8WUhWEZGOTgpZLMP6rWj6Tubf+5gKlMRKAqgwxxy3EJr2PA//eWI4VuXniJ79pkpB
	 m4QGw+kCastcxvJ+khm4RaSnZDmrCsM3CwJn3cVMSV9l3Kg5ERupBdZyFU+gEAVERy
	 SHPC2eiaaFG2nF+Fzv7cL9ntuDLvexuu/a7CLmmO1qD4aUIs7DTdFXTJrpfMY3mlvg
	 SW638RjqHWypQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA547F8A176
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634605368.29051.3886367880696876354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 085d887af5a55e1cbfcd52fc10acdd7d5fe0268128f8ffbc83758a9b02b8a5f4
Date: Thu, 16 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776346053
