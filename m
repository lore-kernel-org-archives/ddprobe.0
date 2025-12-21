Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CB5EAE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766283234; cv=none; b=S/5xRFBXJMhmxCoxywVbDSGv7kVPdtjqYRQcoEwJzfoa1Nx6bdTBSvrn+kvgLlM6S2NRUVUzwnABSsBglrIXw/TMT72ENYSY5Lm4/M49wchdORdyDDdpjfZL7XQ3ZjR0v7e9E6r4s6q5PXg5aIljyxFTgbDR55d8WbAdzTXYRjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766283234; c=relaxed/simple;
	bh=YawV1hBNoGbHclYhGRYjiNBsXo6mSgzuc7Of3xrv9m0=;
	h=To:Subject:From:Message-Id:Date; b=MrFW9mkYW1qfjfCI+YnucnLOl4nCoZwoEe2s6nyZT9MB25N6HQfWAmh6goW+bzv/Z4E1enVe3Ho5KYKfvYoHDDGZ5WLEODNYK2L4hYykpoFuZQl+H6inYfAsQZzMxUef8tJRZqkb4r+fQqyBtaASF8Jpx9GRCSevM+J1/f3qiMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dR6sFKXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dR6sFKXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5771C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766283233;
	bh=YawV1hBNoGbHclYhGRYjiNBsXo6mSgzuc7Of3xrv9m0=;
	h=To:Subject:From:Date:From;
	b=dR6sFKXIlAScKsiTXbyGla0B5onvbG8auXZBU5piO+YmleLIt3yrSrh1k55jwK5gx
	 IOsZjlrhH2bMEufrmV2hOcPGIdK++/2F3lZc9yuKCZn9iGg01J6cfy+kTUALg2k7h6
	 HIJ8vPT/z/pWUmB8ojAhB0LLyKnekl1p0PQK+dX1kGddErSl3HnAkaD9SroUGVTf2X
	 MlxUqL3kJlHMKDPMF2n/tdeaVOemOry/QejZ+y8tTD1GJB1NGAP/TLkfiSFOoIrcHj
	 vsEKkFgASdggCwqcoJEa7j5gROYx+X9a+P8wFuKf7b1kRBI+tdhoCsz4OqAjyi560r
	 +2wZlCNxWN4+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C35E6748D
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628323358.3754.3715265424932766442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fb633ee147143f0daee83d61ad5efb3e0f514405c62f8661f1880b3060ce8c
Date: Sun, 21 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766283233
