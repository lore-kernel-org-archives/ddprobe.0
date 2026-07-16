Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581C0280CFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784167114; cv=none; b=B7JsvHrH/u9j+mO6jOkXgteOtFE3zCWlAaA/afTv5C7CbgSOkJpsv4hvivjgISdvN3kCS5weABxzjulZYygIO/bwhBlFT0XAG8n95oeHey8fyu7cAnkh9RutY6nGVOlAS39jNUiD64wOjUqTw7Rf3qFS7Er1LRVLl5cvPhmQxXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784167114; c=relaxed/simple;
	bh=/PRKhubv8tybJMfPNyPZ/IIimA0rM+lQIsPGxttP374=;
	h=To:Subject:From:Message-Id:Date; b=mIU2axZ8wlY3de88EK1Vs+6RvR6qTEdblGbk5KKbSb+wuJdpUMf2BO+/eiKPvRlyVOWzjS9pqvqdmX74d3rK2hkNvPQ9o5aZ4ndH+7zsWf32UnzV2b/B0igfkX08FefOjaxeRGG6o3jACTRoZbLjwXajOSrHZcan7Nq4kzrxdng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNcxT95M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNcxT95M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70F6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784167113;
	bh=/PRKhubv8tybJMfPNyPZ/IIimA0rM+lQIsPGxttP374=;
	h=To:Subject:From:Date:From;
	b=SNcxT95M0IY7b1TiHnK7zDfKLjsCQ19+cMEqxvjkqgjkhaAQUDBJr7UuBKXYvP19v
	 PvVnV0F9EMF2iHMNkMabQDrIsAJTihGqrWjpCDayFMPVLBi6xQssj96YycmbH2q8TU
	 8w5H2V/YySk44/CVD+biTI2Lika0n7ZdsGTiDAnUvZB5ng8lyEkwNwKqum9c/DYnCs
	 bRuAnSs9pkmzOBI0sif2Xbtn0SZ8QNOCMkH1re8QDErssNKXhun0P/4BQWNdZlETa3
	 +Iw3kv/kX2gDnYcpvyEg3qi8BVW0kE2iDoD2toxhMNZai/NwjzU0/NhVsEpT9vrAPL
	 mIFL2w77eZuhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A43C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416711372.10634.3137816372448773180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a20c66750e74016847839386f9ee1e887b23e33cb449e31317054ca3733471d
Date: Thu, 16 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784167113
