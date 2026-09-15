Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32362DDA9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789444234; cv=none; b=KA562R4aUlmtf3xbxJeJxI73aEe+xnH1SHoVFkgUS1N9GR/Pv+EcE/ffbbHJCXIxR2yu0LDS5j0Dpd1PCTmS1Zi4wkUMbw10E9BcJ3qSL96t8gvC5boL6sfLb94ADoaLmlIep2mZTzLEYUqByXwiKr4D9NeZ9hbHYQRIDYX6FyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789444234; c=relaxed/simple;
	bh=2YUDqgijzlZ8Qt0wXEcP74Io3ZMNpifl1RLsuU9qR6o=;
	h=To:Subject:From:Message-Id:Date; b=gUUmb65Xu9W5JuPr45FwRN4IJnNkNIEMD04vE6ddV9hMWY+LtSMOB/+BNe9Plc50KcqMPJwwWLDxxA8QfL9aSG0oBhTrFQlUaQZz8CDhbZkMubb6mwk4BXkGtT5iM7L1rvVhZ2XhsY46VHcItzM0qUlu7SFB833ozGoL7OWbd9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXDCxLwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXDCxLwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DEFC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789444233;
	bh=2YUDqgijzlZ8Qt0wXEcP74Io3ZMNpifl1RLsuU9qR6o=;
	h=To:Subject:From:Date:From;
	b=NXDCxLwe/HVSsUACG1zSZLc3uQUt0DDRot+BC9fUPibjjspuyuQeT4DLN/N4togOV
	 M/R7rY66xzYSwOm3DLNXE+Nt6ymRzl1OBRhY8WJB2VK4MVNJQIxDqF/aSkYHFtgGdU
	 ERDjqnlQY+GIn7vhW8NSRNDloxMEy0WQrgAkbO17KY5lD3zVHQzQWJlniHG4R8cqqz
	 NbNK1QChLWmeOp0IOkcnE7Zg2vnVqmLmxnyXgeSfOzUBR5nvYbvCjmfQe87ZMVvqTK
	 eQveFtsShdg5Bo6F8Y3tGVAEZp6EBHyMy1fFefuoSYfIQAX/Gfs/XFEY5eIgzQ/O9L
	 5kR4WV9ZQoTcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9949C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944423368.23873.2320051857961870428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb978fd6e84a2b2892cbf7de011c7656b2d9362ebd16ab9a72fb69c4c8ffecd
Date: Tue, 15 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789444233
