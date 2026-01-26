Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1056E13A244
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769388234; cv=none; b=N7t/xVpIPm7O/zypcLPIQ8mBVrMm2S09MsWTsO9dGftyymCny+qZb8XOVc84kFn+i8h695YDicp6xKusUw7URfSnbjAJRMoLoxOCKF7gc52LUEi3OPe8LxoteeZlTV1HklAqsDOGK7YonEN4uEMlUhl/DbIwwNDIxO/ouvvB0ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769388234; c=relaxed/simple;
	bh=XYBXYWyuMn5tFZn3fzRaW0yFU2cpTz6OF8DatG6GFeo=;
	h=To:Subject:From:Message-Id:Date; b=gC1Rt4M1upkLIZNwVkC1ZnRhk0Vlj6sYXxzTJ+87uCUPvxWtLjE5Sy8fq2NRmGy17uYWoImqKt/G7hIs2qBy6jFeqaIky9/Lar5NfLVsxkLlME6YqKh9jrVHPxWZ5HMsi+ky1PN0aMaUn5/tn3BLpAgUqTIrqneLyWlX49jWH5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLNLYdPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLNLYdPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F95C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769388233;
	bh=XYBXYWyuMn5tFZn3fzRaW0yFU2cpTz6OF8DatG6GFeo=;
	h=To:Subject:From:Date:From;
	b=JLNLYdPiEz66ChJP9GPpCCE5zesxHL+zOPIciaaArlkU4x8YurK0HTWCc1GCixiNm
	 hCpjDJWKeXvnnt+n57I06K31OY6gvUjv9W10EoljUeZEnzsCLcMOScGllZtKNTsoc7
	 rP1SmNIzy0b7zVOEtu5IGXOB1f7aUQyp3vOvGh+x62blANtmDFOPtEawsQb1yx6iLP
	 RK3/bUvfY/vnL1JGipvA8NzLFK5/7VmpZD8RArKNfCfGCG+JOg4DWvv7qx1Kq6rJBi
	 TnvzHx5qURh/dn1jX6ABGkotioRA8RJryAocdNoFtf6/7BrG/EH9KIEtVz94Lqqwkm
	 82SbLIlO9aScA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960BEE63C9E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938823358.8562.15930375426224236202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0440f526003c232b599776fc5d8b22c8c6c21c3c3d4e345e4caef66954d7bd73
Date: Mon, 26 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769388233
