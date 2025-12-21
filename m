Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271E7238C08
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766331834; cv=none; b=PsClyq48PoVSys4WD5a/4sWlJF0BULwU9Ph7SKrHmJYe+9EszVtKqBxN65kAifpvT3PKFXtNHyXt6NJoTpyDdZumj60+dPkpGwlK57k6amg2EDK1b+oEDXLfRclspwJsvGQAa1GCNNCUCIlWPsBshTQNCBAaXU8bMoEE0/yQtTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766331834; c=relaxed/simple;
	bh=0pHG8DhuPgJbHTABp52mzlKgqWORVGNnTyENsCBO6rc=;
	h=To:Subject:From:Message-Id:Date; b=LYqAsU3krjLSuYFiklkCy5GKy0oreDueiCmGlvYxq5GnE/3IuR3q+hyssvtKUtpB7Qi/Ji+eKQvDipc7bckbwICNPdMzLJ4mDdXj5UBXFIF92FDIcM5gWjfeaYbbpOiufhQS2tacziXgKIfpJdDDViMN4AzA8pJ3/rp8Utfnglw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HU5KXUvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HU5KXUvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D9DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766331833;
	bh=0pHG8DhuPgJbHTABp52mzlKgqWORVGNnTyENsCBO6rc=;
	h=To:Subject:From:Date:From;
	b=HU5KXUvKkFL/2vWayYykiDXEo5dvPUqngTY3tHryljoVkXaT+FLS0/xzSmPy//xeU
	 Qywutemza5pL/Ae/V0OEs2STOnfQ6rOTrtpePH79yfyQJqrEywb0At4KfE4R7XSN5H
	 5mDbqhFEHa3aeJBFex0W/c1qjEtYIBuD/vnYKgmMi55Di4KKKkuR2JdqJxxJLbPspD
	 BWaM4MN5CaIEL3tOc/iJWjys/0eTnkhs8RvNvDlWdtwuYblilwzaf8oNujEB70Y8ZH
	 0eUSEgAsgwkHkCiGOq7UsA/4zWLOyenWoK23eGQ2Ly7uMATTrGnh++O+CyxVrFW+3u
	 eu+edcxAFMDrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963F4E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633183358.20913.2324898577837375200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab502a5c62c2157ece59ffdd63f7678a3a86c2a832827e27a59014123cc81be
Date: Sun, 21 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766331833
