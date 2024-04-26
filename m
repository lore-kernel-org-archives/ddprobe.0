Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75402335C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714107143; cv=none; b=jiMqUASGcfGMZKDfCvw32oVrKh3nlysuHK+BMnaz7Yv/71Ahf+TbYWMisPrYza6fsorRbi6gr5tQpAq13bDLwtV/BH9ICfKbmvNlR9mVOQ8OcdvKA9fcdmTuwYwyvp+vRGlrM7XBtGZOWzsbbNSJGf8h7Tc5IQqRp9e9OulBizs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714107143; c=relaxed/simple;
	bh=EDYzVO+VYNPIaTUgRc9C/puzuVUPlqS2DPJ8Z9XVU8I=;
	h=To:Subject:From:Message-Id:Date; b=pIio5/AkapUmEO9gnKvdxBioxXHl82phIyj1n+N6XtGHQ0XWwxRGmPPl9sgP/KxyuGcYQlaZB0EDFY6w86X4sFYE1K8zFFp1PgyRpec80Rm/WJ6d14fteu0eY52v7mBiHV8EdGWKEXXf/70/9QmL68HLN7XBVPf7LScCm9Uz+5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7OnhfP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7OnhfP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20BFC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714107142;
	bh=EDYzVO+VYNPIaTUgRc9C/puzuVUPlqS2DPJ8Z9XVU8I=;
	h=To:Subject:From:Date:From;
	b=R7OnhfP9EF6h3UD9hwEXCLRB3vgt+Xllq2TCzziPJom6094PJ53A0bX26dhknAtCS
	 jyWFtH/lMEiKzSiF/eRl3hf5x/+bTJvtiIabV60MrABpo2YgoE5pAs2ViZEi8yWndz
	 Q0MHR7PEjmkf6Cio+r0iWYI9AT0rBc+/bddv4OF6uP8seJTm+lJAuKjQ8qQrmcQoi3
	 OrMx8U0EG6MHECLpw1euYKAJS51s4JPLn4Qde3ZWQeYwIK9Gaorc4M/GKZtUj4/cBM
	 0kKLJQddok5KkBrBpYYiGz2bZHdAkDg2o9xL11wDC86OqGcYhlRaxvtDobfks35Ot9
	 VwvOe4BdF6Rkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB923C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171410714282.22461.4092089475044397607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9902eddf1f303559213fde999f5055874d6a63188db7895075560c11897d83dc
Date: Fri, 26 Apr 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714107142
