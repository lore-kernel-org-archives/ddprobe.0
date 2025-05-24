Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB96367
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748071794; cv=none; b=STzL90sDF5MaeNwqokOsS7nJuN2y7HdvDRo6ILLYkVLk6YiIeQLSV9b5mrner6HTt7AGitLpHOD9OQUwjQ5exIW8EAuHlwSfAaHZ589nzJbM0Ra8tUosm2MOglbIBHQwlgpiRVv9WTS+frccnaHQV8i0O9BM1F00vc9AycGDOZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748071794; c=relaxed/simple;
	bh=fo1X62RHelKE/LenC8xbUDTv9wM0k8Xzr0swJQX+UfM=;
	h=To:Subject:From:Message-Id:Date; b=jI99FE2CfHrehAKd1foLQHhf8C5syfHCkQOvE/l+DSE8Qp4HxS06V1ulPZQEJJuDIic85Ch/HhLdAl0rvzLDMEsc4tnPq8kAUSWm1e8kcted8H0DE8hYVOt49y+htXRXJw8ZdOfXrEMD06K7n/6AF+H+/VJcQSMBOvmQUagK56I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2qMpd+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2qMpd+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D19C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748071793;
	bh=fo1X62RHelKE/LenC8xbUDTv9wM0k8Xzr0swJQX+UfM=;
	h=To:Subject:From:Date:From;
	b=L2qMpd+ibndMaaJPq5IG4VJ5mV/KqHmT+6cf2TXek1MP/eYDK6O7X7UKvQJflqPt3
	 kaQ4me0tHGWJrSa11m9Lgv5OwVUOWrgyAPayY06K035WhKxeEZl8OdZGhn4eefk1ZC
	 gi8FmCwx1Gk5c7IaMrdr/ykdCns63eppkmWCw+JMxU0vTtsjGhGY7nurWiyJbw7Vun
	 w+uBZn/61oWbXwmlritaMbyn7kLXAagmLvzYQVhnnNBvkgonBX4G0Zbg3vJAW3SrDl
	 uCXRmjvdLI2f4l5NbvcHjMjAzpjythgK0BKJk1/A+fOXPLz4LMEakzhWsifUcmBVqE
	 AMXNYKkcCGSQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA9C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807179358.8904.2112126109909407188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6974132d462c124e756970d69bcbe6ce35872bd8840026f440729b5edff8da9
Date: Sat, 24 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748071793
