Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2A752E054
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790172634; cv=none; b=Y30Gj39ZP68ag9i7vJMmjgiIhacLXLI6KKSfpfIQk2gp3jqvtJq+A1rnzNTUETscUETGeIGl7440/7j0KtrOXVco5/NNR2laxM5P4EgbfqJI/FYh/LSGj1EyX/prJHOfHKVNV0s6UNaExuP1qxtruFWsFiAnvldfyK5tcFNehdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790172634; c=relaxed/simple;
	bh=IKi94pq0uDEEyKDBlnG3dsLGeGEXhGQkg8Wm3f2BIVg=;
	h=To:Subject:From:Message-Id:Date; b=m06I5DA55/BedVAX23zK14W2Hj1xyLsMDtG+XXxoUfaD+7A1EsgXqBaZTlruMg5D9AM17YyNJ90KExNr83RXH+J9fFsWRl0gZM22STDvrEG0w2uZuJ4kJ576ZXqEW11aZ0L3fLm2es0rj7BhZer0AeYjhrNPoCP+o4uj6GsyvNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoXvRdfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoXvRdfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9BBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790172633;
	bh=IKi94pq0uDEEyKDBlnG3dsLGeGEXhGQkg8Wm3f2BIVg=;
	h=To:Subject:From:Date:From;
	b=AoXvRdfAhdTyRwWAwmLNEon0iCbYvCM3AbqfLCyrWO+rDb90jVkzFVCz+YI9LHdE0
	 CCsqb/cLG2bmET7AecFHTMUhKhw9dws/+JWJrkDHnmXtgHpxyPWIzMxH0zSJrigQ1U
	 Umr4c/WSEWc7hIyRz4LTdajk2WI7/ZQUNI8VfNyJL6wPImXwG8msY9RrtvDYVWbzt+
	 MoK7q/FvXHqcKo9qJ4e3GzKeDovtToI7OGboVIXDyA1ebKKgjBdw3dNjov4h/xNHGu
	 sRLSBS0yNAAGs/ylJh/i5LtVTmx0fZMi8LQYnvK4gqFM4q4u3tJ4936229f5lK2PnQ
	 NvjWuKDJZxPCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9D8C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017263369.22581.13429372143746128672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 080bdffbeb0bcbcf7475c1430683382b8922e8a93f624251a452ce3fe6332524
Date: Wed, 23 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790172633
