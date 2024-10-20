Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245F65228
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729459554; cv=none; b=rMgpTUVmM82laJHU90kuB+5/dvhiGZYFCcJZ8nxJtRN7gBPUh12WzHku2/HUfWtBfrv0ZvSfUxwWzWG2r6OcLIsHpQCqKEABqdno3dzWkGdSqSmv1sJu0yeR+kvuzdZYJv4csDt1BeStBsz3G3URnNdLoy9LDANRsjBstbG8DVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729459554; c=relaxed/simple;
	bh=Mz3Ni9PB8U7fIoxI8xhZWqRqKLWPIld4L08MkmD1nqE=;
	h=To:Subject:From:Message-Id:Date; b=JxyJWT9Q+vaOZ9fncLe0dicPp+DZOa4ukqNctUurxaa6+yexWinQyNWZYsDdGAnPfb9IL7L3uF8ZbbyHsXW6siAda4Bn5p4Vk5sWQbQabc6YGs5QJw6Gq0gGSG+UyzP9/x+zV8sEy9YkJkIgZ5BuFohdMYuG0SHvs8dYlSnH23Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfPb2vtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfPb2vtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9422C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729459553;
	bh=Mz3Ni9PB8U7fIoxI8xhZWqRqKLWPIld4L08MkmD1nqE=;
	h=To:Subject:From:Date:From;
	b=dfPb2vtQBJ+DY6q6eDr+05UtPPsgw3OFhzuy7NHoOX54FYpRDplxMO8hD5cU2cwqD
	 aZkZOTEniPqJFv1BZxhefk1MLNl+Pz1o6pGLc14vzHpXx11QjXLQ1cwS5wptTKrLDa
	 0xnAvn02q55RLHxogryyhbNUGrK8REpeJHmSpypMMMiz2DlH6JvFG1sjaTPPgerJ7N
	 P83dJm6J3psLqpdZufmtA/3gQmG55NevcS2U+1IXrQweNTLnG07dOIrzUwb3+94xwT
	 v+/bcpn9dAVSOejtU/47nXFCfFZVyXJsbo5JsYtUgSSqHURgHujjY952xaTWGlklLX
	 628ZmT1OBWSOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9583CD3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172945955360.4101.9157451040425824000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94be4e121c23cff266d47e588b3d07fca6034996868bac72e95cd44816852942
Date: Sun, 20 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729459553
