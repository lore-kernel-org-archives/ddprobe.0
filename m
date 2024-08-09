Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E0E1C2E
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723178754; cv=none; b=DpJxzappEZRdFKytRfadMK2D9WhGa/u9vhtIK1W5viDge/mtft7EZTF/B3IWEgofkBbJRuB2tFN+BF+W8X8q7FV/05vIzit4bpnxOn1Q4FY5An54dM6ogdNdvBqkZy7ZFpkKhL/rvNx/1ykfuKCmisyAuesyHM65vbua1HTRYxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723178754; c=relaxed/simple;
	bh=QkXRUoPjrcNpYCDcPKJx6ysTO3P4HN+3kujNkxsLIwg=;
	h=To:Subject:From:Message-Id:Date; b=uwkDttEJYQTSm1jLP1mBGFRxYadeRCUxVStST8NI0+YLCHbUxAxAXcizH5MTQlJIHtidEXJDJAkwTZGIv23PJwWpx7UrcgMo6y0VJTCQA0rv0pEHlEBrQsV8Qj9TQL6uKED/j37q9fnhAD6nicm5DLwSfx+7TSrsZqrWQr9gJ5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hv7fvg3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hv7fvg3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2EAC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723178753;
	bh=QkXRUoPjrcNpYCDcPKJx6ysTO3P4HN+3kujNkxsLIwg=;
	h=To:Subject:From:Date:From;
	b=hv7fvg3juruAMLxXTKonGvbite+cFzv8YBcti0djF5Xszzan5aCCP0gDCBeASN8Jl
	 985rOOvPsSKqJPMKj+VwN613YhUf/80q1ZyGdV4586N3RDq4DTbWILZUcOpcjsPfcL
	 9hL0HGprCO9FJ3VxfMakRjmj4sPv+zT7Q3FHdgPOOOc/l98gPiltpVFMOgr2cCqymg
	 8toeUlOKUyxXPoMk4GKJHSlGkv7jc5Cqu7OiuRhJrRKWq51+BHXjTQp1aD4HUlV/yX
	 0YBc67EM4Qik9UEHKx7rV+3uLCdQO2Zx64xkkLTAaL/mAL+hpqj9VtKv3gOkJlPXO4
	 0uuo4bSX9hfDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9977FC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172317875360.809.11981992629725824855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9397b78e2f06dccc65003c22ae33e0d210396d71bae13c4b978cfdc256995eab
Date: Fri, 09 Aug 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723178753
