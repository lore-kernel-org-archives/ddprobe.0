Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DFF13D539
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751344794; cv=none; b=Yn50/6d6juH1fmlVwXo/Qnfz3bOj4Zjz4Rj5ECkIfsN+mxsNesFbqc0Myv5qxa6iyQaB6vOvFWjbE2IgcYs6U45/KMrey2MRfofl57UqpWqb4pA/ap62MCUWEXCsl60hCXJxwAQE/IBaTexFraRUxZKJQ/Wzm+kow5uw1fekJJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751344794; c=relaxed/simple;
	bh=FnvSpK+aZpLTrubz4BLtr5AjiqNwKGATDL3p9vzoqZA=;
	h=To:Subject:From:Message-Id:Date; b=fiKIlQruyQPWpThtUwsVL1wOpNkZ3ix+w04tED5X/4DJByaGTtttNt5mCALX509lsNqgtPzxbH/KyRxZkVT7O9tABoqLMI1S/xCjLQuEkfoTpJBIVsNDHvCtbSUmepHy4jVKhD1aBj7oCFwiFacEcm6JJIBUZhGGYe8C4lZ/zL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdjqgQfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdjqgQfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B460BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751344793;
	bh=FnvSpK+aZpLTrubz4BLtr5AjiqNwKGATDL3p9vzoqZA=;
	h=To:Subject:From:Date:From;
	b=PdjqgQfcdoS3ED8anePpQk/xs2JzvuYZkrPr+YKB6yEodoXHSDPcwjb7rSqsnGjFK
	 nzCdgKcRkhNdUqOR+wBI+1m8tC7NAJpQY5SfT0FtQ900fUYLJ2UTbsmICZpy3D/2Cg
	 PJBuss8ev5kW7Spv+i0mOAdEr9lyk6Yla3W0JAmvnZYK85ZNdlPuXrJ+xGqvaXI9iB
	 nQ5IQQCarfclQZ2PEwx1Kvq1ILUKOL56Rt37CEjOLvDNQRe5o5ZSyaINmT6kBizO7y
	 z4/Kibf86tNoz4mNIFHwhfDsEd4MzW1IfEOlXA8qXF2ecRrWEguQreNSsPSOWDYKYK
	 8Vy33NLuCTrRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40CDC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134479357.2843.11099811069579381479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30ce7635bfd8eca25af83fa5deb7eab5f75c660ea99ee546856289913d9a90e
Date: Tue, 01 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751344793
