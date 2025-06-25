Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205CD266564
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750841394; cv=none; b=Hn1L2PVQMZEEcEAi/6iWFTPNuq2y37opc5SMM7VPc9dWWXhZ4Q36rMc9DhOTv66EBjyRB45bDLnybpk9j/MCUV06aAUxcr5DoyFCo7l4H8nhZiYanKF88YwdGiVERXWUAyzL6nd0H8g1Hm7fICWZhmET0LKVi2E1xWfwK+/Nld8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750841394; c=relaxed/simple;
	bh=6aFGxtOVximwRMj33hxExK6MZbBVHenHmUgNVwqgpvE=;
	h=To:Subject:From:Message-Id:Date; b=YM0PDSilWlGG67TwbMZKII336xqXhCcZ4uOhEcqSWRTEscAW4ihwjcwhwB/17772So/BeQgqZeXhWqacYyx5ECRn724231NZyXA1W84QDd6URoQd6WnQ0v8dvtjsLW3aLNP91dv42RwAj3wgqCABcOdXk6e5Bzfs+h30kpnuikI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4z0RYCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4z0RYCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0CDC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750841393;
	bh=6aFGxtOVximwRMj33hxExK6MZbBVHenHmUgNVwqgpvE=;
	h=To:Subject:From:Date:From;
	b=f4z0RYCsqItxcQ2X15OzwMxzpz33oenZbTupYwXllX+V+GdV1L8ZUdzCRtiMn/US5
	 IaMMOSM8mW0xGWGYVbrg4T50/x5IGHyi5mSxNfkXvHvfuAwIOQjOP5bF3UkLUf2U0R
	 ivhV3bRiXBwI6cwwADWps4dKdkNozJwr64HTvrCxeUI+mDHTj/nYmbGUtQyX4c8dlo
	 +pPWKHg7UqIvKQOGFL+DFdWFKrVUvGLnHT2jG4lNrBqn/9tnL9/RzI8cWU75jdM6Op
	 azViHR4I4MS6w3yKJXHlZVs7kLEQsNhWnmZWr/BE7QvLBvxxC+gb5ylErlPgW0RGKR
	 L9Js93qxQVDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A688C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084139360.13356.15858338639453185796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42eed05b09f2e6858d5afb37ed0abc70bccd3c16779b7f323259b3ed3996eb6
Date: Wed, 25 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750841393
