Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AA814A0A0
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712159897; cv=none; b=PPKVGJak80zoyz4D5jYb/Wgt0y+l1SouE11dwgtG4L8f742SUiQPNE46zed5Qa5q+6njaTgldqoPGD4wrMmMZSTElUgAJVuxoQKZZwpONFObj09ev1xhapyNSDRegQiJFTIupwXz0TD9qOSPkfKM8r9WlF80wZqrxA95E0TaC58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712159897; c=relaxed/simple;
	bh=XJX7hafO4oaTXc1H+DrYM7Ti4XxCEsKKdqQ+m2zX+hM=;
	h=To:Subject:From:Message-Id:Date; b=rNEDfGnV8BVDNJYhwMGfWDu8UJeFCxaVezEUk7oEgn6RW3m5cplZhdMuxftFEagm7qUojSzPMmnYEMnNWF5TL7FJWcplEBot3lqCq1PUJqTWjurHd3Vt8+MM70qRfbGYNIB0iMTobY+7gRIyKBB4i7f+P5oXM6z0HBW1p5mbZg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIC0QYQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIC0QYQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C0ECC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712159896;
	bh=XJX7hafO4oaTXc1H+DrYM7Ti4XxCEsKKdqQ+m2zX+hM=;
	h=To:Subject:From:Date:From;
	b=dIC0QYQ+9ssU/3CwNhPjW2GC+pHmHlFxtnZdrygm4Vv7FMVUXPQhgGdxqTFrEICel
	 m1fyVRMGZjdGxIWtVvzyF73pxEmPdJRCTndqfxllY9YfR1JpsY5s+ujzlOj4h3u4zK
	 MnxG4pl2nQlW3xvaMxItjzkwUxO9q+lJwDibqk/p3lJjbBkYps+B46necxXa1qozW3
	 YlSxtVRZMwUlR2cLF4NjHc/PEibszCQCuT+5OvsXhQQY3K0zi1WpagYvqkY9n8BzL6
	 heXGjRNI5B379t+3+eGw60hIb0D3DR+5u33MGxOOtntiLboqRLQWE6qatM9GI0JTLQ
	 FKOQleL9Q0h+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6407FCD128A
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171215989639.18544.15348096690506334606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f96037db81b463a6789e42251c9a47c7e0ed5247ad0b57833b71d15ecf1d4202
Date: Wed, 03 Apr 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712159896
