Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52172D24B7
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790115635; cv=none; b=bZUqKJRjcA4UdbrOnu5OlM+QxLN8wvqw/uTyMY2+ZmTTJNCpsQqAwp3JliA7COvH5QG4LN6yxxK42Fj4N6QrNlHY0IrKNE5B9LJZTyitHdSvDvkdnEIcsx9NJGEE4OXALFvSYNR1O0uwuSaTa3L6LgpL0vEujzzpqeB9dYA4V9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790115635; c=relaxed/simple;
	bh=ZKF6K9QD15SYKfAaLbdLr4InwZHIcJ+hKyFjZHAUv2I=;
	h=To:Subject:From:Message-Id:Date; b=bTVS5RmIobBqOnXLD8U7sB8kg5QihdlX+Hqli3UzvHM7zCJ5tpK8r6lTlBTI1B9YTsvZDsOwfD7ho9Vj7xZ9pel+sTYWKQ4Lg+zF89Mm7r0hbmian77bCAb+h2ItDnW+rCYCwOGbnEutRAsblaT37eW/pPyvv9Sit2zevUV7klE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfdMZHtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfdMZHtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD091C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790115633;
	bh=ZKF6K9QD15SYKfAaLbdLr4InwZHIcJ+hKyFjZHAUv2I=;
	h=To:Subject:From:Date:From;
	b=kfdMZHtJvq5ab9rkOwZ/JE5ZH9yErntwmktZ6zp7qLWkDb0BCKd5c3DT6dlI2fSbX
	 7zhneui/8FdXZtwCjEOUyaWlGz+qHBiTWbF4+h/4vzNlYeZgzl9TILHnlvlhvK3KeK
	 erELG4vp69E/t2oSId4vhz88eWwy2AjRZ3mbWRjTViFbD/XR1Sfu4OI9O9CTz+dQH3
	 sYTssvihDUnJkWP8fZ2LQXFzq8UbChZQboYcozi3XqEr+FjW/YmtSD9fw3IZR5PJUk
	 1vCcJe+HxGB21WrCyIqS5B9gaMwaOYrHHXQZ95Cs0FsKFvoh3Na7Ga3aWP5XlIIJOn
	 /78eBHiqw7cQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79A4C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011563373.1705.6672121078605975522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde5642e33ac85dc69bb59dc7c388fc32c9af4a4813df259046aab9155ef1140
Date: Tue, 22 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790115633
