Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A9320F069
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753906194; cv=none; b=glum9YCgkRYte4mGNDZevSXHdzSw3yXX6lLkO4EyuxXJ75uob684K1EuB1tkod0bSMAAlq9CIEQrySzhzEfSUTzmWthHbbW67hqBhBT8TODSdyhDNAoIXOAq5PWAbnR76VIG/D6dYhDKfRJf2Vyn7THxUT0noauUHCwpl8KkGvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753906194; c=relaxed/simple;
	bh=UVENVT6N/fBEYmeCjJemRi5i7heJl7RRSPbKLwNlUbw=;
	h=To:Subject:From:Message-Id:Date; b=gI2aYxI4UowBqq9dFU48XiKzVHkFW5nXh7o1W9nmFrtvOkvufIvdeFh9jdCxa8KwYuaRU5X6jiVL4kYRGBcbozq66AGlU7/KlK4yWvQIJOpxID3Na03QvHhHWe5z3tqngI4p+hMcvl7eybAnLmaFL4tNC8R+DetnYGpIYM+yHwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+Q+wO/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+Q+wO/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A586AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753906193;
	bh=UVENVT6N/fBEYmeCjJemRi5i7heJl7RRSPbKLwNlUbw=;
	h=To:Subject:From:Date:From;
	b=m+Q+wO/H31h+kYikDMipuRfqGLeR34qLzfRUBv+uQIDwHPWW6RTLvf/7tlItdbUFE
	 HCsYB+m+lB8Nm2SjnXXsTLcL0e8JuYKTsmKq+NqgsSUiTc6fo2eaZgl/CmuTU9vUJh
	 MNbHTSzKx4IQ1yp+6uhmy7oxNAPua+qhBBtr+EKrIwMLqqEIIcBNhQjDXsDar/hiEF
	 zSAvsx2FO6iTxtji0EHDhOeJYL5xNEF/HkelE8t8QyaoU1UITULLb0kV2+tN35F6Yt
	 y4J7jXgx9VeXdh4Ar4d0maVRLkWBOiCyApVipd5Vv3TYxv4gHg1UfQe2RqKqxXjnCI
	 CR1yX+caYzyEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC9C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390619358.14613.2094199487478001875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9bf82c16e4bc92f9bb28d4cab8c0e92f4c6e9015bd75f9b8ea0682da9ec089b
Date: Wed, 30 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753906193
