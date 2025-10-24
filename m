Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B50302CC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761345594; cv=none; b=oK7W5mUwKMCPfmeV2ivKt82IKSQt5vRooF1KEeul9bPX8IX+cUe0F+++5jR/kQ3qdl1F1NTYf3/6c9yCoP0atXLPHdOVSm9oJ5Ure+K1x7bezoEwUfn90TgO+pAIZToCLVnmd0Yb4zrmvdgw+jwZYeKV1spD5t6fyHAfIZQ12go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761345594; c=relaxed/simple;
	bh=HY21yoRj6C70Mr9Rivmj6be3uOa2ll8UWuF+xcJUMSo=;
	h=To:Subject:From:Message-Id:Date; b=lQevcCRH99Ibuu0ZeLiHbvcckYw42pO/01B8z67hWpXtrcy63s2ZuStoel3WsTp3q3WpXhyq+EE/ivhwLdU9Wl0YpCWkVgH0r7f6p95GIcJIKm7iPCwC1/v24/O5uo3rd+F277bjPv+E3FmmS33zOZ2ypAC42RHF+yGN+Ud6SvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCp+r9wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCp+r9wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761345593;
	bh=HY21yoRj6C70Mr9Rivmj6be3uOa2ll8UWuF+xcJUMSo=;
	h=To:Subject:From:Date:From;
	b=gCp+r9wdT8BMJp/59kOZ/dKZa8iVoyVlXAxRTm3cSVGuwNZGkC2WP+c/VqTArLYAW
	 h80q+9c4lF2gNs0pkDA40eXpZbIP28TYJTwuKHnNhxJ/026wxDnp1yTPK9LwAPBOx/
	 nrZINZkTUiHeoY10Fcxqh+ge4Ir+ybwlpgxDtCmt/o3I3NEVcSq9b5lfowyGbFTIV2
	 ZFduxLCFJAG6YdaU6F+Ka4g971R6/nsxA73aqA9e1zFP6EBc26LK1lRjA71LN1o3Wj
	 viiczqH/FUhks7btRoebreVkVzZjU3L8i1q+d9yr069ljyWydYxk0zL62frP1QS2rB
	 9oh/ps8b6iCiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90950CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134559358.22633.17189798128762029903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2367168f9a8256d841dfcf477e74305f5f98f29252dabee2194bd1617f0c70d9
Date: Fri, 24 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761345593
