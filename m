Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FF024A7E2
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736996154; cv=none; b=CgjRba0OYXczyAk6RR0V5ErxUpnEMQlCIrdxYEN+BNE2PCQxpS8xItu+ghYGmQfT74T/9U169ZCfW+BLnDFChhPhM4w8MvbbPFhRif7jCVDLSTuHXlTWdeC30oPLciirgRH+Pbh+wVrmgx03pxDCOUkfpY3xG39RvHcsrrAjyO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736996154; c=relaxed/simple;
	bh=ffG/x+OE8Yirk54XhSGthNMaZRvQWw4zQRJuVnzgay8=;
	h=To:Subject:From:Message-Id:Date; b=mzWilzr7IiJBG9IZSG2/V15tLxj1TjN4GHCKVoFWVAbyc88ztWSW0rQdTPn+qMrsgGwHXy+VbYN53S7en46B3u650ipAd+8mn+Mkd+ZRcx4+nd82jFO6LZlvYiTxcO3rUsN/cfIdxt1Vq3YW36tFYTaKK/8IfwYAc3T1t66xQJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sK+qU7zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sK+qU7zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D0CC4CEE0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736996153;
	bh=ffG/x+OE8Yirk54XhSGthNMaZRvQWw4zQRJuVnzgay8=;
	h=To:Subject:From:Date:From;
	b=sK+qU7zxkhA1chw8Mz4K6dJ9/avNEIZYrDDtbv6b3xt7/Y7NSJU4NbZOAn9QaAJT7
	 OGmtQXDVZkTVMXldA1QlXgUJVJXy9M2ylsw3OVD4YxdGnynJzLc0Sf1wptVDP1NpCf
	 Zlu8k5DgwSZzHmyuTB95rLL2aPKt0zme4IZEDrueXl6Wk3t18mCrBJAG+s0zBf/Vhe
	 MMnvgVKUjmNgAr8kzkSHcyr6J7MTSLjZ45VxjYTSzySxZOW7K1U6t6U/igKQPtVL8U
	 JET4//ts2cFe5L9/RhUmuPjaUrG+SviEOPyHIloR52rUxVOkTK0oEbISwuLdFToSvb
	 +UdneLJAy75WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F25C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173699615359.19609.13063628929582599537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100066de766cbf372a05524427d0cbdf081200f36614c147ece7bdb4de389bc4
Date: Thu, 16 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736996153
