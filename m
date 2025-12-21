Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE9A22E3E7
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766328234; cv=none; b=YXLkoc415A4wVj5XwmOOLBd10lVvUMuNFkTdzauuzd12EfKBxgW6dMqkZwXOYcMYuEwgkhqhXvD1uF4GRkzXqwG4AaCXBVrPDRytvfULI0+EFM0JouKxmaiM0Zt9Fk+8ziFL7HxB62BMzrXiIVrK1EfAYZ6bbI0RegnlEUVcEEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766328234; c=relaxed/simple;
	bh=wqiKI6qCEcPaz8xSOPp6w8OgxR2+N93Dlfkz7l5Am2w=;
	h=To:Subject:From:Message-Id:Date; b=eVtkavx2gdXQmEnGWE9gNS9pUAiwFQ/Y9RWRT3GbDE04RsFjJyRlEycpOY6ic/YSeCiyWwF4PmrSq83AT/dEXJo0hYJlhmyDTQLKUyenIo6smT37aDQkEAmtzL/pEQ/iIt9nfq0EhFz9H3kUoM4vycZb3xkcrWBoqYiIgCQNiYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzfP9FYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzfP9FYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D01C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766328233;
	bh=wqiKI6qCEcPaz8xSOPp6w8OgxR2+N93Dlfkz7l5Am2w=;
	h=To:Subject:From:Date:From;
	b=CzfP9FYm+I6k4VRlNNKpzIyYtwWXGxFFYCUfzf6002HL0zSXvIOIjjQ9sJx9+0JKE
	 D1hxtq1n9n1eRoHiA9EH4wOqJsJLg63rmU4v9jjZ7L/WQiy/g9aJ0Df2uzIiXbHZBT
	 z0Fe2TLNGOf8bjEJEVehvquLJEfjqCSXu/NI4INvUlHG6FHzAtR27OBgKeFBBanBHj
	 JgqblKG0++KKQGc0Pl/nc4VV9NcQLORoIyTPncCeARI/N23telXJfM4QL05Htn4Bht
	 XU7yXjzA2vzbHFkhrn15td8LU3lxtWo6ZyYWalfC0kcTb6ME+ydN4jgI0HblDAj5Nl
	 ab1dV2oG12DLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932BCE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632823358.27430.9666500347919301028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552f8839092e8df81aabb082a59c3f8bca9266be1e3e14febe6dc8043fb0666b
Date: Sun, 21 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766328233
