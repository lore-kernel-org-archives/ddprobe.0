Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB8616F0FE
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770683634; cv=none; b=NVF3Z1ECPxwQhSBQW94i89Pq2ADyxXAs40533hptzSRlVbNfuMJTk6dy2gEX8FuvYfUn7qPn0tr0KQMv+IMgZk7Pf/T1LeW9TaxI3ByUVAqMptJ7wa3CLGAMutqH0XlZDlxFGh2fuorXjCR9MWDTkZO9r3ufKyjWQa6dS7oA+3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770683634; c=relaxed/simple;
	bh=8wBPscj3X7le85i8geJdDgBzE+x/Bo3lOWSsfjfpZRo=;
	h=To:Subject:From:Message-Id:Date; b=uPqtjldWgRQpFbxPCHsgVLikmh/xI9jL/gfL1NV+8oLQujrpiVDsJapIsJWxGlS1oO4uLDzuWt3irXeFH0Mp6k3UvMp+3FG5w0TObGYkYz8peBYZX9BBaFWRnnlaC5ApOZgoJFv2ZgBTMwsixe7Kirchngcx/BTx51PpjKdarV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVA8Wsbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVA8Wsbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4674C19422
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770683633;
	bh=8wBPscj3X7le85i8geJdDgBzE+x/Bo3lOWSsfjfpZRo=;
	h=To:Subject:From:Date:From;
	b=WVA8Wsbe3HrrwK1Lz+I5K0lIivtkWgzezFFYJxR6jSlVe2YkbWxIOsi5i1wK+BaJo
	 adZnyoU9H7x4/Zs2AnfXrw2wcZ+zSLgYITcvjfoZlRNyhKTemk8PfyN+sqIAXwKw/v
	 Rsej9QqdekMVAAtI4//sKFH6uip7wiT9UgtuERxT+YQdXIyYhGTUyeYwq1SLAsrMIH
	 XW8DLxrCgpimslh6UuE8jfIb7GQOUD4ZtCYmGxwGdAjP919TOW9pSyhw0uYL6RQFrW
	 9+5+8Abo4Y/OKjcWpYQC1Jrk5XcHLNUiwFdQ7XtU2D49bovkzplac9CZOtQUvs7Qce
	 KJv3FKG9JF/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E62CE94626
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068363363.10031.15930249324553000247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f61ab3ba3c3d30effc15ab8beda72afa9f15edd8f88b7cc242e7446b9b0e38
Date: Tue, 10 Feb 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770683633
