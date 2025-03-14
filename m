Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1E928DB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741962535; cv=none; b=EG0UTvBFtb1/R5IvfCk2bpLR5Nek8ak64CD1Ip19ffTZBOY/HfL/yUabrAyKdrQaQAQp0aldeKqemVfaOLDf84OcfJitBGevp55a7XMqjlu6sBqQ4c9/PscwyK8JX/AiX33DzeW9Xr47cylXAAodSHthZ95+sUfBXiEDHGgvHdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741962535; c=relaxed/simple;
	bh=yC2x+U6EK5W4K4Ab0Z8bld6cxCBs/MI8L4+vr71q6mE=;
	h=To:Subject:From:Message-Id:Date; b=f5235hlzDJ6DKey2b2Dl40SSh8WqriOIL32xjUXs2rXPCidSl6e9lJ/afWXtmgDk74piBtDxnuFCPlhJA7U+d8HApQe0jij3fyBBVgbojteBWgr/qYkj4Vnupr4hTPc++fZAr6WQGCgbGJeLO7rFcBL1ZQNqxKbJ5XalthJbWGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjj+VITU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjj+VITU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BA5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741962533;
	bh=yC2x+U6EK5W4K4Ab0Z8bld6cxCBs/MI8L4+vr71q6mE=;
	h=To:Subject:From:Date:From;
	b=mjj+VITUFMa+Svt2PL6D9jpKHEqQ3bUMs7bYXRLd8jvSx1SQLZU194QSdUIKIJD9M
	 zqadEZ6q2uqifuuVGSeNlCi9AqzK6dXzhwHLnezgnpE/wRzGdZu3K3gaf3ohodcPDW
	 qP3ZGBwnJ8sKwACRf/tk4JBlOrgkA70//0cRRUgWwsI9iJagtADGtN3qD5BwBea18y
	 yIxF7COLqFPySRbaYfF02nIddHjVDQmDFnGe7FukC0Lv2RQXDa8sn9FzIIfvg2CLbh
	 RZRiD0u5iyC51r3kvBzkbxE7XsK4vj2UB/2OmP4R9r3+DdsmlAX66hyq005/a4R/MV
	 7OU+wezWFhf8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B20C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196253359.22290.18397010964266394741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a43d04d041d2307bc26df3647e39bc7bb1f083424369fae43f0de4ab301c26
Date: Fri, 14 Mar 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741962533
