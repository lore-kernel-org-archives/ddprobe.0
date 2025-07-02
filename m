Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143E2301123
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751477394; cv=none; b=nvN2iv8NArZv+c13pA+fRO+mw/ACuBQU+13zFfLU84se4QW4uaZslaJIQHm7Kam16xt/51wWCm7d820Pw5XQ7SG4u/CQ+qpPrgzBZMJWahfUUFD+EHH/yTQxQCwx8z9UVVO7Yv7z4iBzCpz2KFmHsBEEI1AZl9k5v74GvaVHHFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751477394; c=relaxed/simple;
	bh=fpSGRgH9edtTdmKY7RdndtiWT2kWKnrEOInSnQLd+44=;
	h=To:Subject:From:Message-Id:Date; b=PUVarG6hZZsOkFM7NoIC7Z6bs48DXh0tqlfT+QNHXgrjHq5PtMlqDwQTJPe1Is8HYzWcQRFfqTpkKZo+nkxt+1HYbf+jN9o2AWirKALnSCHFi1AKMp/oGFfvAY9+HabowkuaqiiEHexdib7EtM4C0jKvcCgtunnUaK99wXgHyMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7QSMNik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7QSMNik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D19DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751477393;
	bh=fpSGRgH9edtTdmKY7RdndtiWT2kWKnrEOInSnQLd+44=;
	h=To:Subject:From:Date:From;
	b=H7QSMNikP3hdykRndVM+/4WJUDJnXhpHARs3d0hsTtPOCeMQhb8sA8Om/Um3xP7Q/
	 fYbFIpEhgGk8Aw4Wtn9PP8vQR1j4YfuNdf0o1apXygV2/9Idu+zxstAHIKB4Wk43SY
	 Y3M3vSusglpM+WDKLzF/NAZc0GdTwmb4vU6z01J6PFhElgByNpdxQpBW7OYwZ6rVS0
	 mTEGOLIw0KS9N556MVjHW26LR9LRAMKgEikDCr4/HNx+ahbIulIQ0uCC0LqGDJAWKm
	 0z3V4jONiQdIEJYzvhFLzkhwP773JoLFYnLQTasI382B7nSpSFrH5MDi78pzHl7CYL
	 SEvXdix7HvS4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4DCC77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147739357.2283.12467297657036295635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942001d1b84a5277af97f3707bbbef5155600c8e0f2bf664429216bf7bd2c7aa
Date: Wed, 02 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751477393
