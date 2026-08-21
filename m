Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659B02F8EA3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787271634; cv=none; b=Tk/EX8WJSJ+HS8Tedo6DRLfsdIjZvMyv8eQ50NQHULb+LOA9WBL6ogHDOcmQfXu1aJ45nwx7g7SAtkx/jgp9iM37kdjsC/yrDEd1um6Wts2li0dHXxKqqyqlbcuVajCbCBL8g6A6+OOMA0zIbEjxvtTO31wfTpObvDpayJg8nZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787271634; c=relaxed/simple;
	bh=V7krxqYrbMp6jLnBoAasdpj6QC5IijNrCggC+psFvHA=;
	h=To:Subject:From:Message-Id:Date; b=jBharnhTXc+bcSVMMkYjMB3+7DFIm1LRpRlcZYJHcc+d/w+aEXvXV+/zSob0xdLWHxSKHfJFCqGK/0zEdpxC+yxZhX906oba7x/qY+uTPZ12zF6s2i2+n9y5lGPkQgbvKB1p9fm0cpyPiGZlcpIpl31/SWtWzJP9tr4+aKMUYnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mr803U3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mr803U3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA9CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787271633;
	bh=V7krxqYrbMp6jLnBoAasdpj6QC5IijNrCggC+psFvHA=;
	h=To:Subject:From:Date:From;
	b=mr803U3Ke2vPdplp+59qGQnJXvgTXRM0g1+bC9H8KT7DedoHdlefFvicWGeufLUYs
	 mVSx/1pntFv5lEzkiTn1euR8ro3XxAjRSG6dqPil32FVE69xFOertvnNTHcw0CumQy
	 AmeUvC39e1te2gdH/qNduJOw0jn0C1NtReGkVb4ENuqdjCIw+D7VqEwp/mHI0RvUE8
	 uIHjz0Nommo0f5cYvUZORXPPhPr3BBC6hDc5xgPCaKs0QfIj8Dy5qm3N2nEtWj0XEn
	 RKdjDW4Efo9lAEQYMH4iFD9gdcnBF4PnlQwt811HdHd0qAH4An4/8iZynW4um/L1/j
	 gPR+8XFaoTZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B24C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727163371.20462.13218412404296698914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52ead5a4dc66729372e0c3bfa35a80f11eed4e7577b11044d628af0b9a01077
Date: Fri, 21 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787271633
