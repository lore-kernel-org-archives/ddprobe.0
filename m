Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1727245954
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706507897; cv=none; b=brTgFhHrYPXtcvquFtyMqijoRiNr7uTp6YXtPSqeJIvGu0hVrekYCvXfNDCwAkVUIgFd9+MkILGX0jkrcwtlagS/9X+rRFotdyUkN7jvsFAuYJcKqIpTqWUe+EMumtnYo3oO35/MqysX4dopo0zol/pRop646w2qroCd7iuzfYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706507897; c=relaxed/simple;
	bh=5e1Jp3yJD2ZLp88Up2ss7pOQH7bT22tJCiCsJqGUqyg=;
	h=To:Subject:From:Message-Id:Date; b=jw23RcEWTk1rDbuC6DJpQGTRcfT0ClST0Vv5KXYCrYUp73JKAHwb7eUVYfLn8Yjz4+1IvLWk+nX0jEAIA1yDQ05EVGswUap2zWm0X0xbCZeN+5GhABQ1+QMwE91/FU9dz6wNr+WN89A2s8NVW+VujQD2TWDLWOnBW77udrsTAd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZ0Soq17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZ0Soq17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82679C433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706507896;
	bh=5e1Jp3yJD2ZLp88Up2ss7pOQH7bT22tJCiCsJqGUqyg=;
	h=To:Subject:From:Date:From;
	b=XZ0Soq17L/oIqtN2AIAO38/Q8qOEhS5UFJL9kHOhRE12NzLIbJ1bfbm97And19Xru
	 ncJmUl/lccN+DSunMYCKSLI1LAxjzFSu2KO/D3ii9XYe6MocPNU4iMcFO7h1j92kdo
	 OWhOxV7Y5SuAFbb1pp1/TsiuH+CFfLbnEUPORcAtnac9D49A7pneZBOXWmRu0zBVT4
	 MAuswaOCchlnqgfIXzJbJC4Oz2HxiVeZN6GW6NDCJIycFJNuTqiq7VT1FxV60ynS3B
	 bZRxdx2fpoAg2VyaEGHtkFowqA0mo7EwsuVCc/tWoirzieRnrNZOzwQiBAr7T1XwnB
	 fJ7fyqOyCpswA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A25C47422
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170650789641.24288.13621038454945383961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17472447a756bf5d47f6dc619d98861cb0df13e70fdc5f4803911840eb6937e6
Date: Mon, 29 Jan 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706507896
