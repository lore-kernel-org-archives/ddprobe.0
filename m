Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B00215793
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749124194; cv=none; b=Oq25mYxfiRlAUCROMCY3jxVsLua9tQCBs1p4JVkx6A4gJkow335CrDXcpqrVXm7sv9FIYbzu1a86+obdoVZb+xW1owH5FotY5TFq5PBi8wmSnH3A/B9JLoXeQ3AXE0mCD5m7DQU3/jcoZsHOd7SH4oVUTdDhiWYlxu0aEsbgmlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749124194; c=relaxed/simple;
	bh=DYrqo2fEY55r4NCorFFs3WaYt74zHaWc88R0wos28KU=;
	h=To:Subject:From:Message-Id:Date; b=Ts0LijkPlI3HSidFXUVN0TIJ8b63hrqlPn/TrPj4h6ddUERxLoXuo3misHid43qQzia4KM8hkywGXIBrG/pHBFzMLusE4j/4e6uVx+eQqWmn294wsHb1MpKBtKce3uX5v1P6+mu386K23OTDWCk1P4CUE3i+bwFlT5cy7bRx4i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UC9BkLar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UC9BkLar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDD3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749124193;
	bh=DYrqo2fEY55r4NCorFFs3WaYt74zHaWc88R0wos28KU=;
	h=To:Subject:From:Date:From;
	b=UC9BkLarghE/qodFUVJF5ImXsbJPLH0OROWofnNSB8mJadJEiYFTJQ+/1ss6X7xS/
	 2Wn5Dc2+iPwnbKbZKGkVWs4BxA9WCnZvt0LZW7EuynS89EC46E+sg54ZpumolX2DrD
	 B7cKpg7WbZbVgMw9yNKhdJbXSJVQ//doN4I/NPkWkDiNbx/Hb1CgQQlvr6bXhyT8PI
	 frZAXyF4y2yHawM1MHo6BVfxDXbT3INyM23RGFr4PCtmXT3f9DcTtvPKeqhRY76DQh
	 3hCS+4fbZV4RezjMdeLw7sZF3UiXfng3Z4a97V7KqF8KlhIXPfcZicGiwboO3Tmo0G
	 sz9dPXbQrqLrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF4C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912419357.10206.12251691586545125883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4297edee272c4b0a67123e9b6a1ddd049ba5453dcb9824f15b9a6897808cfdef
Date: Thu, 05 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749124193
