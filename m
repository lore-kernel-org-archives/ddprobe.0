Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DEA257845
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781388994; cv=none; b=fT8/B1S3IW6Yff2XbBOAPggtD9KquQlWfCMj0QQ79/EMUMNm42ImXmep35XfMWkiIzwcd5Fvw68cG5tov4S656Jeu/g0e+rJS7Ri2ZHln3EBS/5HRQDQH+T02ps4u0IRDGFeQ9hVICP0P5gMOGtLQ9PcYJsraXoi030lTIJrh4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781388994; c=relaxed/simple;
	bh=zShLBXprTlzvxvb0FHy9UP8sPb5OzGd0h0KKCgpSrhc=;
	h=To:Subject:From:Message-Id:Date; b=kr4Ukvw5191oo7/Xyj9HEg6srO/K4fFocQR6eocGfwN6nRn0h1aW5p8EUh1RPmI43IphUrRSGBCwqsxavay8OVMC8nBxQlW/4W9xyXxdApM6nWO6eRckiLET/zDx7i/QEDnJh/XvonWcLkZLWRACJiC1knxrAEJ+nnFE3Rh4M0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJPW1PGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJPW1PGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D1FC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781388993;
	bh=zShLBXprTlzvxvb0FHy9UP8sPb5OzGd0h0KKCgpSrhc=;
	h=To:Subject:From:Date:From;
	b=lJPW1PGhrciuKiRZsQ6XfkaJFmmU/r+UI3O3Y4EetL01VV5mAks+JFsTbvImaYONm
	 EMhNzIUj3dXaNOLHqv+aEYutOUz+Q5EfVlaGtAxnJSX6fpx/jP8sfTy2O6iGyIiZRI
	 9B4ZBig9XS8t8EvEUSRUNUwLKCiRWb7gWanWX1ceQ+AYWbxsQW2+QVjGr3xwRkwDJt
	 pOMJEjTuAME9ND/9qPK+i4ByUneP2d1rbthpjeVrWwMFMuzWhsXq4E3llgcavDpLjW
	 lgIECcyKO04XIY70sX+0ZePMLCC5xZMGzmiIGZKq9vpr9lreguzUEwRa78eP8jtRzf
	 9XcCWMEefn/Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7598CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138899367.8921.16715512219840080112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ead0a3813974eb6a099483d7246123af305a4479fc1c34a6cd7209b91b2fd1
Date: Sat, 13 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781388993
