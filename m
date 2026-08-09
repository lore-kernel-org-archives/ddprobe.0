Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614BE883F
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786272634; cv=none; b=tuw+2XJa2XtkBCxfxHjcMVDijS0B5tmGsCovPg36DLIJoliSvuxSaJM9bLBm8jokhiXldwWCmEoLYTcjOtHHQKVEHgilFFA6bz6AKBdCb9/2HBndcRz7uEWlBobxBNjIT4j3wUEJrgT7ud/qNqJe/ZAFflcHsQWXTqwhyBy3RyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786272634; c=relaxed/simple;
	bh=0La74exw75jsja/3O4uwKsPeJNzd4rNU1tic3SoZUnY=;
	h=To:Subject:From:Message-Id:Date; b=cgnXG3jIc2tMiHW/kqzwXwZsFFF6o03WPjR8JC+gjFVLtzuZV+HC4/DzTvJWjSr6cdeAVR1o0cXUdnzaYtuyN5N09NkAINMEYnikp/Wwe+VLynlu4WCS/dm/oKWx7I3zdHyRko9d5quoULgZ4u0f3TFG5/+3aLtJUwja5gUtrbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YT/bfhlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YT/bfhlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0F4C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786272633;
	bh=0La74exw75jsja/3O4uwKsPeJNzd4rNU1tic3SoZUnY=;
	h=To:Subject:From:Date:From;
	b=YT/bfhlUIOGI25B/MWlVlykp87z6rLx27+Tpfr2W2rBCT/kIRTGguzTIb6FibelBD
	 bkuPTyHVK3qVPqqYXcy3gQcN9h7ibVruRV5HUWuA6szJfhYYKRpyJ0m5H/H6Yfa/Ao
	 dzfRkZGLUvu0mNwh6RoOJaeauL+oxGVQwYoZ4jkdVpAXCr14bfn4fnbBEPFKJuAvPo
	 e/PL8k0BMg+67XdOOkwkLR5Y+Jwlmq9SWOoPgfiAznY7epFmvMDUIxHmmeS3MThThi
	 1ch7uWxR/eadPPY6tjzCNjtJnDI/d0iYA2ntdw3BCDOOlnZx6eS1uMb52LXXXUED8V
	 vQzPnR2/KdgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D68C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627263370.30163.14115600881491325031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694a6750deb5b32000c4fa5030ee65bde470cc47775eacbb95b71a35086b3ea8
Date: Sun, 09 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786272633
