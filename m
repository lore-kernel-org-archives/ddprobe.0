Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2265E1A2846
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742231394; cv=none; b=kxL478pIfnC/xqPYR2Qlp98U4EgorE0qX3843J+AQ6Kejybgaygvjzc6j5h58GpW0iXY9tW3kG2fJt+Yr8dZ/Bu5MpEAxXKo0k7lk3WM78zb8WbTKwPCFaz0MnycZbdO1gdoIJElJQlo3JTEsNEtqgyw5Jy82VAUihnJbQVR8eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742231394; c=relaxed/simple;
	bh=7z9IxoaXjGHXQwd1UM+mYHck9RVLD25e9HVumyxaptE=;
	h=To:Subject:From:Message-Id:Date; b=fIgc/liXirfmkKoOayc3tLnsmpJPA/O7jbD5/V3PZXTrc1NoYN8UNDmRe7cZHYu3wdmU0dta9IsA7mBnB3ERj1u9rU/C2vdczCzbNpRN46gPvue/1z67XuOylFQkUTIceiwnuZSj+9uMRiv76JImM/6o4PuH+aU890pvUsRZEAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcP0SG9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcP0SG9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95B2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742231393;
	bh=7z9IxoaXjGHXQwd1UM+mYHck9RVLD25e9HVumyxaptE=;
	h=To:Subject:From:Date:From;
	b=TcP0SG9xBwj5rl1vynpuLytHnYPdo+JgPDRZmJmLav8M0v3DPFY4ZtHQIQuIF2rEs
	 zAC4WzpZlSVLh1BHxB1G59h4NZHZnPw4glFPspPdRy+RCI6fiuuQQLgG0KvlUqKxKp
	 NijxlNolLQvuzaJZGOYemcKq5QO+aJbqP3dSMwJOxV/LUOWqK+a29jNKVt3rGjq9Ls
	 2PthKDaHY6UiIxYZSUhKYde+Wf4twkvlrJ/Wo+Z9zn+AqtDNtzDOeInWTxHg1BnMl2
	 n91J3sDS9LFaqeEfl99E7mWhIfnPpYLX1dHV7SWmvgxAMd4KTg65+ezvO3YmL+G357
	 Q8OvgPELAetDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D12C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174223139359.9055.18322014320201092382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7865d08236e21df9bd06ef31dfa688c9efae82c7ca20c5ae7a2549a8620c27b1
Date: Mon, 17 Mar 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742231393
