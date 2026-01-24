Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA32A1A275
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769298833; cv=none; b=nf55Q3JZpHWkFQzkoucqFpIlNqo7gSsI0q4+lUY9vLSY/T9ntF2voMJqlo83pyAg5iQ+zJF054yuypCri6lIvaI5Qs7st3Au+oZk6F4F0p1SFCI9NzyOHIoP5sBC6x0GiaxX2jagCkm8mmJyosD/0UhY2P7x35s/bb01QX/fxg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769298833; c=relaxed/simple;
	bh=KYBGQ5d3ZGu4dhZoVftcyIgXkXu+QfddsTz0BBk8gic=;
	h=To:Subject:From:Message-Id:Date; b=Wut1PqMFc6Xf5hMb4W4Gs2dsxN7ryDQqxVpRcb8EWJTImyPZ0HeCGYJPciS2mpMBmNg26GldcgnTJUKuXwJTgF5Z3F/Z2mXrTXC0Y3877wi0TKPL2l2nnffB+N/e8i+FqRoU/itHo1KZSn6S63o/Sii5i3Q5U22uUDbStyNcjK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KB3kJh9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KB3kJh9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5919C19421
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769298833;
	bh=KYBGQ5d3ZGu4dhZoVftcyIgXkXu+QfddsTz0BBk8gic=;
	h=To:Subject:From:Date:From;
	b=KB3kJh9T31EZMyeURcQL0ckcicy4bW5SBWLq4RTyKQ+8JjXHnDJz8EEKEbpE6+cAw
	 MPKCZ9L7Yz7L222GFF+hWTY+6+kCF74Jlnp7TLin4dHkZ++F2jQ0ZywlqakvYzkmdZ
	 9yGZbRAwWw7CNSt/NGnJ2TJ+uUEG8OLKJPQzw93tIy8DB/CVzNFdS7MF1xRMwvrBAl
	 f+r47CgUpAAuhH2gvPfEbb4g8eTKEqFhs7PD+pq5o1RP4wVjn6b5v/ePv5HnMBowra
	 bpR3Z+WJ5VFqEBbqUops7a4bb3EP5NUBYadJHG43E3AdUNS/nWWiwTib3CuRt6IUG1
	 ECAKZSgSQXLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD4D715FF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929883358.26613.7582753466881155688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f787382b35a528752657a390086fa3ae46bf51c3e71b411aa7ee1795ffb152
Date: Sat, 24 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769298833
