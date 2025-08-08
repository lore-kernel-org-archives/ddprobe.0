Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCF227A12C
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754657994; cv=none; b=peO6S2EgMWJ+2rMMAyYhEovY4QR0DjJpUFtNKsSaw+dG3OZFq90S22JQHbZzBmVvAsRdmVVGhUn7/p30JsGhNg2b3eX30vLWYhxTYy8YHzS0Y1aYUl2OjPHjZlGH9P7RAv1BabmPfqo2xWOW8//VPDGDcOK5xP2uo1Ucg98xUEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754657994; c=relaxed/simple;
	bh=hOlDlEuoW799F4YdIxXFaJWGOHUNSi8eMUwzApmICi0=;
	h=To:Subject:From:Message-Id:Date; b=oeh5sJJxGy31E0932tzXBjY4/JQmBMrNAle9O7djKIeW99gK8eHFZqH9eY3paHmDD0MDORrV7HEvxNjHOxlB7HnWlFsu87IuMx1uUSzGYZtYj6H+SawAdGzgUjHzqAvpHL8Wwx0CnMMbfDYvEN24q1MxjtpfotRTWxHfwLoD9vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8bacYHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8bacYHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0FDC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754657993;
	bh=hOlDlEuoW799F4YdIxXFaJWGOHUNSi8eMUwzApmICi0=;
	h=To:Subject:From:Date:From;
	b=F8bacYHIpPXbevJyiQ0sfOBWj9m0Gllr2jwkuwO6+ou6kbXklVDRkmlccabF/07Q3
	 p10vTOVAq2WHOurMB4Kt0N3yFSbXUAFYRaVIHMjwYbbxwzXf/ZCo03HIi14p9dXftG
	 af90pLaMUM1rsCwseAHNCyjY4NC3QY1P3Siw9xeBOOiBWMdy/F1GsNum/fb+V7wHft
	 Ob9goIwdIPnqy9EQwSGEY7sCQE0F17UYRaf3Ms4avTfJpijE+bTV5jCL1YbCJCZvIC
	 RLjcwaqOGka20t5ZqVs45W/LKkbeu6lkE0vep9nCmJxdf4aJKZcgcnHzYWo2Sw4RGO
	 E7saiRXvqTWJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF2C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465799358.8950.10046563655259171390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd6c0e923cf13a9faab741cbbbf7c1fc646e39b0e3b51cdab8ec40a752419d1
Date: Fri, 08 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754657993
