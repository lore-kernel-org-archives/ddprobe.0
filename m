Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D20C433CE
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736951754; cv=none; b=Cm9BxgBQk0iqjIkD2U63UEHRuOl2njxLhDJsz3JjM11aR5SDz4ALPgOo5j74jFanZ0MJuXjYhQO5PAbsUB5MKOuMSQx7MAHshzHm9XNlr85fK4IzYL6PUrN3/fGt5Y055yXITHRDSsfEXTTER6vTgwErxs0Tj2V4cbB58xCTuA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736951754; c=relaxed/simple;
	bh=62RTNSr+5APb5IIhuL2Adb/InwtOEu5MnokhmzVsel8=;
	h=To:Subject:From:Message-Id:Date; b=RYCM6+2FrYUlrLTjHLfmpEHLSskq4eRFLZjH3Afl3ipmsOfy2l0zyekOF7hULqddBpWHzW5cdvrCrgHjDloIujWOyPePhMy7S4T7rqsB1Tq7zT389FcdERUXRtmGayCSZQhLKq3tndwWyTA85Q+SbIW4cS+5ak4FASyX/psq8Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0iAqWNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0iAqWNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CA9C4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736951753;
	bh=62RTNSr+5APb5IIhuL2Adb/InwtOEu5MnokhmzVsel8=;
	h=To:Subject:From:Date:From;
	b=g0iAqWNBopdnzLtWXNqnev1KYmZqe8zbEpapaui919h5poXJ0uUKaY23AOGLOVia3
	 O5aQe5zJOfNTm3UMDf8/VR5iE1hfbGTrZl90wxjwxAuali71A69bK0rZ08mCmqU4T6
	 fPzBfar4W+p1BnpF2lCeqV3sPQhrbi75HY7cTeXDkkV57XyA96VAp1j1rHhD8qA6R1
	 gAl+VaHsKuNB9Oi1xTsmdZXXwrpVXX87tqvQYCgP85dUQ63VsxRS3PuhbEGxBncnra
	 5NvD6XRGM5ZXpVpQ5lJCG2uZzJI0TRB+ejnBoDR+IJwNSdN4SyBLIA+s2YwUdyl7tL
	 aYTIlqb33oVuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E2BC02185
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695175360.14723.12729625395655422366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b3727641cbea197c46e0a4edeaeca6e9e1ad70c5a3c0f67ec072679bb8714e
Date: Wed, 15 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736951753
