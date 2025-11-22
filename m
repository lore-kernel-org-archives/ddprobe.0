Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260B52FBDF0
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763806914; cv=none; b=ZQS0NDIOpU+6ja4gQc50YskUP0GmKHupglmW2swzVJ997QjajWL/Qiy38AdHGUMv3Zauyk1wBJLiO28OWPIYhNkJp1ZKmLV5cfQr/FRUlog7blgBhmk/SsLLUwHhVu1sj8qqfCLdCwnc0T5f0O6XMEL3GXIbZTESS8xxMjXBUOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763806914; c=relaxed/simple;
	bh=VnF6+JPNrHddDViIlQXoxzGl6DvUJCVmUxfKxnsbjPM=;
	h=To:Subject:From:Message-Id:Date; b=XOnd8run6xwBmcY7eCvvQHncrNQsiNXSVsg7zJK4u113Ii6EbMZl0I95L5lgOZHPEQU61GPkm9kRFu9MZjfniEL2w0G6xxTU8B3SWkMeZH/7TG2IPfxri0Ci0RM23KnKpDPeR5dMG1RHpg6dHmeFH0yK+MO7V95KcYScjW6J920=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtPjs8j9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtPjs8j9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A746FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763806913;
	bh=VnF6+JPNrHddDViIlQXoxzGl6DvUJCVmUxfKxnsbjPM=;
	h=To:Subject:From:Date:From;
	b=GtPjs8j9f7xdYNtwjh49PU3MhRqkIn6gygOQjvTYIv3CZjZSM9jMVnzO8C0ssy9dR
	 QfoImP3fmrMuT77BGPBhM3IH48K5KXuSQ3XdUqI8XKi4DSzaO+ImGpX+aQ3dzQftIR
	 wZRSvWyLIaTUZzM6E+EBfrknhXHdFDDYyqy9SZS+FxwAD3aFZqge39rE0taMcJmk9i
	 LDO9EmhMl43610WUw+92vlOryg5mv4tQiai28FyDmFiXQoC8YgN8K+sv6KZnzgQLAo
	 WYoa7v9eToynynk3YmuDnZ73M57XdtfomEeytwOiRRJYXA20gfnlRYcH7aLaheHGIA
	 xUzu0xKn8KbHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A5ACF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380691359.25576.7074254980137635418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f181e4df52bbe9634df92046c071b4fb0b08616e1185f07199e42b3146a709b
Date: Sat, 22 Nov 2025 10:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763806913
