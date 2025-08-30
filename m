Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EC818B47E
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756562995; cv=none; b=kcSvHXglxcZ73vQ1LJNkv3dwk9QHF1e/CViVDTA081QhE1HHTuc3DlKK3vTWPkSxe6ragp1SC1fXyJDNqPrue+6+hhmJgHARQYgKEFhX0gSjPHq7ce2/Aautt33zADamsmvoFpo2J64VY/Tin3Ydj8khIOky6vxf03jK+BE3KrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756562995; c=relaxed/simple;
	bh=gyCQg59nhh+B5IGTNb1O7XHFe7F2KjtMVFX72VRGOZ0=;
	h=To:Subject:From:Message-Id:Date; b=eYi4HulkXtp1UnnOjFOISSC920E/T5nMzlVIvZAYv+DlTQ44JlZdAM49HM67F3oHcEsjcX/QvHhOFIBh8IHZFeIDfTUWCtd6hvWGDDLP9zLLw40p/ABbBdPtWPeVFGrvKBQkYm0nELVDXXEpG9x+xUHys8StsUUGiwHxZVzF+jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhMB133V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhMB133V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E62C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756562993;
	bh=gyCQg59nhh+B5IGTNb1O7XHFe7F2KjtMVFX72VRGOZ0=;
	h=To:Subject:From:Date:From;
	b=bhMB133VhrsQEz8OBEAuhOdGJj8NeQaRyn2Cbdu8eabqFkW7PADanWZFR8j1Ia5mz
	 7Adkw+WPBhxw7GO8H+JLINS4/9Xk4iWYZ0PcH/gAiPwQdSSGSU/ejKxwiPfW+Cvpgp
	 cF4gmya1YTe2b5BWChGTUAI2UC1NCiipjb0q8WJzYE5mmuvfBShekj4ODzrkvAyK+N
	 mP1Dv0xx/z0O95G7VZe9RuSYAxN8o/R64lgwWWdq+TxY78AOxchRmW1voVTnplKYd0
	 md/Uf1nZ15lYzowCI2tOKqWJ0YHxkOywlOAxtXlnWgfL1fs/XKk7AqeW/lX1YLPpJ2
	 8s98DzsT6VNuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91906CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656299357.13013.603887366576222988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18faa89c3bf41d393188978bc7ae0ffbec5f218d6553e95e96ee371541635442
Date: Sat, 30 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756562993
