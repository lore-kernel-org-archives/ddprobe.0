Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F332E4257
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780011754; cv=none; b=nx2TIrlQhn2iU544G0GNbfw+hIgmgvAGO4l9gXG5gtd1OvVmiioQ7AjHgTfF6/Cn2FhgP3V1j4+6IbAIo9zNdGCnDBap/FbEgcCcO61D9AYGgmRgFNIvFPRGY+kY6CTo5LHo0Jw4j3KGN04nsInJ2nrF5yeNqQQPy7OxtCj3LTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780011754; c=relaxed/simple;
	bh=j/eczK8ei1QWCrIywCVaeAjJ8zWXE1f/e5Kjwn4C4tk=;
	h=To:Subject:From:Message-Id:Date; b=jwXVDbgMJTT0jFGiwQ5hayDa+QMxVUQymxdXqz7CGwpSOK0ddWGzqNjGfO5TFR+YCIJUWraG0fJCwzcs73qOlmWs/sy8RlDhQJE89Zu1YMz2Qiai7vg3m4lEEArlXOtaLopnQPwNPKd1cUQ3NZJmf/S9kTQPWnXx4OoqksR/sOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9KSXqJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9KSXqJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C411DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780011753;
	bh=j/eczK8ei1QWCrIywCVaeAjJ8zWXE1f/e5Kjwn4C4tk=;
	h=To:Subject:From:Date:From;
	b=Z9KSXqJ1GPP7wMpVTPK8y1TPRHzFog0iWjxE8f26QFHSVABQDqU4zt9YJTjOSSLXO
	 VOpYICNX7Yx0kcmRA9AnFkvT4QMRx3nPuKioLLdsDDirCHiWF1YXUYobQiH26yLYdC
	 IaqhQCqBvwO+gsTQK2Uweg2IAGFUmHSBWGTwM6BCt8zNFTToGydM61UiDJbku6L7ra
	 FoqrmIqdsYqB/twK2TgWqQ5hz0uIXjDltN7kloWhoD4OrxJSFAMBiByo5OaDubIzCk
	 MDH8/Pes3i4vC7n39IFzzSoh2mM9PkBqNSAKsBJurBPPlXiKHIaYcs4R80JGXtDuXp
	 Yb0QXOWJWv6AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB241CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001175368.7365.1075690981589125126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f22121dddc2da316c4f8c56403455295d00dd76fc66d19c5e4762a9d59bf34
Date: Thu, 28 May 2026 23:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780011753
