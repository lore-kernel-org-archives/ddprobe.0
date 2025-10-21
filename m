Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252742877C3
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761055194; cv=none; b=FTgQzWZ14gjE8IRgE4Ht1B/eYvE0GgDhLx8+fNuErI/77Jt0GXw9AZdy/AM56Y6i6hgYt9dlRKmrHRFCKS0jJNOMb90bXkjpjJEMytUDEp5LKabQNd665VsWsDE3pEiKiC+WO1joiiPWxtHaHOmhN6JFdwSzLuNy3ob88XKBB3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761055194; c=relaxed/simple;
	bh=s3WyMD746EG19Y66FHsf4HtNJwseJH6dJFYcdyI3Vp0=;
	h=To:Subject:From:Message-Id:Date; b=AsPHkimz3PN6KOHYsuvjugQ+IWIE3BNcJv86kgQ4GTATxhjHmclsPfLz5fxRKL/fDfRdi56/e+sj1segb4GLiL2X4r5GKwsUBbjR8ELrjkgy8pM1qnsj29XU7J6quh7hlNXYNEyl4utGHqqOJeo5P1Agl90zwgrUQ7RO/CTmkis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9pVgQMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9pVgQMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18C3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761055193;
	bh=s3WyMD746EG19Y66FHsf4HtNJwseJH6dJFYcdyI3Vp0=;
	h=To:Subject:From:Date:From;
	b=a9pVgQMMuIY9sRtiAl6hjbTb1LD2Vb5p2vMVmBpWirC5Tnv1NGyI2hNxjPeEVaMO6
	 AJpe0GkUaAjfRjZuQUerHMrtv+FhK6QTNZvavZRP79nrVvoxE0Xcc/TaxTj8bQmYFJ
	 8ZID9Q3NOKH/swhzW/PeqLsnlFQrueuwB/D/UQ33ZULHyC8dwTRnoP0sSOqiOeoAEU
	 6rkCVVWWV+iSO9XK8gMHAVoherOrElAZsJANt+GjkKoNCtmtRjgIWEqc0POz+Spiwn
	 cDRQCIBKLLcpLO+SZlcQiKDYYIoNtCsLLO99H5W60X4GFOV3M+Lr8TmDDuZPe2xrow
	 VcD1mkZzqnP8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D11CCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105519359.31205.10325980131749484360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c147be39555a9bf535459575c721b5998744e1df66f0ca2be5fd0216b3563a
Date: Tue, 21 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761055193
