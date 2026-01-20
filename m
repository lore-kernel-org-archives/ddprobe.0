Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCA73D6686
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768903434; cv=none; b=JaBuKk4X5i8Fw/OX6Mi1GUJC18NHicnQJyxPhkWBiIoWfgj/TzXEHtU0sJ7calyAnKk/wkAkM3odqsOVpRHPAWJK483P6DS2lSaztTXo54WhXx3o5lb0SU69qssFTOBOtKmrvl8y83rqNVwOS3xWeFra7DI59w0hdgRYE1BKfxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768903434; c=relaxed/simple;
	bh=A59oJ6oCb53E5Elp1LHco8oAVQ2SoruRZ/Yc6rxcZhU=;
	h=To:Subject:From:Message-Id:Date; b=BTLOe0VsxBR61BGvnGhVJ8jb6gD8kiwtQpdWoxi0CvC810s+CfZqA8zvQUUinbeypzA0zx0DtP+xAZczyfMle5Tfn+BoJqKjMNchxpFkQybgvdQdc4sLjsvWYNJii1ML+VDu0qyfORwLUmHA0HxHYYvaUz93xLGlgjirT/Khl1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqbQ+hgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqbQ+hgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C29C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768903433;
	bh=A59oJ6oCb53E5Elp1LHco8oAVQ2SoruRZ/Yc6rxcZhU=;
	h=To:Subject:From:Date:From;
	b=sqbQ+hgD8n9V4XVEbifYU/XG3v+Dse2ZtfUWhl8071017hDtOd2OpFUf8ZaQvTaDx
	 mNlANO/YliA4RGsj56lQqJQ6Cfu9vU7FcgcXBqHX3DnOATQ09pkbq4gAJ6WsgWJIjv
	 wIDabJhRXlQ1DQ+fllUMR1C4LVRYCBtliIYjY/7BV1jSZD5JZbXjJcgLRemRcmF1vB
	 LqY6Doz1tTwNAsFxgpaH6dR/LL5vF/lbBBLYArUk/GBTMKGIsqAv2N1bOy4hrmo9Qp
	 9PPHru0cxIOrww3UqYhZQ8U9sM/7e2SaYEMRxqFn6dJVYEf+EmAUT9Ek20tUyMuFKV
	 UG12Z/Kq2N9Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A5BD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890343358.17276.5320087792674103043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397efcef3791e593cddf55a1df8d5b54abb3a5e2b04413d5181a4e74d8594d8e
Date: Tue, 20 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768903433
