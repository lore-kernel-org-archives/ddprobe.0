Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A22C20A5EA
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751953794; cv=none; b=pl5L4AoPIgyNefeXGJfcORzSOntWWRmDz5MfqYUs5tRH8Nu9tOhGrLheG+z/dZ5XT+N3Mvht+4A/PwhbI5VvY2OzybhqaYeq44sF1MC8apFZLh0ofXYo0pj4MgZxDB622wZs0bknoJGKrVtQvQzO7nmTHSvDyMtT5ba5WCXxzDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751953794; c=relaxed/simple;
	bh=onKT0n8jzzk8kNTjEEB5QPN3qDdcEJRxaAyk81xFF40=;
	h=To:Subject:From:Message-Id:Date; b=GWLid2TZ7uPOjwOzTfKlNx3+Gecjqfh3o5iyDNd64xB70uKirzKlZCDAl4yHU3Xbaxx6U0Nq8dx1wd9Th6MC5aAmLE8uru9z3XuQ8Of8u4kCvFE9rooRv6AGd0986fW0fM/lTcNbRdpO0+L8CBdhIO0u7xlaYaoHqpzJGsG19q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUVEG+1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUVEG+1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE3AC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751953793;
	bh=onKT0n8jzzk8kNTjEEB5QPN3qDdcEJRxaAyk81xFF40=;
	h=To:Subject:From:Date:From;
	b=jUVEG+1xdDtEZUUkmEz29R/jn6CEv+JMjsqwbapqrhtwkN0GtLVKuOHoOpfcyPKK0
	 5WiaicP2CLy7NtiV5jESC7H2HMPEdKp8G2ZbNbk+CH1trSuyRa1uQo/Ihpqk2Y7lId
	 y40lKhrBjetLK4Ch2Yl1ZyNCmcFhKw7SFWqfC0ZktWaorsdwY592pl6G8y4+bNvAqR
	 xsVHm+bngmTZDZROjPX1nCA7I/O5A5RCgbdeB35/V2i7GL4qCigDFjVzl+BBIqVowG
	 y/MB3EaGVLVj//8YWROeiKrHbLIPQfW+K6nWoAcowm5Rvcp+v6e6lKBJrKaVypPuvx
	 QLRJPW9QOrR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E062C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195379357.15104.1887772118264068358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3031a665f91869576af101f1c6639a76b09723e7be3752a52e3aa0f24f5bd8d5
Date: Tue, 08 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751953793
