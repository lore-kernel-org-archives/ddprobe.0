Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D11B195B37
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751390394; cv=none; b=MipS20aHO53VfF9Q2KSYMzC/SoNKDDrLTj+wTfXZ8LfmYIdVb/fC3lZ7NNC7MHhGK5xJFHfdWXgm1QDKZH76OGBO/N6xBDoL5J2axbRNVIH0R6ha3DVO6OZA57Io1hYPQmv4kjwp4CQis1i9StXbAZAODoLDL5MTKju8sYOMPy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751390394; c=relaxed/simple;
	bh=TNn0wzGNBZ+rwHdzH1Ze+xrZwem5e2YT+5St16OAX70=;
	h=To:Subject:From:Message-Id:Date; b=qEAsQu3ufvw/x4Qz03t/hBy2Y7CpxrZk5SmILs7AdZJhzAdi67+mIXnAvKgwKDm8TLzbenU0LS9TYaJTnU+IvWN6P6CEVvpiIaiuSnksoOccQM3jeD4sT79AvknT2ai88oPuTC9tW13JpxJJba9wTRd/VWUlLiE9OxRQC+dR0co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fw6PjjcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fw6PjjcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2785C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751390393;
	bh=TNn0wzGNBZ+rwHdzH1Ze+xrZwem5e2YT+5St16OAX70=;
	h=To:Subject:From:Date:From;
	b=Fw6PjjcDgjWiQv9aXkfXgJjlnFRJwv1s886kTL/3xo1UNGM790xQVnoKL2EYcuFoh
	 7P17K779F+MjPp25BnkiB9N7X5qv/Tf0ropinr3+VQA7EFqlMUrAQDBc7wIC4Fq0OW
	 +duPbkskHSNovrZD5uH2E8dK8d5w3cknJX3+8eJDQlscLr5YbMTI8IEakQoQ1w3KUs
	 9Tz9+7pIC4WRLD27lxfU2sRljbVhbNp5e9hWKMROjuMb6Tq80rA97z8D+peTFBqhf3
	 DxArFMPqT+VsC1QVh5d7GvpXV9hPaZmJKO8QTWz9bTmqX6mmaeUSdf/zKqLpLpACIB
	 yozVDY81iz3CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A9C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139039358.30151.1925877029463097240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db722305fb2cedff8b8422d5baf4afdfa7d509f408cacd44149f63b4ae37c0e
Date: Tue, 01 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751390393
