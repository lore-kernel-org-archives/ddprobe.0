Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C9D4689
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712334497; cv=none; b=kWc4RZG7fcUspRngRFZffz/FdDsALqU3cUf3w/xbVlXNB8hPcOWwgLl+W42C+fpSQKsAV1iJpgRqK6osGOhxU17QuJqSMdMHXaaMub30AJXhTKLLkTeUYmNe+QhaYryWWfm6HSfvH9hqNW7Hi/IPYPkP0k2pAPqU3yTjZXe1ZuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712334497; c=relaxed/simple;
	bh=eNXY8kSBfsbhUETTux++7C+/Z5N+hKPlqGYrf/GpYVE=;
	h=To:Subject:From:Message-Id:Date; b=aoVW+sbGHz43qHox+P2iWv+ofSFur4srQheTsb4TOCmQ4uO7SnBXifYYxQ6fGmmNmpg03RMiaarvZoZijZ9khqD37qkgutnQPZ3oUxKxtAHu18Ft0AJVLDeE6gVO8FdZWTvcwtFJWzsMpzNgojxLbYrzKLRsWUCX7lwnrQNaB/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L779p7jo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L779p7jo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E99AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712334496;
	bh=eNXY8kSBfsbhUETTux++7C+/Z5N+hKPlqGYrf/GpYVE=;
	h=To:Subject:From:Date:From;
	b=L779p7joIsV6htgDPZP9qozkXP6oZ1VB62Re5Rr5z8u1hLdVGLhA4Sz/j4fM5hFeg
	 fL6a76GAnmnRfkvD8UZag46T7+6gOafIiswS/vQ7fpnSJECbNrAUVEzToPFTwSxPug
	 RYtOTydAMM9S7gn1JWf7TqOM4UFHnDoc5CXN8smIVlXbtJjyTjFWOT/Lc6WErf3CdH
	 Obh6t3v8PqASDSuqB+eeJ2mHuU8Br3VbggWYVeMZaD3Bgt71dKyevoL2gaUJ+ls7k5
	 WEqtrjYdM0M0jleBTEV9D0Q/I5igVIEFHZKOSxHp8+EVjSULo2BeM8HJJApKMSM9F5
	 73EFe7DABrPEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B2F9CD11C2
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171233449643.7203.6310938268313764905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b65f3cddf3c2e4e8fab740d1d37758ab929b2315a8700dcc64984f63c29c26
Date: Fri, 05 Apr 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712334496
