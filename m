Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9AC213E89
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771058694; cv=none; b=Rf5ZzN9wmRdBrUB8WoL1DjAA1m3QOC9mwCyUrzh50MuG3uLlUfyxaSOQO6+2bElKeARRdFjT61RhbYevhRAlnQKt4Tsx/9qErcrCV+y4Ei3f7J8hMOcJwREDzI7Q9/vItdCxbYnXfiKopNfGC7PuBHuemX8hfmFXyAiHcXYZwsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771058694; c=relaxed/simple;
	bh=hdXhOkcNi4LPYM0QYqoN50YqCPstWF7Cim/voncrvO4=;
	h=To:Subject:From:Message-Id:Date; b=eFXfWPUcXDONL1jfSgofXs6upzaObaeMy2bgoaEj6Uxir2zHpJFdislabIN3Ma5kQadR6RzFGfnE2NSh7f4QIs4y17vHCkCYqlyiyuB+yOhOtNB3k8pOj2TJWD4FlELJ2ureH35lSi+SxZ2dNSS8J8zajmTYpdUqVrGAI2VDFAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaKGj6WT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaKGj6WT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B779EC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771058693;
	bh=hdXhOkcNi4LPYM0QYqoN50YqCPstWF7Cim/voncrvO4=;
	h=To:Subject:From:Date:From;
	b=uaKGj6WT7IAVhQv+z7qf94qRO8yvXU2AcJjpogOBvlK/TEsrz7qVy0FFKqrYIC7i5
	 fi0DCYjbmxiV2pbj3/nNQXBcQzxB5NSUy73GEOeMMjSTI/lRu06u+Dcn2LsgVIopys
	 05vW5f0j4uJpYwlvpuHyWndyu38UBpQSCXPLFC+f78kiJQWX/0Yc/Ecaqmd/siwHZV
	 SVyoVlrOdcrS6VT3Tk+1KPPBeAzr9muy/nPdUUq6/WbRI1Cm8xQeg5eQyRegZhHoIP
	 jbKnK30WM5+O7yv292xfZwOazqN6Ov3icneqWX8JQkcaCfPgGU951AXdgnRDgyuYoD
	 fR5Cu2z/Co3uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0555EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105869360.27112.1236747262297929421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997454f3c17e44ad50607ff041308eda5c582591fc67749c97d3cb203187cc54
Date: Sat, 14 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771058693
