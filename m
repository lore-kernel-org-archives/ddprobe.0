Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD397E0E4
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767065034; cv=none; b=eaWdgpwqGZYsqsl8IMUKIFMVR5etEueK7BnRIQANwZnKWxPhVE/Wzfbsps0rotlDwyqyCf3SArVI91zJjDUh9zVXS0dZi1+HdikEmDxtLBPQxzgRi9WXCBvpkxRXN7jccXGXumRs2ysGYyWCkbC3YgLTPcKJlvZIHmqU93Oru7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767065034; c=relaxed/simple;
	bh=UwuJIb5eFrZk4yG3pwNumR3I9QRtDHFb+EB7rHZFoV8=;
	h=To:Subject:From:Message-Id:Date; b=eoMSbUI7CaKIoL+OTTf/hPcXmpariI7IPhjEfvmOr8BYmrIoBdJ50cwXOEtIJP1Z2vbOgKThc5kj01kpQmv8iSqG1cR1bgyB6CnOsxd3Cc9cOZ+VW1NdBI7ySfMgExMzxJJfFOEgHEWUbX95y8AzCKBvgLpVi2otOg83wx4MfKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i80CGIrf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i80CGIrf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A272CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767065033;
	bh=UwuJIb5eFrZk4yG3pwNumR3I9QRtDHFb+EB7rHZFoV8=;
	h=To:Subject:From:Date:From;
	b=i80CGIrfBie5F2yl5yJRKRZMPuU0D2ViwMQ7318D7NVbUk5Mx3XObXBsnVFa97dJ5
	 zxYbcuPjE/2+V/lhb8DeLzwIUPgLCCVJy+oPIkRfJLkXakh1u+xnlr+8wiD1mbYwOj
	 W5olxAZv6fO82Npks7CqLYdH3ugzTQLFcOQVzvwkIZiZYvBLoHfCCZeJK61+aTOoEh
	 zZCjysCCuoBV3PzHXzTTaA3fFpbzv+9ZKHrNimJ5N4HvKE1ZZnLu41vF6zcVf/Wyx1
	 +TA78SgEFAanHwY5L+ftWwaJ63M40HHGnH2O379ThqO7+eE3JiWMy3Ow7lavj3I5sK
	 RN/XOSizJvoPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F9E784BE
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706503358.31512.12319662160129512217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2a7c2aa2c24244c99a81592febfdb4009063ee6a279a0c106c935d1d954262
Date: Tue, 30 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767065033
