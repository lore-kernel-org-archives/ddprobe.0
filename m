Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323983D9DB7
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779891754; cv=none; b=nYwP9icFPGp0FSn4evZEZO42X+kBZ1hwLPwxRxG0F9ZHSyd2gI1mGMJT+J6GjBP3SN3k8N+FWZzUsLJZ+LTdHYkdUTiyNqiOnmJT9SGgBifhRI7txelTnrdmZWi63PyAZVBFilckcsrIRvV1tLKZNkhSsTKll4trJYmzMBfS2Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779891754; c=relaxed/simple;
	bh=kZHuhUtrelscZ6o6xBh6vRLsRTIfb16THDvuMveyMIw=;
	h=To:Subject:From:Message-Id:Date; b=iDybpfvldL6fRn1c+QqnKA8mmSLeOPIo1M/Rwuen4dGki7P7VCKAUfGil6TM1JwNdiRevPkoRrLblfpcivi6PL47u/01z/FFIyJ3phNTI32HZGJNvX+HVWtItrC6ZMrvTxxI4wcDyRr0r0ByMgm5sg7N5ee2PjFzWENvvqrkT0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukQq/Och; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukQq/Och"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2786C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779891753;
	bh=kZHuhUtrelscZ6o6xBh6vRLsRTIfb16THDvuMveyMIw=;
	h=To:Subject:From:Date:From;
	b=ukQq/OchvB029D+e7GPvlGzrDXVylat1FksWiNK0oQGgIThGNzzDixJQzBUP5IJM9
	 kjutG58d9Ku0EB+9kDdnsAwrq5k/weuwJWHm2QvlEWp+yQWqU3731nm1O0TyMYgavr
	 r2KVUXu11VcadPtULtbYMFh7inOFgej1OEG5YLd9zbOWxVx4lhK+lYnrOWq/IvmsW4
	 PnbDOh+BiIm82DZ9sD+I/c54Lt0i92lzuJLrEBaP85o1N4q219mgQ9y06NTBrVPSkM
	 9/9CgOeXEaAgSSv5VaNZ7fz1Yae+RPR2Bm1Cpm4h3QqgySJiOGD/CME9WeLuB2MQvH
	 3dvQiayiAXFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5676CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989175370.19912.9244736547972594323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682d4198dc0f442859f5ea3b76f865e63ef7d2742f5fbb83bb95c30343422b34
Date: Wed, 27 May 2026 14:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779891753
