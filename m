Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF392374E4C
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788009035; cv=none; b=IgVL77/WvMW7BQSqdx5D/xEp+1XAlCJmGeB+T4F6OLv1YGYcud33r5w1iQpYIczKbQ/g7mOsTOKO1MhiISUwEnbD+uDg8hwGwpMbJZ37PdmbEUDh/QTanehiuCftU0i1VqsX+hcmISc1eWMOyF/IThFCqMAx/SgUPdi6yecr51A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788009035; c=relaxed/simple;
	bh=m+MF+5IMgix613y00Ti3bNiZx4Eyn7V2X15MyYyKpmY=;
	h=To:Subject:From:Message-Id:Date; b=YMuJqDJlwwD7afQWAIScGCaC4lD3bghIO5Ir7MLMkRm2ZZhpHVowpXisCFJUkjytmTs9FCU44N+WzuJSU6zw5vzpB59IG75/JSy5J6B0s6hh9wcMLmflYcaPGBsc7dEmiZ66IaXBec9xyBkKb8xvQzUU6vGRqTknaI4oS5hbm0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIlh0nPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIlh0nPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FA6C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788009033;
	bh=m+MF+5IMgix613y00Ti3bNiZx4Eyn7V2X15MyYyKpmY=;
	h=To:Subject:From:Date:From;
	b=cIlh0nPAzv/vbfGUNDmF1E1v2yAW3/YrE7e6ddOHhtLTeE5O27ijMVmCKyYp3Dhmh
	 RVr9WAnH8p0dM1CZHG72m3n9v6qpf8M2+x2xrOxKCOg3pxReWyv5kMQ4tj5BtyrsTS
	 ScjOHudkp2SK3JI435H3a35Ufja2+wbJ2GIUbylWI1S+AYmcNqNd+Uu39Gkq7wHBng
	 Ccdyxh7lWpU4oQzrFE1gh1R8yU+RjO3T4cl/oM0EfYqJrmrqO+eTN/hk5Jq9QORi9V
	 UstKDWRekX7dfeFtHP4IyIhpMa4oFKHSgcFbYP8aGsUhVbx/lyuiW5LTBdZGRjcxbQ
	 EpOtuUqZCxulg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0B5C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800903368.21240.439211439329775620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5758f510ebe57bd00f9bf5a80e62dd46a10f1faf3f8ecb08f5c494deb43c7063
Date: Sat, 29 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788009033
