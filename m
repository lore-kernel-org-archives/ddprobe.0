Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D77B32B99E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774320294; cv=none; b=HoDmg6+lmpv7nPLLfYtKf8uU9apICs44qu7zzdkehSUdfHQJ5IfzCiamS/IK2FgJqGEKt1eZ7G7dYnQqGJazzCYIbzxX6IVJ6ACaz66S+/mSIddHfJjwi70uy87ht4QpZPJiIU/cp7UlrCAZpGf/oV9XwrLlcJGfXyBRr+XODEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774320294; c=relaxed/simple;
	bh=cth7yU/XWhySHoPqC5oEL7Xqi6k/jNx1QQ74O5BB2+M=;
	h=To:Subject:From:Message-Id:Date; b=jarsscvQdwlho6DdAGjV49eYw8iponHWUO9itaR2SPEN0iw9Fi2Zex/Vf15GoshCJFTPBqby6h4kJmZtMEvq2JJnm7ilsTWDK7/UqXx8Ojbdh26618xEypQCBBZq4PXsR5+cBLLaAEprQfkmQHF4QN3Q5Ssz2rXxHzaYL4ywdgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2CObNf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2CObNf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD31DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774320293;
	bh=cth7yU/XWhySHoPqC5oEL7Xqi6k/jNx1QQ74O5BB2+M=;
	h=To:Subject:From:Date:From;
	b=J2CObNf6fZ/e+fwWgc+SWqfJ7eemxL7qZ/0PAE6RjZ7kh5Jstb70bbShGkIRR3XY5
	 /iVZQtwMy1emGoHspDRPNGNyMPN/RsV94ySuxYo/9N0kL5pSYb8LesbzigjHlyPoDb
	 Sai5DnVpUL/RQLYZsIMOomPENU9WaKIkmpS/NeGwItqKJFAGhEhWdI5F5o2tCAZkvd
	 6FK1A7qlC0L6ZN0MqbczOw3eugliz4iOKyCcCoJbdgJdhSZofkMIZIi+xtm2RZHaW+
	 Ps021pNF/OPZfI2R4Ut6O6js48Ch1ZozBbsrALGGI4VRtmLJhAr2WlG47nahc6KqxQ
	 +cf1LYvpFVsyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB2EF532C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432029360.22599.8464301112970063180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ce7d362b0e58b0d536225f17d5dad00030ec62ac8e488b7f3bf1229ed22acd
Date: Tue, 24 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774320293
