Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C60229B18
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771877094; cv=none; b=dh56Y1cuj5tTbILkX2kX7JVAT+UJ9BxxKC23VtNN6mQ7SzJFuA+j3C8WZJiCLWhWfTGm2I5g4xMDbIgKUJdFVJ/yZQfzpEHzfbEHTqopP5htUX82kw4zHv+VP1+yUdjkB1Ro43HEZx6XBo24cwYY/P+m173+o6Ytsdz7bOlDFXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771877094; c=relaxed/simple;
	bh=kwqdlWenIFknPLsJU371fkzjFkZwa9kMOUNPTzYwiB8=;
	h=To:Subject:From:Message-Id:Date; b=TQXaY/kH2oY9VKghTvLynUnLrKXzH2DzrIaCxcveshJPWwzOtXBTJPZEUXrFpJ96kPVtgKk0r81gqvpUP3OKlGXSP7Lff61/3qe4/yr2Ena8kXgmAVRZdUHZE1KsABK1rZw8qBmjGENg1j0V7YX0ARmbsMX8CaitUMZYTeLvo8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1rAgOX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1rAgOX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D8EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771877093;
	bh=kwqdlWenIFknPLsJU371fkzjFkZwa9kMOUNPTzYwiB8=;
	h=To:Subject:From:Date:From;
	b=q1rAgOX7jrZanyEAjlv47C+3iQXxpFCG1ObpMzlgVxiigCvv/gfw0Qy2qXfB0Wan1
	 Rwl/9AENsnVySCo6YaBSGHS7OQofFG+v3K+XbEjCdJIdg8NAo0TYQdygd1n6OI3735
	 yIbgKe40QwJrGtpSY0Qpe8aa3we8RGDKDfsu3asoaIYHiLLtXqKFKLcCnqaNC4bgkn
	 tmBDi8K37g2p4ude8lIAun6yYWITgCJGWBIVf7CblroIfE6wJE/+nGbP3IwIWSgDAl
	 czpFSvYzPZ0wreqlShzBTsgmqHD5sGgj6DcIkuku3TvBZ8AL2Ts4VvpsuMcjyrgU3C
	 VnCAl5TAOc8bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AE1EC1128
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187709358.3344.248321985597519158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08cdbbf471a8c84d55603d131954b98c9d05726e96a4639978c20241443afd63
Date: Mon, 23 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771877093
