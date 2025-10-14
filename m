Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C1B3019B5
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760462994; cv=none; b=qCT+xX+/UC5TqQz8tKfM3MsVCNrqyRSX2/tIdttti8xI6VlRx4Q8OIKCaM/Y7gl9d+EdEZxF7zah+t5lr4Gioqp/xNRhIEjGWZRVNhctNbfqVnvvQt2GpKpKLMDZNHd9k52OM/fYvAt5Ba4lMRR2aqbLSSh/RSFlfHVppOjloAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760462994; c=relaxed/simple;
	bh=GPjwPNZhRRQUkFg55PTt7PFtmvoMcyc2fJdS6lV02nE=;
	h=To:Subject:From:Message-Id:Date; b=oHTN/bq5ZZQNF4l6UdHqdQ94ZJ9OInDYrtGlK6uawmUcedgcV43bSOMTLCJr1gq4y4jaPgI8olNz2IUqjUSrlBmtmXi17dITZPjcGC+rNVGqZTASC8hOqRakUnCrIAWDcqc8K9aeVLiDteKNLP86/RvINrcBRQUZwRbNGxwVxEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0AxlZqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0AxlZqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2EC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760462993;
	bh=GPjwPNZhRRQUkFg55PTt7PFtmvoMcyc2fJdS6lV02nE=;
	h=To:Subject:From:Date:From;
	b=H0AxlZqRl3bDoUXIF6nXXZaC4bw1POrnLt6pJQ1QK8fLNRWvuQ8DbQd9g/1vegbup
	 +EPuXmUg2ZhyudRXzmIiDANDTeKg5qEWxu7hufNGUZSHtL/ihygNDtDcvuE29GsEYe
	 GSW3EKCQgCfycXJ/xfUrGR1Pt7Sow3dMN+djMMpMPRTmXg//XGFBNQM5zW1yQaAkZs
	 BnLOXBG9IeZlx776cEJRwJyqiXAImpkrPDEVx/eTZdEv1uRwi3/OPQ6h985FmyiIuw
	 8/29yNXyc5sGkfx/v61RBsoUDsxLisL3Kj6H4GmbQScKuizOz6MOQH9ZqG1dK6l63E
	 EIub+58AhMUyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F80DCCD193
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046299358.2726.15848004212178561090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f344430dad75d6bfa64876bcdd723d0fd22a2b6c3079546d76fa7a553809e51
Date: Tue, 14 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760462993
