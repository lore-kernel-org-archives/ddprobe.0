Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E982BE041
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759224594; cv=none; b=oBys2FkOnXjDMdyG4ri9WdusqY2kmNIQqx0cBf0HHuWAbrvNDGZyUer1hED0JBDFk2ottMFn9Dl9HCYKj2J4UUliTKC7fps57y0bD5Qy+7P2EnsZHGjYV1gwIqCKCCvlGu1SL8r2Ben1rfEAmyVeKE4WpqN/hcwqQ55ii/vZLbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759224594; c=relaxed/simple;
	bh=dTSamyMM0rLB5SUcYhlmgxq+GD0vSJspCewoUkVFXx0=;
	h=To:Subject:From:Message-Id:Date; b=bOxyo8V178cSb1tBr7mAkTRmXSqtnrlbBnlOXQ6TZiM3mNIv1exhcpXAS5ZamClx8ROWaXp0pYWgeTQ8JrIHp/5GiY1QX/JKUIgf8Y+GMQw4dj9AuHDKP2sY3lcazRLwgafQPzC7NcduEdDF8kCAIQfL69WpI0yXgUlsQJ4tmqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAYTgfyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAYTgfyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E93CC113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759224593;
	bh=dTSamyMM0rLB5SUcYhlmgxq+GD0vSJspCewoUkVFXx0=;
	h=To:Subject:From:Date:From;
	b=OAYTgfyUqKei7AWo2kYaCggAI9upM7j+AidSTfUHNzAsSedepGyH/iLrVyXsgi9aR
	 j2EKuU561NJunYz+6abiGzYbz+8gLYjarBvg4qZQuMPr+Xu1spohc4ty6Z/MLiiCZ4
	 0iKh2Czsj9/iERXQ2Q261bi0PUbnJYtcgUsDztC6WKW5++CCieRf5knJTVN0vLv167
	 WRjHgkOu51oCN/QicfH2js8/QJCO5sGxolV0hBSE8CWVuMPGbrwWXIpamxECDMDBYp
	 lsSu6K+CZljW/Jtft6V1mF5gyzzI64EsfxgcWIxwXhGbSINTmJJQCdJqGvCcrvjejW
	 fnIFXyNCawf8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDDCCAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922459358.25738.2364167038843186023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9b98e1a267a853a12b2ca1a32fde2ac7d97e0d402087ae1ead2f8785e1b8b2
Date: Tue, 30 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759224593
