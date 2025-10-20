Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357082BE035
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760933994; cv=none; b=jDUyIQrAOstVII10zPf2qwPullWIewR5oJS1b/kjreRj+lJRFhm6U2FfDmlmtoqT3ohdrr14lvpP5rMrTXyEf6v0tIw3DJfU+lsD34BMe/foj5UnXJpJ+jVCUmyyYZZScnYDYLmwbUHOVxlsJ6n752hxH4IfVRpvT7rARKORP5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760933994; c=relaxed/simple;
	bh=tGCULEQZM89EYIa87+xwp0EJlfUwVix5qnRKwx9AI4I=;
	h=To:Subject:From:Message-Id:Date; b=uZBJFg6rfhMkdclh90nFkc34sVQm+ZTUampw99ZyhCOh3VFTvFk9JnHHNX3C6k7tkGOoysk4nV+HmKx5wmWCrgLHBHlAUxZs+h5xQ4QFFBMWlBvDQmm4sg3yebUCh6jTjBj7+XtRSCsWwS724VZB5K5yfkAXXOOBT8h+PXzdpeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IP09EHFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IP09EHFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83C4C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760933993;
	bh=tGCULEQZM89EYIa87+xwp0EJlfUwVix5qnRKwx9AI4I=;
	h=To:Subject:From:Date:From;
	b=IP09EHFIfpO1DmyOVhpyIxOc5AzCaGhMoImDUWVV6jGaA7uRUu0JZV9fwbX10j1kA
	 HKlQXGWL5Zjc4HuErw4m3LheLxjWBLxy/lrO0PihgOGpSWJfaNNxaJxvu3qxHXCPxB
	 lMwX2bs7STlxCQ/qZ7AXnwvMuzaptiSoemA0BkOYa/1FrO9cccYd/68Rq6TDzw425Q
	 57kA73kLvc5e+AgCQ/UG4qZaEdhABeQyxMR2tvjJxQM362MizkfMNP2omfM+Gn3kjI
	 r6w28mWRHke2VL5guxPTd9b88nRdmKO4JwdBINNUbon/2qwH+Gl62f00XHhvavY21m
	 HSck6LqWg3gZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B6FCCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093399358.28845.10921180558764316694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836b16307411090e33657ebfadc5612e9fa4c8a42cb42ecac9890b5d5ad90e3b
Date: Mon, 20 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760933993
