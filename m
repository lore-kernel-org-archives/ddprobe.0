Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14669264A76
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760974194; cv=none; b=Kp2yNe2FShbXTSVOo4qT59i54RUAFj6IB1Z3BqHAIjpSiRzXItL+oZkQ4hZejPaiEL2FPmgw7D0Ixk1naV2/SMFCFazJWgrFFV6Dd9RlWcJ9LWADF4l9nhLzHJ5g/lqH+/G5px+dXUu98dOLV9i94+VEGqqbGKGb+UtcHDj16DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760974194; c=relaxed/simple;
	bh=FOl1w/yPhAbdAtgTZURxJPmNrNkgvg2YFhHjrO9TdJU=;
	h=To:Subject:From:Message-Id:Date; b=tFM6dXB8tfO7yNhJUT5Ffik2OxIAQ74ysgz9dJtSsCWanzVF/FfpQiTKzL4NFTvwJrWo51/zh1IFGbuT6i0PvZgeRQ7JcXd3H6kI7cR9wIuyIih6XDLg8UMRhADh4jVl0yiYmfnY4pabgt5qEd+VkMUOExKGOkgDwWEobyAnsAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CN1bwvZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CN1bwvZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4072C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760974193;
	bh=FOl1w/yPhAbdAtgTZURxJPmNrNkgvg2YFhHjrO9TdJU=;
	h=To:Subject:From:Date:From;
	b=CN1bwvZvus9vOl0IPtVKx8srA0KgJ+xH58BLrjEKG7g+/ulL6+27XmRqrVHiMRntw
	 ECuISmvqhlhgpO4W8dcVqAUDnrg/NYzlU3LIBEYAV/xS91+MXij8+sY0ZnMG3SvUeR
	 9vzR/s9p6hFtfUFnoGZJxfp2aak48FL1YCgzWKSt2LxwVQeQwKFpdmxsJn09RG6Kds
	 2IIi2NRE83LzKp81CxMUjuLa3CeCDOm/kPcVrBxBUMM3SrbE0WP9EYM298/zSubLlg
	 HGcLNgJSDIAu/+yAnWE3dHzfTX9xq4SzD831gZ8W44RGlV9V/LBL8VUax0CdU2Rcre
	 MKyx8I3SpTkpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94388CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097419359.28282.13533735964049727454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3530d51f2c9eb309a92653608b30796ff2aae8261c9e4c6e7eefd6b287e6f8c4
Date: Mon, 20 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760974193
