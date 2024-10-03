Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EAD13D8B4
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727990154; cv=none; b=LZw0MDe2lheZvK3teCXvfYECZCKJoaDXYZvg3c/jKO+ezYLYexBkH8LlMnVzy+dCJKee1tCNguaIy8fSHl+LcnQklYAEKVOsjGJu7CYrf9qi/6gdRCawZDX6qWJqHrH7mNNNqtvwea+qWbWkPIB03XBQQ8ItfM4RDNVdw9PQHy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727990154; c=relaxed/simple;
	bh=NSslZ2cgXpSkBTpYWPVqdsh64MqgWtFCKpozcy42rtw=;
	h=To:Subject:From:Message-Id:Date; b=KaeYwA14D6snu1ynEKneFtJlTyZaTtt0sl2zt0sSxx5H1RPdnxJdISt15Lkl2aEEiOFN4+YPilMDtCfpw6xyKhrHlx6qx6WgXJxYmECvdxhbdFiuzlBZnzo8tts16c29ySNib5UeexbWJYIoOVd1NE36EoDC/jSyzslvfPslQHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfc8inDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfc8inDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5518C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727990153;
	bh=NSslZ2cgXpSkBTpYWPVqdsh64MqgWtFCKpozcy42rtw=;
	h=To:Subject:From:Date:From;
	b=gfc8inDtlmVDSpku7OLgVJ9FAtpE7bonDjqQxzfYKdbwrhc94rKpNIZ+jRh9kBth9
	 /PaNvOPrPFgk70iXkaGCniI/9QK51Cs9ZAX4Hgc+tXspUkKNRW+5UJXuyU0uGsqMwG
	 s5Ki+wQBsPfw+cCeM9fTkL9JbqJ1yXxRUXWIVepWEbPaA+XdYICTGS2cdoFX8xadFb
	 TWgYW1pmktCDhL6QCL0IsSvQ9q4MljaB2/CUsBZ5DJnywzWeaBdxV/bUJ88v8kelqu
	 HN3OikPDSV5MSGkm08z5D8YKezKw0WTVCzIawzSlEIfncC6wmLdefjQLSgi51T7Nl+
	 gYqh4UKdEJDFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D508CF34AD
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172799015363.17729.7879022986086363701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b5df715457db6ec90aba0ee270bda81bb0446167403fda3171784cd98b3b75
Date: Thu, 03 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727990153
