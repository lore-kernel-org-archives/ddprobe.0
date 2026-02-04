Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4116934C124
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770179034; cv=none; b=mf30xgC+zmZfrQOFUzPmzFfA0lbcg+YKArMHn1ccIk/mOs433qFL5B6B74bOI017bJa87Qe/kpirv4qlhPEHHHhxMCox2YUD7AbD1x019Wr1B0LszrFPIr4mVXa2/R6u0nwKYQf5wG+Jv3XZLIImygwmlkHsNEhZZuBqJiIY4n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770179034; c=relaxed/simple;
	bh=KOvjuSg2VezNSrCt7L1a1nb8dc9jSK7JBgS0IXAkc1g=;
	h=To:Subject:From:Message-Id:Date; b=ia3zlwK/2ZUDcq7zZCXsD2FjJZjnnORKPUpl+CGFapdDh45Z0YdgpYu3ViqDxwX4VSqsf9nlD4K3fV8DRNm3gSVhNs+nMZA2wCtVZEkgEEcaUMHhXucFzpvzkqk89gQ/iAee+Q/2KD4tVaesQMprxsfNayF7rzFjkKdIa57xuZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kT37wedd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kT37wedd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C68C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770179033;
	bh=KOvjuSg2VezNSrCt7L1a1nb8dc9jSK7JBgS0IXAkc1g=;
	h=To:Subject:From:Date:From;
	b=kT37weddnRBSc9eECsQ8vqVRB1jjo+ii9eG56oyI5FblAEykhllvMqJU72WYqWBK1
	 G2SH0c5kMY9QgzX1vpzvk65Xfa1N3TtDmmU3eMG08cjcq4RfaQ5iyCjGNHVZHTuGvv
	 yWSsUob8KTc/PXJcWlQDQabCOMQJ2E3nQ74BshKHqvuMg+IGxsTinMQ2/57ArE/j6U
	 GU2pvkxRQ6gEOHAbXvvIPiUOP2F9tgbdillVqjLEpGlHFYBAslxOyFn1LZlFKQIUko
	 Yi9+geec6LaN0HG9jm330ODTjHKf/E9vyKG3EdEsEHzLCSpIJmptKN1ivo/xGS/Uhp
	 5ZD24r9dMhrvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DE2E8B39A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017903364.12884.10120754737001154222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd25ceb63958237f34e50e8259ba54c7132ed0867c2b9effd603f67ba3621bdf
Date: Wed, 04 Feb 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770179033
