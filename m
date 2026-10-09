Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B693CF210
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791539434; cv=none; b=EP5GxhKf+wrxxSImzngyzUDgOTjTXXGfC6snAJ7minEl2QjJb55W4O3oK4p8vn91S0aMEjezw2rz2Ie3ARG3zgMJgHYPlfPpYqpygXtw1r3Jb7Re7gMLPvohOseBN47WaicKTGCROdIJv4qbCUI1w1/5zTN2rhfPhLlqoJwqYhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791539434; c=relaxed/simple;
	bh=lpSc5+HD9uQboo03Az0DcDzrRRcu05NeArKk2AJjD+A=;
	h=To:Subject:From:Message-Id:Date; b=hvsKnglTu9/DNyzsNwm3CIUuh7f19A2WCPlJH8fL1aXAJlym8LjcP0ml0jzWrgz3FWsh5M2r+Y4OyajSwbG4ZsUYKbttgITicAdPRoLwdwo6z/h60CRYA2266WA94yKyje6fQ2FEcXiD5tT/Q2qjh2Yci5RGJLXRdyP71t/wO/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBbHI4lT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBbHI4lT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45D7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791539433;
	bh=lpSc5+HD9uQboo03Az0DcDzrRRcu05NeArKk2AJjD+A=;
	h=To:Subject:From:Date:From;
	b=LBbHI4lT9SFDwbAy8UkiPcuCOQO972+FvNLokcgtBoAISue/+icpwgzMCd8fa/BEz
	 bVo+IhDKZy8nrKTFu923U71Bq9QbOjlHlEC8VsqFGwWslWS+TTNVgPXgflN24H7oMr
	 0ovUB72Jx+Z8W2KI1So0wSKjdZzqyBc7JQNB+F9cjef5YIsg65L52pXJsdvCJN5epJ
	 IfCWGyraHnk0bdxqa5O8m4lH2nGjRBovhuFcmBdSKNBwuWpWMY3xddXq4EzFldbLWc
	 T0sew6d8I/Fs8TBgPJKbqcKSYWZxeXsJ8dyWqyQAGkT0CdsL/k7aNIVmYg79XUyolT
	 bHLd9Iuf/xIUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA99FCA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153943369.12775.7924189589500637420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd65da4e363260db939eebb3f181588f2d295d0a86ac72b1aab386c7812310c
Date: Fri, 09 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791539433
