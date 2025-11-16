Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105451DED4C
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763327514; cv=none; b=RIlDio1FhJ0lDZU24PaLtbVAoN59evCSpvpDjrUbxOpMOEi7eGwP9kRqYzav2pC2M2EplpePvkzvYfDZiaNto5r/9TuyHK0/k5kXBs9rEDrdNOSJ6nPoLZnGbLQaXaIUaqJxQmeZKZlUyd3W4fjaR1oIdOLCodY4SccnoRBfcO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763327514; c=relaxed/simple;
	bh=jo6pEeMckUmZbiTPpswHHBb8IWuKHM0XOMl/mLasxUo=;
	h=To:Subject:From:Message-Id:Date; b=ZNKeGB7L/OPUKDP59YeO3iodsgdMqIb7zSgh9vbg0SuCV3ieWAKE4kk/IOqq0fcn8/qzWOnyNWP/sGn9K1QZGQOkOenL6rnjEPjKIJyoAEmzqZcdrIBQsjBGoFDjN1w4qn+q1LafMtcY3gmD9I6CRO9fedD5sOmUXBIBtIVBbP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDps6MeC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDps6MeC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8279C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763327513;
	bh=jo6pEeMckUmZbiTPpswHHBb8IWuKHM0XOMl/mLasxUo=;
	h=To:Subject:From:Date:From;
	b=fDps6MeCq55+Gz6BC3Wx5/6+lH+E5ehXjet03tqiZd3D05Yi7JJBz0VQCHEnOSPtm
	 p9Gh7o+NnWaRrbQas+NxIgdq7w3p87AKhP8KqmTa0GuKEbpVXvA33jbsJRWehz14Et
	 mla2UwtgsMIMCGbxDPaeuYRNKre/I1zWlm72cJaE0bWh/OKsifGIAQA3pyQ+30TndN
	 UlDQS/g5PB22GRj23JOr8yJXZHftcnAgm2Q8KXx5dvghPTUP8Xm4MBN0H02O3hlnr2
	 0gZQ7ZpDs8LP8mNCa8sJF8JvKAM9ag5fRhHXdDj8rECMGDJRE5tz3Yw427iSw9L0h/
	 bQJMmghikxEDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982F6CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332751360.21052.7451529854961087486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855660d6f36b758e097decc06e7f5fb4157cb6efb2bf96fee40da1ac83017df9
Date: Sun, 16 Nov 2025 21:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763327513
