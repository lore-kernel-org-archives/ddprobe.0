Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C19420A5C9
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730239554; cv=none; b=BailraPNonVCo5eRWX0IHCwVtOoILC0ICVk5A4xHXRvES2M9Dsf0xKYkEVRtQjrutUjNgBCPScx1/Bm2Fmkrao1c3ubP2Xz0lTvkL5eYfQV3jAr5TX3kPRLSapQGK0Ybn1L0cmgjlKOaQuH7UTOin1VbmtTql7lZFFG4w9GzONw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730239554; c=relaxed/simple;
	bh=jM3Y6LOcHVv5/SCK+jHTNmnTS86d3bfGNYrH43A7OYM=;
	h=To:Subject:From:Message-Id:Date; b=u0NxmWAsmlo0yWvEfXhf3OPMYN5VAZjpyxVIu90rEMBy4eCMhabzdCqCFInNTmkk3C8w0VHZrnGR0XkHQf0D3zMYf/x1wGr7g3AFiIchMc+no145PHYeHcaicf6/DqXyKTQDrG+zZ+ZAf4Ej7vOYEQYYii8XujQsKNy+UkEYzdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAcCe0en; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAcCe0en"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE766C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730239553;
	bh=jM3Y6LOcHVv5/SCK+jHTNmnTS86d3bfGNYrH43A7OYM=;
	h=To:Subject:From:Date:From;
	b=gAcCe0enV7osQcgWqDu5h6zX0OT4UxUbETWeevZ/2CXOXVBOpBplXhL3hB04wJ9+B
	 tai9UP6O8Go/Eu5Gczs/9aYS/JQdI4Zh4pmC3e2hGJg5xsb/Y0dui+NU/M7BMZEGph
	 PYEQ+OzYbKIK4UQlixuL9S+ElScPyYOVGJoamOi8+Q6zM8NzXwQrhpM8jXCfoKEhjB
	 +qc1IEk62tobSaTv3HsmbixoprpTsota0RFygyPjm/3bn2e7I/hNZKbmdlAPjNIP+c
	 YFPIqc6igE7B6XCDL3ZjNwCHJ73xTOQcUjCvfPIMBeaK1Hh+vM67BygH9F3uuNqNUi
	 bGPXW5eEYS66w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0D1D74943
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173023955362.15144.10766909703046347097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d37c910d859ffd690a72591365b98fbe7600db735e89cc581c2664eef11deb
Date: Tue, 29 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730239553
