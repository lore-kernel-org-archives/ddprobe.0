Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A60B20E023
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785655234; cv=none; b=Nhp9q7Q9rvE56M6hd8ytHGJ7Yk9bI4Obhtfrtk04PEs6hi0If2WB+xalMyhwPQAnsFl2B0zVUzSES4TzFrR9OfASgOztz0h8D+yYnj8fd1ILf6ELVvs7v7mNqs/W+GSxJo93Vtn9w0EH/IcD/T5to8hwS9+ZinT80vNRJtlNbJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785655234; c=relaxed/simple;
	bh=iYWPLRhR/Ehw6uyMArhYT4tAM4p8AR4nPEwpQUckp6o=;
	h=To:Subject:From:Message-Id:Date; b=V8cA6Ol4MWYa0RVDpJF4wWKfT79OA9cBMn0hiI4X8I1882iZ1aDXCo4Omizd1UNlQ8h2FhZCkPSwdj+Z2RJFPlXNRhm/p32XCMFaT3gI8J+pRGugn6nxWW7wzWqHdA/3pxpzd4upx/J9KGfdWYhNYPFZD3b847npW+RNtyFm5os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRSRfgv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRSRfgv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0367C2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785655233;
	bh=iYWPLRhR/Ehw6uyMArhYT4tAM4p8AR4nPEwpQUckp6o=;
	h=To:Subject:From:Date:From;
	b=tRSRfgv+dG1iFu5a5at8ZnAx5+d0t0wnjcMslqoEDgMjA3LLOcbMR+GNpcueq3KdD
	 OGIiKy2zV8+qR6jOfEkDfXFrRgB0fg0xcC3FHJfLZcIsWDHElG+H02DLk947uvpPWc
	 zOKkSNweUUAH8UASgNZwqin64yGyjSRiC+ikf0b+xhHj1d5qKyqlwWDz+eXck6+hPM
	 AjQig85b4/hND6Syqu8+j0TNkYxOEVOXCo5r9zoFP06eUJJvw8qvdlXKWHSP2VnmGE
	 AOOa8TCVNrcxQt8fQ+Vy1Aflwfbdwf2wtH98PtHCQve39kW26MC5Aru/EjONJc05bR
	 l5KtQPZZBghSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED82C55173
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565523368.10194.15001460744252506937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d7faa439ca36000851f70b86fd3e1752bd3aaee619e3ea218007727d79d850f
Date: Sun, 02 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785655233
