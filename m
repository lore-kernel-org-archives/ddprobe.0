Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0A5A32
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743045594; cv=none; b=Odf7MwbHPVSc96R7ZFhXNx7uyLtskh8QEe395O3kVMBmnbRjB8Bvan7fvBluu5MxFLkhVF+SpLLFKOXvmFtvl0BEFChI7Yfil9RJLgOPTaYPUlF9ByZ04bdL7OaNhCEaw/qHzJksK0TR4n4IIOybo7yNXxrhbj1+3ldPT2IdAnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743045594; c=relaxed/simple;
	bh=lSuBJZYFNsebU/nuE3HR1PPr21eLYXYKLqmBaKow0L8=;
	h=To:Subject:From:Message-Id:Date; b=Jxi02bZP2rLgJsxtGR6rn2Iuf6QNW/JW/aKCw2nYZnLlRDELFm/m0ZQfP2oAksUFwLcZ94i9nfhnfs8YcJfi4/BUibTDhxoMdL3EketkVAaPlxIO30kJnawvZFBNUJDUcMnaafZDZMApwrJ/B/40flHz+X9jDzkEc5/wMuaYLUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ew8DRFyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ew8DRFyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4973C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743045593;
	bh=lSuBJZYFNsebU/nuE3HR1PPr21eLYXYKLqmBaKow0L8=;
	h=To:Subject:From:Date:From;
	b=ew8DRFyRSCpvrNYiarTZD5ZuUmjEe7yGcp6IEDDX/6WLpEvy9UYkaB3JI9NxR+ha2
	 GP9ExitC9W2ROdLt3DieR7fhwfxyK5n+Hbz6zO+aNgRnxITI2oNyjMm2mpPauZ0bNz
	 PG/2m+P7XXFlgmDVUuDHa+Yq3Cq4/T+FGm500crm0sZaCl/IHLzsK418nBzFyidyL3
	 MmKRjQMjYo2O2wRV8wGA+tUJLk2IsCeWCzAxs+Eg94Wa5b2u7LswxXCNiLx3/cH6f0
	 EF69cdQUn2my4KxEtor1xCl52vlc0YR7gUcouH7ERYnx5CZyw3FdW/BT0dT+bqQ9/W
	 uyVaaK9HxgX5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9286FC36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174304559359.9770.16938989712139896720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7637bdfa698d84683320fde01f0c030b975a179f334e3ee91de4cec56983963
Date: Thu, 27 Mar 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743045593
