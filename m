Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5501F4611
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768149834; cv=none; b=LsgFXhde9UrtK9oqoR0Su0vB2vJB7ZoR0n4qjXUPKeMe2dPYkoTHD4s+Bs1ZNCYCzUaF7amUDQRciNkAcP2YI2UyNvowWyC9sSdMLgnk7l1NpudVwZ/dyNdk17QOjqjHiUf/RB4YEu4JA8wBSzyKrtK1HBNziB6wd70MDKj4Ti8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768149834; c=relaxed/simple;
	bh=SAqPagtHyMZSUOoTRZLJJY+CUTXxhHb5dG/EPyYtc5k=;
	h=To:Subject:From:Message-Id:Date; b=sjdp7LfosNJw/FHnoiFgzFzQQPHTZs57uHHoR5t9DERpob2gLSDSPWpHaCiXC/HTvK2S25yWwk37NidWMzuSruwNUZVsLEe4xj+csCZw4Z8iFpK9XrB9QOdWc5VQEISi44QLFBz2slbAndMBLnnU/HmZq9tq6dXhvp//4B1AHV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJudIet6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJudIet6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9078C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768149833;
	bh=SAqPagtHyMZSUOoTRZLJJY+CUTXxhHb5dG/EPyYtc5k=;
	h=To:Subject:From:Date:From;
	b=lJudIet6J4EnfK6JM0S6lCVg6VAu/7xVIN37ku+lp99w3JzaAwB6njly3/4L/8JKe
	 mIRinlrpLLhd+CbFHe9KElAdQpgJtJyWM7LJZRkiMe4MKZP3RHnGLzDfEp+Lt0luh/
	 ZL05/1lFMnybiktWOir5OAb0OiXY9mGSQSZOREyjVGgjnLN6xOslwE4Hm/Xb7QrpmP
	 Cb9bV51z9kI7H3YBDVib+270socGu46L14ETnyUik6+sIrEZwP/zjijLOtaAsTErGN
	 /BS8b7YrlWvzTWMP0bv5KIbc8oIVa3uGGphd5lemXG0qg3NTF3CaMP2eO0m7yYoTz3
	 VfUizhjEo2skw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B86D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814983357.27436.1226558790179391070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0ddbe6b43c51a4d40cf2170783c168cd2b18e34116452570bed1696775ffc8
Date: Sun, 11 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768149833
