Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E644071DA
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780803274; cv=none; b=UA/XgjpGXjTYF97kRuHKu2m1Oc4mhOB5N+BG0EEBNSuiUFlLmzQCgdkXvzOmZCX5qpFh+CVHZ1JsGU3VLNHt0ztf2uIu+hg2717hCRN2OvQZQMy4tp7adyEW++0+a/1iWC2PQptLWwDaDQy2iicb4/t1V13DtIW3S2hnolGSGro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780803274; c=relaxed/simple;
	bh=m5acT0AJ6lhqSvaC2jb05C0jWtAbK+2aQkKeElUMt6k=;
	h=To:Subject:From:Message-Id:Date; b=Y+LrOFGJPV0P65lb3lslQqzaZGsXjAsGmQhMUS3Xi/FIJMj/X/Xc1hB0jr/AgrUYu6DQDRs0RW2jwLQFOCUkHcdLdrj+fI2p3nS4RCFXNXiDngZXTn5YA3kJHOiG0enEAMvOHbINayJUQt7A4ieP+bjdcMvYc46IsNPgdbddJqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soc8J3Rv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soc8J3Rv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEAFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780803273;
	bh=m5acT0AJ6lhqSvaC2jb05C0jWtAbK+2aQkKeElUMt6k=;
	h=To:Subject:From:Date:From;
	b=soc8J3RvGCjLgbzvwoLZlaN9OSQm9Camr4ojhDoz1Y9F6B42VLQvHKZgMK+1Kluwz
	 ggezQK3cjaA2VEdtaKEKv7wfxA7xEuF/BTQ6badyQ5MVamIRLJQbnXxoKyomveeMcp
	 /YU5TbzzapqZysT24Z1TJKRwJ1d3kMAtJVKh+GNg+v7M3ZbsRZoI66VT1QKOuw50Jc
	 aFVk5cBtIuDk+VfSJ723TIU7G/HGZpNJlj/n0HpkLDBo7C3rIySoZPxXkRnZ8butUa
	 XpGECcuxW89whYnzpGDs63NjTPxYmKqZ+MUft6xrq6F9jqwGI1iP3tL1LGlQP+KF+X
	 q9IJLHMrjOTAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0B4CD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080327368.1562.6005972675702716384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f149edfa87e8ee6ab6ffc51e625e39bccd71c7ce00f1b857b2deb31d50e8f89e
Date: Sun, 07 Jun 2026 03:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780803273
