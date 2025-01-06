Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EC91DED52
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736172954; cv=none; b=CMCVIVgzqwTelYAGfiNdifMMW1rrmAA6+e4Ey3COZHjj3npTPYVfgikii5T9XqJg5LAOlhDTawmtGIL60BljtnILf4lxKkZCRCiEP3Ag8g2D1o2I9VFyzSFW9UQViBR3oMnEPRFQefuMTa29ltRb3ppAmg5/nKSMXYTpJ8rCYbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736172954; c=relaxed/simple;
	bh=tEWgQEu48YTQ+J+XLBPBCvgnmTBnws/QyzeQrCQzwMU=;
	h=To:Subject:From:Message-Id:Date; b=aXO7IA8TtkvPJZwPVUoGdmX5vU6Ey4dKDBUP7aj9MO3dtn2NOi26V5IVbmHtf7Ew85EoC+ArZmXfjM923BRXLxCUGVcmm6M5mzN41+EUQM4d8ZrOYboaXX8U1qStSjeGlsRGSV/FNjJ28FiI7bnng9MkfsDZ3omOMnqo+6PkSvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+/siKH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+/siKH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E92C4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736172953;
	bh=tEWgQEu48YTQ+J+XLBPBCvgnmTBnws/QyzeQrCQzwMU=;
	h=To:Subject:From:Date:From;
	b=m+/siKH6EA1MYaRqISeqem8DiiqtIH0p1oJQlbNHO/HU1eUQUy9IGAW2dS4x/mPMv
	 zXmd8qn73NID2QCyZllVcfx8IGrOub6GwGvsjt5qtEPfCvLAwy3d/r61FUaf8tXAgW
	 V8BD++Ii7jvfkanc+6hK8haTudd0Li+I9Uw9+aOBX9ZbMWO1eRFBbYAS6pox8kUi7l
	 vEsqOmIXOnuzv2D7RJXc+Q7HsJp+TeVjNW1NHDteN8o4zKTXwuFuUci+QBLkYFc9yq
	 FgSFP+krOSjZx1rTyeoNW9WEYhejD9PXwIs3kJtJWsi94FPfxm4NpqX7E00/K5eFCl
	 NEyItQGjnMiDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F4E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617295359.24733.11494050207578488167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51688afd7130599d86f636b5168b83d661569164407dcda37af819474505d5a
Date: Mon, 06 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736172953
