Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1581C76047
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707496097; cv=none; b=cBCCedFaKVIt/dMGoycNW9MuRV+YTjGebz2sn/F7xptF6vG2ssbm3PyAk4rO0qQkyU6ou+8vH+a5LS2qPX6eShRDADjXWYI9Zm9ca6wMnHIdGREjG7gTW6y4jclVXPMLNXD9YApCtwW7FlGzxR1GTMftvr01MjGqzDi7JUYmDNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707496097; c=relaxed/simple;
	bh=QCl80S7lfeCxC7N3bc9SmkDI2iLbaHjrl4CkQcORQa4=;
	h=To:Subject:From:Message-Id:Date; b=bWq+AO9oJ0elQNKD9NBZxODdwiUotg/eNWrXj7FRD9Mbm4wKK1WTUkBDDJnzGeytMN55CZXBPKz5OVHptfrA2mloK3DrjxBqIuK3BzRDlEZ9l1hrx4QUEp5CDHa7y2jXzXSXnEMheQStfB0kqtn3YgsVHo2Gvn/qh50UIUmcr4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPBO9aAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPBO9aAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C4DAC433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707496096;
	bh=QCl80S7lfeCxC7N3bc9SmkDI2iLbaHjrl4CkQcORQa4=;
	h=To:Subject:From:Date:From;
	b=uPBO9aAdWaJoZ7mnMLCbpkogXKhSbGdc6eNA6V4TkVsbAt+vVcNHT44iwzOmu70hH
	 IWwuvp8Gj0gQav/38yBqT3mcBKh//7TmGLkkhKjVVRCRVal6hT7FixjUAGe3ClLM6D
	 bS6t+KqPf5ppwbibchd9sZmMwvXnWcvvg1zsmWFQZi08ObeIG7on1rVPXmF58CqIN8
	 h1/OWAolUkT/TqXnoXzv+J5pOUJN8GnZDjpqjkBDzhBVOcZgmA9CGtVGkuVGxzjad2
	 ZvP0fXVwD0/pW9FaAbGJB3J881nUznjbNCBIpJlxHt5ST05Z1/NpGtQsbBMIpF3j2W
	 ZXM0Y5+yHYuBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622F6C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170749609637.21698.4012358087402070969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236dfe91f3d7dd2b0b53592a1be0bfa020c887ddd5b4930e3b9b34733b51359c
Date: Fri, 09 Feb 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707496096
