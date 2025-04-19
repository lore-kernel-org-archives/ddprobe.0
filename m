Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD5B1754B
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745084394; cv=none; b=EJ/jMyARFe8rD9HdIv5PFndgHIx+W3uAbhlTuBCTgwNPH4vJL0443Z5Y5aJahDmpqUoivbtZVfLzUfsxjeeB18fbQ7HvmgiwQwXgjQlD/Y65hQJwaicpsB+/JE/Zv20XbCFQNY3PgcVFh39jMmCBp1cU0jRpI4+J2x3dQkJvN4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745084394; c=relaxed/simple;
	bh=n552gGwECobBjn1NZppXtSCh77k/HRFAcT58Dusnsqg=;
	h=To:Subject:From:Message-Id:Date; b=e/l7fMEtIFK+WtW7nJjLBqazRPcUgdQfzEOVLgMwhzEMpwaeI+LN1rtMyk+/hfsIrUvbFo+rKTHixTxfiRHAiH5yy/AXanIrthQRp/qV71k3rTiq0nlozNYQaVB9f1xYrUpoksvW7GZc0FbLpQmvrxqNCRtO3J1TeBnMCEv2Mgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvG5yXxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvG5yXxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F1EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745084393;
	bh=n552gGwECobBjn1NZppXtSCh77k/HRFAcT58Dusnsqg=;
	h=To:Subject:From:Date:From;
	b=hvG5yXxT5AMiONHHQmZvcDNYlYAB6lHsxVds7cHc9B5uit4pXyijiQwUe0lnKoF1y
	 SPgRAkgp4r2t2kekN8DaBu5e0VNGlNtFnmpljuZE1dhiGq1UDaIFxpqwFBP+qeA6dh
	 EyrDXOtbGqG1li+NfflMWAjmOilud86jCGwiemLA7MWF0jpfRXYccKyDt7aiQ2zrwx
	 M0j6CjFy0yAnvKaQAnU0j0JQ6BXZ+6gz7jbayr6Z7yenRQNdbJ+3u4LHVtx2lr+bKS
	 KDv/pmwfNpgGZ0pyGp97Qvt2A+SzU2DPKfcaKRLj+4Xr+XUpJDqjLCd9fMf2Y9uUMm
	 xc6BBm0mSuI5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99492C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508439360.15591.16789748004060646071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61771bfb0a1b91803334bea13950f03ecb2dc58692f8514aa3fb390f9f1ec6b8
Date: Sat, 19 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745084393
