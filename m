Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459BF7E58D
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720612583; cv=none; b=nxBJsjXDHO4nsxBnAIXjx/vme5p3d7/QC+KM7vLuvv5K5X8dRtQCzzPaTSx1npPBtoEInnwZGSdfI1+dE4MlF1qUmcOI9ygrhJuoVCjZ7dSQPCYk98XQxyfJunS7uwLmN3vcdiKOxdvX5ygvi/9fDqjq3F+MUVy3NR5G1MV5Y6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720612583; c=relaxed/simple;
	bh=ise0UtzdrSMm3ZpsCyOEq1ozGDkU7wYD56sykFGwYYY=;
	h=To:Subject:From:Message-Id:Date; b=jtFBEERbyX0wbyznqq21qwIvVtbyk/aM4c5swfju/ih4KsZE4nu3domowsXYwidzaabIT7WGV9If+LfhsJA2O4kG/lh/Qa+8KsTdHLHbttH/CRKQOjalPVApaJLaWhlplu1w1yiIjY04gz/xa/RGZkl8FPt1+TMWa0lHb6W4hB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaNoqJ0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaNoqJ0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF59C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720612582;
	bh=ise0UtzdrSMm3ZpsCyOEq1ozGDkU7wYD56sykFGwYYY=;
	h=To:Subject:From:Date:From;
	b=EaNoqJ0RI2/bif8Nc+XhLJJx8sz7Hc9AgM7ffDP1mRNWQQsrcVOfufCD1c+W3h8UW
	 YqzWfYU1QWI7J/QJ0sA5N7RntbKxNgS3Su0VDMEKCKWxxtGz81yYhfWBDCR2UGIhPZ
	 UC6FG9wCnfEe03htqFZh3Llga9L/Rmvxa2b4CukXECtVcZWKL8LTuY4ORPxlg0WkQc
	 YWOHVlUQhzf1uhCXuJDj20+I5/Ind/NwuuPI178ywVTp7+nhIivwXzerhDUcPSS2rT
	 3sHGrAoCjIMdazTIgt129fxphr8IFZILqfjV5eR65sGhSI9HzCPUS2g/e1WCfOJxXR
	 +t/bhNnG9nX/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5FEC3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061258277.30001.17972306542186050411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e830d0b9942955c09ea12126160d29b9eca588ce9b02f9493b0e5f99e1848956
Date: Wed, 10 Jul 2024 11:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720612582
