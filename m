Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3440418EAB
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757156994; cv=none; b=BWWzGHol8Vbx+62JK7XUNkqsg4DMiSDy3IhCxxozkNmwzIHAOmvthlgcAxYtg4aG3hSitULCXnkNYIZfIDRvqqGzal7gB2Q/u/k4IteQk20sFfjJ8AZ/pGtprjDvHkFyKcRKY9SCq0pjIR0gy9Y+9pAuKIE7ShHYp267lPfsrhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757156994; c=relaxed/simple;
	bh=NY/YQ16XjB4xobzmBfzrnBU+oPEesWSqnVwQk/zfx8E=;
	h=To:Subject:From:Message-Id:Date; b=KGwW1Fme1Wzr86HRTWPHcl5f8X8foB7TMoj82OnDN6HLYcWrA060U+xA1SAyXqkW2HqU1TXSzzdZMcx9hQYvufL9sdBo4fCImOPXPTqbm17StJEwuyULB08xMt3mNTMdJKIxP3Pe/hqpEi4zjyn44Opd313JDAuShw5YF9ACjV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDDlwCpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDDlwCpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1841C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757156993;
	bh=NY/YQ16XjB4xobzmBfzrnBU+oPEesWSqnVwQk/zfx8E=;
	h=To:Subject:From:Date:From;
	b=UDDlwCpR7c27M9e8opuJ+Bx/Bxs5d5A9L6yo/eYb8Yz3R/5iyvr+vucvVufTKDJ69
	 qlPu6lCkhRk48hGWQGjQx9t3RgENxkieAS7bYIH0ZhrXZgUFCEuILVmmNkinrhWRd6
	 2M1GKf5eJZhB7uR6UWc9u+VLOmKWYowF9ADLioDqLVTSa8ltQVQI+q9YL9qe92Keea
	 nQhg95payKqMTjMQptE5/lFi8TwHH8oeHAnwfPl6CTVifMRq51CBVn/14zELeXdgO2
	 TCtjv4gZrv+4feIjCuD/K5FqRO9g88/k84iTNmTZSf+NhZonWCEXXVshswauQn47Ox
	 5m9B+dmE0tomg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902C0CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715699358.20532.5439398421925988053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d83d0a9bc98d2759b381e4b5c032042f652e6eee124149bea0018937e98c37d
Date: Sat, 06 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757156993
