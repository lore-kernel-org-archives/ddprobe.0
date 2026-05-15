Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE153C7DF1
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778816434; cv=none; b=tSxq9jSYSM5Z4Sl/4GvedkdnPJtfuTkMD8pUznjo8UY5EiFb8309ZDH/NLVvfTQ4wpYaCuh97vsi0cTMnxkDCmlT3n+6hhaD1gyjaQlgDyYy8s9p1j5LgDYfYrtClVHOjcTxN+lKlPIOWfkIz+gnbitCYn9epvmTsCogyz/ZKEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778816434; c=relaxed/simple;
	bh=YLsaQfbrXCkaGie8iA0gBjVja8jym7I77KOovTioVws=;
	h=To:Subject:From:Message-Id:Date; b=IO2ENyfWEc5n7/5gr27BzQmIh4mtsz5dU1TVU15OKyfC9dHlOgLHjr15z5ltUS+pEk0QoE1mxu2tfomgqcuuHhKbpnlrOiqHs5QiMiRl2QdecxbFVLdnrsT8DRdJnls+IBSCxIYxAt34ONkFM2NVE285XSl1llnZQfQ9avFe5hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZg4iojG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZg4iojG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B9DC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778816433;
	bh=YLsaQfbrXCkaGie8iA0gBjVja8jym7I77KOovTioVws=;
	h=To:Subject:From:Date:From;
	b=CZg4iojGc/ZpZVHfzpouNtC5DPISfeKkz1tUQJ8rcYVc9LYE0rRvz+aswSZ8qdpPs
	 jNU6sVPAXFMUNz+bReqiDvWM6f2HNuDf69AGcEaKI451MsxqSNmVfbLzfUsNhAo+OB
	 STC/Su+SJJAwj7TWiuzUlyK2ny0CQBvX5m8g1k3HiQmw30P+/tnN19kYKPlcCX8Q2E
	 bMiTFrui8wxDQHGHkV9Fansm317OgUpcIAJKdGfUmDB7Ya3GD6dkBiW9mwBB35xz0v
	 kENME13mZGkXN120P62eXfbn9pEnqMg7I4M7LtJBszCazFqFWL+2BWaQAOnNygO8pL
	 VHMTxmsNmwqMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A21CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881643369.26127.15860622407301586551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72cf09c532ef18e939ca78fb8f8a09669f8951e3a87e18dc5acc5b8bd4ac4ba
Date: Fri, 15 May 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778816433
