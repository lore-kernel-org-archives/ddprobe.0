Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A77E22D7A9
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787535034; cv=none; b=YWfeAvN9BtHUutMuyW8gaswVqmo97kHpziVXxMeoInRw+E/kJhNrAw/HqI+VZ+Z4N3h+awI8koGsWV5AoZ1FuxSCuqDaxa5L0nEEjjQ20EwCB74J5rtuTYRoCkt4wjQKnhxj8cYddZ9/DT2WmhLxcQ1qEoGovN8puYTIvt/IVNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787535034; c=relaxed/simple;
	bh=ivY06MNkBTchWf3yXCRy1jqJjrkZO6/JPhyW4S5V5ds=;
	h=To:Subject:From:Message-Id:Date; b=VJ7s1A8C6CHupTX4XrPisLyc1773/yBC/J3EQeNhRDLa2wBvy32rdb9uwM157gEFrwf/3dJT3w1JrUn5aAeI02Bo8/TauRUIOVEahE62l5H/l9R6KaX01uj9IHhmc29usx1qheL0frmnGbYjc4DXBVOSxMZbpYG69B4Z997hp4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ix/XuweA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ix/XuweA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA28FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787535033;
	bh=ivY06MNkBTchWf3yXCRy1jqJjrkZO6/JPhyW4S5V5ds=;
	h=To:Subject:From:Date:From;
	b=ix/XuweAiT/9o9iva1hvuX34ZjTYArBveuE5ysNRwEKxkz5PydNXR5LvA30bbB05P
	 ClEJZMUpaZdJcGrVt8/VezzP4TGXjRrynHNTpmB9g2QUdY36jA6xckWHHisXbu4YKM
	 YQjse0enI/9xhWsCKFiZZNis1cIEpVtTFQqf7PDRsJZgElI7cgxfGqA2gXT8ArLKxV
	 Wy8wUGpr3eogkxIVucnm7ACJBvuqRE3Vufb2104EvGsYLnu0rZlS/KYpNP3liH5WoA
	 LwCtr7z7IXhd17E2dzhWsDFEUzVaNbtN4T0WDH7ZTfuLurGXSBdG/V1d3FwL6KRbpG
	 vOsdmoHLSVtWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15FDC5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753503369.14419.11082861457204168393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f700c9f7b32dfe1ef93bfc71fb96a3d152ae30f44c6d3732a4938f1781e10fc
Date: Mon, 24 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787535033
