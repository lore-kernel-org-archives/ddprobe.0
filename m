Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A60F1FBCA6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735919154; cv=none; b=NtwQw3uFClt6/KlocQaH4sd80I5YPe90txzB0kWqSZosQfj1yu0xK1XBD2T1e+l+GTTTapTa0uvzDvQjyljYcP+jeTT2Mngp9Y6IG8tPFRuCWzHn8rOHJgLoe4fImbbzdWG+3bHZoTa4JQj0Arjh7R1JfrKAJZQLvU+rxS2P858=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735919154; c=relaxed/simple;
	bh=PhRuP+QJSDXOaOpdP/nTPTI6mtzyy0wMeqCnrZnAvBQ=;
	h=To:Subject:From:Message-Id:Date; b=uLDFFs41pSspmIMHfujybYXfJK4HqycJqMQfrdn2qt0UpyRpJv+5tmcKEq8sGUWDusNP03nFIOCvdPduSUySyS+ojlcHtC3fwzHfvGzeIRu2Ly3y5V+45uN9cLJNrQpUgCQKq1COgMKYVGUEjh9+KrHEuDY8u7z3VU3RZbvRxA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACbmgwQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACbmgwQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCC9C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735919153;
	bh=PhRuP+QJSDXOaOpdP/nTPTI6mtzyy0wMeqCnrZnAvBQ=;
	h=To:Subject:From:Date:From;
	b=ACbmgwQ+PNVOfz3zRHqIPWlefihWeR0ueqEVKkPsvRlgif5mVueSQS5ztarCw2vNd
	 XgD1YPVvwzMhzZwhHtJUlUf76gJOhbFdDErcf1Q1AGi3nY9xY5HFZusKvsjYuDchTa
	 gGowYNb9HLvC3/fcQ3w3gcDZ2hnFyCb4zB6HSEErC0PcXFsLssuXTK8WJPR0+gqCps
	 tJ9Rsbbaz6tZqLAEHBzg6a32yU32O5/70vbMpSPapLlnZiQUTjau5EsF67F0YgJp1Y
	 AulCOK5a8K8xgSXbYUq4jbRSbmcNXwWiNam1HZmteNk5EgC0U5cPLAs1GAGa2nr8rX
	 o238GN8jl4PAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E1E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173591915358.13207.14361611755274710273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b013b1d61f9bb4dd017f7226cec4fd3507f7c7c48e7cba5bd888a344165c13
Date: Fri, 03 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735919153
