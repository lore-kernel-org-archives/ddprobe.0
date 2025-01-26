Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280B1144304
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737922554; cv=none; b=YlirZO7br2Ialp8DUi6Ga851hNJwhgIciOoSjgEB18VpwSytxOyZMoXIAoghPN8i/ye6s6NBDGU18IeAb9nSGAnQsk6ZwWJ87wWYwQ8gWRv8GWhGgJJtRFq+9H42ZJvyzXs76ngqan4hSf6Brfa7U5aibxy+vSyi0PZQ59WCKZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737922554; c=relaxed/simple;
	bh=cNszhToFflQRFqw7TwX8CZ5qodwzk6Nsl9HHdYEmSRg=;
	h=To:Subject:From:Message-Id:Date; b=aBdoUVJWtpnWuK7rsu3xqygvfYgqrWv5ajH9IGUwLC/ZX58wddxhnUOykw+l61DJa1vf36vA0m29jhIYJb6Hn7/a86F3HQlXbGUvCMekP0NyITBwNoTjw4nluM9fmuwfAxKQInf0UbJLpLhzkDdcckwn0FEqeLWmsv3HKtmdqFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOJuQ0m6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOJuQ0m6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02B0C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737922553;
	bh=cNszhToFflQRFqw7TwX8CZ5qodwzk6Nsl9HHdYEmSRg=;
	h=To:Subject:From:Date:From;
	b=JOJuQ0m6WFLUqM6Zv3McaMfeA7FxX6iSCFNbPMNJQxAigPHVMTDFJuve8xJy8MX0M
	 vXHHNEj9Vo4e9bRpwVx9NuS3TOo7wLBF5XBtc6fQIi5CFCC5c5IkQO9X0jNGj3aBiG
	 RgEcBHPs7bxYrM2dRVpxP2PqO+5A6f4g0zpFNuZgAXi6Md7FUj+hPEWBjoSasmuCEj
	 NxekNx/pdWWjHmr7O6rL9yKuQCsNHT1cjZJVNg1IBKENUHpITEmG770NXwh81wbY3T
	 rvNkiEsl+65yoR1jQy8rdJsmdcKd3EmRZ3ESQD+cuS7BsOj2Vv/NBH+0ONunaPJl1y
	 GC1py8lvW7wOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0FFC0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792255357.22015.7991934498938135484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89a53e1b7552147e4f4ffbe388275089ff8688647139b535c2dbacab4ecf0bf
Date: Sun, 26 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737922553
