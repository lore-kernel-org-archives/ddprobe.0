Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA821D63F0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776893254; cv=none; b=nVZ3D5WiwDsId6h6T4b9n6i3wriB6YhKAtNiEvHSKDthRCB2yOShnV2o1y5FQeMsHavMmvFs+n4iwLhT3fEdPs+8FcwKRjpp5IxjiBTTQcv/XaPTt2VqvdaJ7ktDzbv77k4kJmutvECjMVCchWYKSQ0dxKxftAIaCr3vRseMwik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776893254; c=relaxed/simple;
	bh=PEwKHOzqJSzV9CtsC8T59nyZUqrK6HWU9tt1ACbmOCs=;
	h=To:Subject:From:Message-Id:Date; b=eVXI+ckGMsu9D1zB8rWUB/Bku/VdvNagLsoTx0kJpg20E0TMZVXItV1OhqIOXlncHlvcCFJkEzkWaL6Kd8D8qDOWkUaanFWTZNUoduWwGmQD5tdvmQKZ5bymk4etY+2u7Av0Q7DJXLZtx+WE3nIpZRl3IezaPZimCI9I7ysPApE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyUOo2UC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyUOo2UC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F56C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776893253;
	bh=PEwKHOzqJSzV9CtsC8T59nyZUqrK6HWU9tt1ACbmOCs=;
	h=To:Subject:From:Date:From;
	b=SyUOo2UCmXOcZ6HS4NUFQunwjmSrCu/viDEmlekh4W8jHqdnhlyjOn8su0/cEtIMY
	 pPy7XIsBJ2wf4zAaIzlSuH8Eb//AwXWFT86YcpthlpsI8QRLnehqQr2ykQ1aYeQsGA
	 IV27ZIo57Yj7uFaE8Zw2ZH+9adRR0DnvxbFsH/KOdbBfoMMQuDC0B+aG/xBnvoLRyK
	 bHYV0Zfa/Ex5rSsw6wrLXkyTtXwNJAehIi0PkOANJAUJMxT7zcBqfRbfl1nlQH02lF
	 yKlDKTixDxCkV0H0o7WfQ7cq5FFxdycyUN9cWkbLoaMGmCd7UKyia8Aa7pIkfx7ANg
	 LNcQ+CsHbLQ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD471FA1FFE
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689325368.1261.7001998512445527151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b3bd06abe917b736e621fb0ea719638b66b12635f707a767caec6fc38d6312
Date: Wed, 22 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776893253
