Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A7E1BC3F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750188593; cv=none; b=ZbIOhANPTGV4oqWMx/DilO7c4i8pVs/fg0fLYGSIk3NxGxy498NbmGjS+Vrai3KpNdfHC63jd6VwcXhoEiZ9t6blQla3AxWSU4ElekBD9QrZUb+1GM3ocVDzwjySE+YL+AlkhybeT4LfLdejaLKshaRuo581cfgiBx6nAY051vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750188593; c=relaxed/simple;
	bh=vNI6RD9mXzh+zajAtdk6ktkONdaN96TWdSdi9pOrdVA=;
	h=To:Subject:From:Message-Id:Date; b=ce4pTkNeNG4jUM/4d2cS/9ujgQbdanFejZDMrIjKGRezoNJzQPwQkMmNaerJOl7QP/h3DND4OMBdTD+3H45lL4GyUT79yNoDGDFFnCzhAQWlKNRcei6WE7sr9OufyAAX1NB2ZtQIS1anV8/+/lRvzXU69o1lkijS3DvJOwju0dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ri/J3gm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ri/J3gm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F4BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750188593;
	bh=vNI6RD9mXzh+zajAtdk6ktkONdaN96TWdSdi9pOrdVA=;
	h=To:Subject:From:Date:From;
	b=Ri/J3gm+OtkgxmrIxm4trxCMx/Bf6wLSeAUVpcHzOvsXg0y+QZm8G3oegQIBmJ0po
	 JuU7Vh9Gr6hOZCvJZ5n6EXtvsgVVfbOtPtkHzvu59stkYp4V3h9jrmauTmj+DseB0Z
	 JpjVohYI1RxFcs3guFkIZ7qawTvcngrJBxYvTc2zW8OgiwsccTDD20VhttWX45wees
	 eFJvYdwt4Y/woFilJ4z/fhDz+Rvls2ztu6jLYzM9HwC3kboDoUmbL+VYGJOvdVOgqX
	 nECdm+qu+3+dpyqiCRG17YOxJPt0N79H17m9GBeA0g5Vdb1RuOiTT+FjQBvL6aHAZp
	 FR0yGi/+Ipw2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F7C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018859358.6064.5330629225050956397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7ccd156cb3cd0dca6a3a3cee35783809e22656b6d1848782e02d09e7ab1728
Date: Tue, 17 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750188593
