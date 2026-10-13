Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FEC37CD2C
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791903034; cv=none; b=ZmMezlKfM0lG8DfBCAUWNw62Zh05whpIlTdxQuP7+fyWbskShAiVWZWbJ73NhPGmPxGnlFwrxxv5sY/T5WItGhcD/njXoWX09/tWcQL2l8lZkSJsPRVEVlJeCnFBuX1OdOAQ8efpvtXQ1hmoR4A9ZLLG8NUCp+0XSKssL2EwTg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791903034; c=relaxed/simple;
	bh=v0vUgUZxzd2xdcC2M7ttlJxLUnnC2ROKuC4l9PXDXjI=;
	h=To:Subject:From:Message-Id:Date; b=BvjSSuGiWq+NaXylCr1/bRfRswQp3SH55XabsBf2sgKPExRWQhRiuNJL5shUxZLtRiKhLFWgIiK/H2RB1KpJt8ozhvZRqlqXQRYb6r1bQEfOUEKmPBdySpNikuJDx7lF29ubidY8Aq3RJowWw1p+7pPTDk/GeXH6DPH212RdwW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSwgr0wX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSwgr0wX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBBCC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791903033;
	bh=v0vUgUZxzd2xdcC2M7ttlJxLUnnC2ROKuC4l9PXDXjI=;
	h=To:Subject:From:Date:From;
	b=RSwgr0wXucxEckEaHZlCoCfi4+n+BCiPih8JUeWfWQn79PZrJ0AQsureVLWoqrvoW
	 CKtegJ58e8u69HHiCC6qx7EvRIQSvW3MRmlS1LaSV3AqCuwRMbh9MmcHwEkdsPT6X0
	 Reu1Adr228HUrJN5MfJRLJPTRRpyRou7L8i1y6Sd9c7+6rggG4RD1STaNjwq75N3fr
	 htqfpj8CY0DD/5SHdlLvheDRgUYS9DkeYt8vY62EcXv4C+13K8GcuJgxXk7txA88p+
	 sjron5Ac+WWMPbh+JWgs2iZ2HW0GruB8yNlDtsPzRgqxuh+mTocM7+4fS3A8B/K5dS
	 0QgmyPDVNuFPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC8FCC6B0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190303369.32292.8033646466642603478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0bce747c4fc420b1ab13b5ce493bc29218148519724125670c0805ffc202bd
Date: Tue, 13 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791903033
