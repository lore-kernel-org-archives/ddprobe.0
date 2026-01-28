Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AB42EC0AE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769601834; cv=none; b=KeJ16vvL/GCgH3FnzM4oN7LVNha87ZZS2VnwLlqyWWnMzvNklF3E9ZyUdmcP6jA+6XPxit/LLQsR8CKaKRV6sOxQc5GRn66M3MbN6wndcyB0mvDH5Tw0JO1NYX1X79MgqeMKn3fhOQ3a0hW2v4CgV5EKwcb/46AnHmexvKAgKO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769601834; c=relaxed/simple;
	bh=PlTWwD4D4VZiPAiAl4hZMy3FkSJYgy1taYR8yBbtKCc=;
	h=To:Subject:From:Message-Id:Date; b=SMVLkHoeY7rxIbinZd8gaAkSVFwwfsBObSE9bDSFo+QezWq6kwIwV4feOXg5IctqpLJN454+F5wBhClv4RlFVaW/BhJjBbg+E4/jIX+Xx3kfWiLTjd9gzU0uOk/fXIPWluNakr7dErviyC7x3AqplNsmDJRDGR3W/NTOIlGKyhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CX8u1iUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CX8u1iUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0914C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769601833;
	bh=PlTWwD4D4VZiPAiAl4hZMy3FkSJYgy1taYR8yBbtKCc=;
	h=To:Subject:From:Date:From;
	b=CX8u1iUobyLCE+po2hL74KMEnL4Y3LEer5r2Be+NgnXZ5UQ2e7ecn39rKj3w2bFJ1
	 YO778zEeIZgpbwlPJuXUravBWWmyeP3onEcU3LGjOzktoSETezmFherTYNaD5DGQVY
	 ihI6lyJ+KwUDe/NM/g79kFg/dMZlwU+xULALAC5367L0e2z/CK5C43RCFf2vHGiIr4
	 Cr2t8rMnZ5uvGvQ59gCBIh0v80a3UqVDSYj+vhWWMhjFE2Rtwd4JnswoVQKyl4t7fc
	 ExGhlmca3VXngRrOIpnauxDuw/CDEoorvMEx46L1AW0oDWbWXM+qQinKopcMNOUYoR
	 mXwt1kb5dITmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA00D25B47
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960183357.25231.17730034702896165795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8f34792a5a14bcd104bc0f9da36192b301a62dfaf8ce5d9c74212e2f8ca9ac
Date: Wed, 28 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769601833
