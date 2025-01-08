Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218EF1E1C3B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736375154; cv=none; b=qHUO4z+Jm/RLncLuDJSiIxd2xp5wlp8MdDK+Ll3Vb1APHyZPmB5SmMuI9F0A/G0Ug3BOi7Yrog3b6IRUg+NbQccFcuzNy375hZGtGfOOaJmXzWIFg6kYCxY/pwS2dxKliIHQz40L2+wjoR6KMcgTWHoU5zLA7jaGd1nMTa3tvUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736375154; c=relaxed/simple;
	bh=HCXuKXoCfGS/KnDvGEGYS1NRdKy3wRYjEb2OF6VpQAs=;
	h=To:Subject:From:Message-Id:Date; b=hCD+7lSSX4/EDMRaVcJQqrCK67+TDTgydKbHIPjUS/jS9lflUHVnL9WZ907Fk3O13ZIaeM62tbmctJFXA/JvR58sBT3G3Fg8xv5DS7084eMwRU3jTHsIn0qh4fJrjgkj9VD8IqqUONVjGLcHteZf1hg9f/0mHhHsFKHQeeebr4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOMS3Dtv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOMS3Dtv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8D3C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736375153;
	bh=HCXuKXoCfGS/KnDvGEGYS1NRdKy3wRYjEb2OF6VpQAs=;
	h=To:Subject:From:Date:From;
	b=SOMS3DtvSQl5XNrelgg8cdXD8tpqUG+2PJQG7irXx3Ef5VwNbj92EKMSOzCP/mq0C
	 iuPNG3qD8zG+s3AT7GTROaUEH1uT8KkUP3JsN6VUelh9lXr368Af6X8gKxEiaakp8N
	 n5virjctFw8n9RjhzHw5XEBwbJe62VVs3klmsdSAGlq433z4+iEnh2QUzQ6Y0AL+Lh
	 giB4sDifKGuuhfK3RhsrSTd4NvBAgSg3xmLJl5FedDCvAfizzeoxqTnb4mkqMKnp6D
	 2CR0lOuL96GXF+D7D53FFjOl9PgBCL56kBipXqd/nbCozCXmueH7lxDFPr/igQFe/V
	 FIgste+XftaBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B074E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637515362.23623.1485900563733605560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897bb392edcfb6555fe37f37cb0d2321eb555b90731f25e6a0010fcad4652fa6
Date: Wed, 08 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736375153
