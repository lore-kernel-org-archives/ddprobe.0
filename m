Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52243137742
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720878023; cv=none; b=nHEPQ7YJF/4a/SugRVcEiKThHaLodTfQ8feKFybSxVvCz9mQsXhHxKtHK9ktpZwLwa0gVLdyGmOQCGrRZCUBzgc0xAmzeo/xLJ05pazCZ2BMwFs/cFjamOlfdvBIjbVNYIQ8x9SmFmmzr6jBLUhW+7Wcs64bcmX7NgFZodgp2bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720878023; c=relaxed/simple;
	bh=xGa9zE2oU6q/ZpD4OvwqdnQVL8bNzaQsWis5RqWAUx8=;
	h=To:Subject:From:Message-Id:Date; b=uiEF3lJzle48Y+qL65cWG4xiHW6YiMDHQ9uMk8At8bdSYWF59yka9GvfbPIRnKyz2uGL9f2TokrJMWsQaxaWDYTRLN7UnqMLbY4YDIFflodjA8PvtJaxbXvpbDZUpgko85wYlxzI+TJrbL5asxUyXYnJMW4Kz2FQgJpqJvUA58w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gj266KVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj266KVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2E8C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720878022;
	bh=xGa9zE2oU6q/ZpD4OvwqdnQVL8bNzaQsWis5RqWAUx8=;
	h=To:Subject:From:Date:From;
	b=gj266KVSTXxcYryMsFW8WAPQSXqHJdCtJo3zaGqbd7zDQvoQn2qmvK5T2lWCqDKw6
	 ubOQ/ZSP4CWHvlH1Ke/u/DRXRXF1V/YEiEEAJ3KC1BQfOAZ3j34qFSOmkKvflNWAla
	 6NxHGxqSUbp3nyCstmIIxdFY9AjZOBgPPPKE9I5PAl9agM+GUH/6CiyTiWpvFMwMBA
	 8TJMIze/sHjNeBNqH+B4623by/r+6qx0w3fM92VHmBiH5FsrMfNmmZDitCKIbS094q
	 hWXA7tdpGBSerAlJs1xowo/sIM5uN4tV+ki25+jneuEhqXTB2SeHAspXOIgDFTE5Zx
	 vjzVGXUzEjA/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BB9C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087802281.4849.4953297355950094836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f1b40e4f2a6f83464a02cd8a6f4e0457ba28874d45726fa066ee8ec48aeec8e
Date: Sat, 13 Jul 2024 13:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720878022
