Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6A938F233
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768947835; cv=none; b=D0PQpf3vPaOFyceLtD2nOVm8/e5h2moJs5vg/tnxfUFmTsstXWKH0rjEFAQQV2L82F78iQzGddJyrW7AdC0swFMPxmgTvXPs3W/cInNTUzv17DDRj0nDGYshAJELiNzwioj9AwiaZtxOsVtea4GJ23Kh1pO+S9Jtzzch/3/qJvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768947835; c=relaxed/simple;
	bh=cNHGq/hfGfvC3yYffexeVmtOAI2JDoq1CKh7vG5bA7w=;
	h=To:Subject:From:Message-Id:Date; b=WGKqyPEl3cpdB5f3sz6GrXkbEaOA3Vh3ibWD3boICKg89FIIbsnTd16jsPy4LRwChRLU+kf7rkfYxCWRTRXahyZOKv6XIbLw6hQhJic3iUBmAoB2jkhTQSBNJvAcIAiWj+wCZXwhIo41foMw3j9ePeOdYj/wszMK2r7CT2vnWTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IApxScxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IApxScxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3614C19421
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768947833;
	bh=cNHGq/hfGfvC3yYffexeVmtOAI2JDoq1CKh7vG5bA7w=;
	h=To:Subject:From:Date:From;
	b=IApxScxKnhH5yDxizzhdFjTaMnarhSpMOH6jOrvOGty9kqnHAXikcesrA3ITzuPTk
	 aCz3nzydxT7CGsdYdNuD33XKS6RE8JU9fjiScokta2dHS9qYANLOApl6zEzMUIX+CF
	 OEUvYtbrX+UQKnlNncFOJjVztBh8uCGDtjMLb6rtBbj8JJpz9GFdc6ng/Jh8lgGdA8
	 NDcZ+ZLi74E7erAYW0ktsnkWM+4VwaVo+GVqlu5MOJijhwiOIIhrlu2cSGqH4Vp8hI
	 bt6opu7x7f3Ra7y8qK12NAAZP/GdnLYBRwXunK0Kh1JteKFcule//GbZK0DXeiJR17
	 V9BdoGsSvK7lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168CD262AD
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894783358.22127.16090272603314231602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b0bc520bc2808e120037b61d528cf110c7193a30c7175acf462ab46f26fb25
Date: Tue, 20 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768947833
