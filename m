Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1408F263C8A
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757518794; cv=none; b=R1yw/k4j/6AY2e/BI6a0uPgSCu0fO/Sm7zcyNDgO4ER+2Pj1cwKEyr17CwEo4bWDR8VpOsjnLbcxpzPDVAjzxl9SOgRtk/1DwQwygvrz9p+4ctYiGidHnwBG1N3wontLr2YqiKjrjaM+kSO4uFFk25+kz7XB62+N7jKEzeUvpc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757518794; c=relaxed/simple;
	bh=nSU6Oi/lfC1Nn6H8caNjDkRM0CrooF3CRtumwb7vPgs=;
	h=To:Subject:From:Message-Id:Date; b=tv2oitJnj+NJz+dVNRzJ/lI3kNUVFnQk4KiMAuJYtdOu9Rf1uPVkb1im6lyCg9KGicBFVmVwNWbnKhEx1VViRU5uSC9YzXQZkviLOth13j7fjXDqfuI9fO7YIXoDBg9qfeg2rcD2JsLROPqcs77vAZjSRC5cWzRUjgoSsX7/bNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caivigQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caivigQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A1BC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757518793;
	bh=nSU6Oi/lfC1Nn6H8caNjDkRM0CrooF3CRtumwb7vPgs=;
	h=To:Subject:From:Date:From;
	b=caivigQuuzEQ2ltZEYgco9yE9zOLW65MGJBCg/CvG2TdqnjkLMqbUW6B5rNHqRXpt
	 F5rjLDpIBqCPcnlB49halrj6OTLSQh5zidxIqOu/jULKvBW9O/xBJ0eMeXwwwcEFbk
	 WBum525Mc7z+5Unrdec3pW/0YUwZrw2tO97VNw6FK+6dPuE1iMS+CqgbxTTLAw3VMk
	 VCaAIHmIGntm8yLGC6SpiTG9pfix55DoKCEmwjjh0c8/87K26zHG6Qe/ZW9ZG4LPRa
	 xIqZr2g81BwQ5wXCvJqClTMwImOmUTa5mYLt9N9bm6oOL3Vb57NcRmki8KANNgYCw8
	 6oIKrngFWBA3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941FCCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751879359.30733.8617346842307033996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5d5b9d7f8b5c5b26a61ec09d6afc1a31e6e600f1e88b95ba498fafed7ffe47
Date: Wed, 10 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757518793
