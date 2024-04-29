Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B76D171C8
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 09:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714383743; cv=none; b=CaGExsvfGLV79nyjmu1q+5Al4LCPh/oMXcFtPzGRu8FWkWICuuS4uugVgqg8MOxdxCWSeAdiC1InJlSnYSvkXounULE9WQcLkDApi0hoRUzWjI25dE6sSAmDVbrOHnOAIReF/SGbbmgCCYyp+uUjjxqW6BMxr0FWP1AQ//A4Zu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714383743; c=relaxed/simple;
	bh=reKd0SP3Wf1NFlKZ3HZUu1zSK/o32xhWpRtAJMVTXBc=;
	h=To:Subject:From:Message-Id:Date; b=oSEfQXZRpBxD09+vN1j7TU1ALRBsYmPMw/qnpPHxHBv1FHPVfeAuhgWghqAtW0epz7O37N0mZHl4qlxPDIxNYxKCZ6Js0YVzahWuVLnVDkOdYZ7XI5cNzcOBkIR/ZfarALKb9JJ50CzCTcEgA4IKzvlvF8FHm1r3KgcI+eiBh8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frbl5AC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frbl5AC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE24C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714383742;
	bh=reKd0SP3Wf1NFlKZ3HZUu1zSK/o32xhWpRtAJMVTXBc=;
	h=To:Subject:From:Date:From;
	b=frbl5AC3gGO6UZVWOZU1p4NZduSAVN1HQzHuiXOm2EmUqt6n3jaqr+I/I+AafYcbG
	 aYQB/E0wGSHueOXwksvRHcwZ1+dYelH5IJk74Ah56pTUkBMBuri+qBOmSiFUfRthMu
	 AFDCro13ysqjMsEVpAHAwzdK/RXkLYpLooudQGOjW0Y29bKPqf8cNkrZ85ZkcvfTu1
	 GxDlHh/DF7E/QJyApKSOBBpUJlOGcR2dWrYATa5b2Eol0A+Ls+Khq0KRcAVn/BlvDY
	 JA0KT2alsFY8YsxS+ZxwFffrjJDPNEdaNI6B/3xg/4FFoZ6+7+SJquU05DEKiqRa32
	 h+XvGApozNzfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7D5C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171438374276.13998.17916709407179562347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d65b4d7595bf4c3e7f4d2cea808a565f6bc960d6b180ac0f9e89be0648e900
Date: Mon, 29 Apr 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714383742
