Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D744F2AD16
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768655033; cv=none; b=C2a7lytV3IiznXhHbiFYW4ZjZUMm8OZjj5RrJ7wboeEVE4ama158zfL7Im9+P8YzPwWHF77raM5Agx0dKEDhLSaDad6kpiy9Pd5fKDwpvg3tMADGAf1xZnzustT6G1Qrmjl5RSpAKrAUheF+pYwQGeMw5zpgInFaKnJCQT6WIRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768655033; c=relaxed/simple;
	bh=6+q1eM0AoqXec8/kH7kcGsFg7aK8Jl4C1IRCu3kn+D4=;
	h=To:Subject:From:Message-Id:Date; b=nzjunlqu/CicemiC1bU3C6M4rgcBi4yTllDJHf/SchFifD1TGllDK6Cqg6Bz4QWHOS39L9tww8almkdi/7OgcYYq2wYWjuNyKFbjPAuvchvbR+yAwRreNA95pHK/D7iu6+twte1XFdb9hZNW9L0xWygIkgMecAhBVOVmcFS8vJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEdEWoZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEdEWoZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF61AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768655033;
	bh=6+q1eM0AoqXec8/kH7kcGsFg7aK8Jl4C1IRCu3kn+D4=;
	h=To:Subject:From:Date:From;
	b=TEdEWoZW+4SSiKOjdrpJ03URsZfduoSna1Cm/AbCHJFScFivGlFAy3+Q67jV0IyAy
	 ryyp32H30IRhieoGnLMSbaZPe+JGhffquoaUOyRg5VGVfITHg5BHydKQ6IFjN+GiqZ
	 ergPP0Aeb7zeqZgXcAQpEW4adwMrVqYUt9Y4S671MERbOzwERF8lUEaTkchrPp8c4V
	 sLX8VvdjjnCcPUNu2kNSjQ0vgA8NwW/iXyuH+dtcduognYaLkXYo8goKZPOlFCIpok
	 sUISmgfqXUt1abdfq10HWET/DUWJuBhSRSl6IOTuJuurJmo+ZcESSFQ7B9I4o3v++8
	 E1Ddwgt68wRlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4DBC98321
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865503359.9743.12810760381684185588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9678e3190e36be4af104d5bab9351023d1a5c24539d65366854b6cfbebd36d03
Date: Sat, 17 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768655033
