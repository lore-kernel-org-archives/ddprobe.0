Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AA71C07F5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738322754; cv=none; b=GM4Th4AHmLWDuoeXfShNHgyRIGvqxzDIAG874LXFZc0YfTV0ItVx63B6NJZaRAEnESxGY41UMifTLwS6UpISy+r/eB0JgpPr4K7mP6hEVBjd/EBQ6qa4seuNne1CgwgUE9yFM4upY8pA963Fq0QEgHq1OV/taPakpSw6cFa3+Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738322754; c=relaxed/simple;
	bh=OGgSiOxmtwUnniOR/FdTz52nzihV05Fo87SX4LdZXTw=;
	h=To:Subject:From:Message-Id:Date; b=SivxAr/1NQTMk7TbB/mbZAVufEk5owiFPYSmr5TFCn6c2OhqtEG9WYVSrKbddRZoWMOK5ywTZ0IWuPLbTf5jqYN6vLf6n2VuMx4ZJLS8awVH7EA+J+i5XE+Q6ozV1IlQBZs8IXjtyQebGPxwMjSN5KAI6lhfjbc24c0K3Hwm9SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWZQldJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWZQldJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2672C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738322753;
	bh=OGgSiOxmtwUnniOR/FdTz52nzihV05Fo87SX4LdZXTw=;
	h=To:Subject:From:Date:From;
	b=qWZQldJdUhmYy3+opeTviXmTgCwW6qT9G3BIaCEzPo+ZaxiWhxN7NI2bKZmTm6Azu
	 anIFk6FwSKkt+78R9iR96W5vUwmH7Xw5cBFqyRUVy1KYkuhrY5MapJdjuYKs45yyaD
	 m5FE014f23e0InKYpVFfqn1N6wgZzrvGiYVnm4LiVBiyGOUBYhaAMeNOKLuxIC5NOg
	 LndaUfnpwdrVM6jN6fySIzfyIXMEDjwCAHWpf6eTrG8erAizBAwfPqVUfJitYhmeUy
	 wzgTdzXfzJ07UF5Iywwm4T5GmiidSpLMVfDubHtRjJmYIKsYZjeLR6XhabjOKwAgLJ
	 gNbZY00BGOjhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75CAC0218D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173832275367.30446.6726519676452884307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde00ce1649cde7c464ee4b1994474101a1cc0e8d350ac0ffd0f28f402614295
Date: Fri, 31 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738322753
