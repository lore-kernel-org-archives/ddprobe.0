Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6CF4B5A6
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719687263; cv=none; b=T/Z0Rjcypgjp0iGs3BKmgdCMPLAw9HV9oMmf7WgHKrmZCU5bS0XVw/kSjPcWb9mxM0lEUFgM48QGcpP2jY2elSbdtnaa/nFuzjJA4rOFrcG6Lfj+KLJ6TKjEIrWjcLnuKOTDJychi2+/LxqK3y8FR0se2VtE/YbFOS725r+3T4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719687263; c=relaxed/simple;
	bh=a7EiBM/q45z8ejjACrKUtReWW6eL5RDDTMhNg11y1R8=;
	h=To:Subject:From:Message-Id:Date; b=sJDD5WWTfjLspLsUD2hl/GWpZTgvkApAF864scBMGZ8D2RLCeH75ZAKNyfnsMlJAiW6tVrD0oaVeI7axzT+ZCvDmpJVpu3PsMEen3ko9GZU4eMHtDwOqOWPECFO2Y2Qz6Elk8m/DiQxecI0r8Hv+XYdcMzW0OoIXLLsMp3wNA0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3fS66YV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3fS66YV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D748DC32786
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719687262;
	bh=a7EiBM/q45z8ejjACrKUtReWW6eL5RDDTMhNg11y1R8=;
	h=To:Subject:From:Date:From;
	b=K3fS66YVODQk0KwfjkUvJ8jAY8fIDYdjpL0lhn7fZukkT22OlPUsAun4wLTlCOC1p
	 eSDnJ1k3C1Y00iHQW9KkCaO21BVB5fR4WHqAamHgT33K90IyzNe3rmrIT8mTIKCs2D
	 VhJJ/kw5999NNxmkm6hP65O++C/CtmdNuyp5MacCfzos7ilw/VaYfP3oTnSCNVYalz
	 A9wOEz+T9dQwQmYg7uIgKkpFWP6XcO6wY+5F40cGRmdR0ihdUmkmldMEdfyAlYYSBX
	 nxtTqcwf2fMZMy6v3HNHpmNhJKG1gv4eiJT3ehf1BWHRrB4/9D0RHczVRDgUe0DnJi
	 8qxEvlkVVzTeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C676EC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968726277.5518.9702886580047628003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb04ef5e0079571879f92a5c1e4f8da0f4b48da1acfb42690ba3c50bfd5bf88e
Date: Sat, 29 Jun 2024 18:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719687262
