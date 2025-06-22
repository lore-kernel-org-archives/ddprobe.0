Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7C5199949
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750598394; cv=none; b=CZpJPJpAGPke86FkMXPdMflgrlg+l7o2MtPzCQsNDSAOBXzw8JUsymQIxAMyy/7iKwDwPQlghtqG/6eY5wMkwlg+jv0F19S2m5GadDwsaDiXy0DOY3xVKTpSm0PVEhX+n/yuaMTiV8yZtFAqfO9GbMSEYuP3ApUgWX8vOsXyufU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750598394; c=relaxed/simple;
	bh=e6bUIUspRgxbE30xvKiZ1P/6Ztrz5ivs3sxs/zOkNpg=;
	h=To:Subject:From:Message-Id:Date; b=C3LwUO6D1iD2d+mpy4lMUJ2R0b4lvVl4CLawJQXJtgUArsPUA6jKsHrAOH0dCl3Hj6JDYYGxNQZRBjuYvDSewhXZ88UkKZubCoP+vk7SdAZ1RXD/M78nOk4OZ8GLvc3lYx4ObVP7tFnmBJP1F4Z0YwCYv4wv7V7Hr+382DkN2fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0TL90fK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0TL90fK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8625C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750598393;
	bh=e6bUIUspRgxbE30xvKiZ1P/6Ztrz5ivs3sxs/zOkNpg=;
	h=To:Subject:From:Date:From;
	b=e0TL90fKRrpLOfe65+qAmIu3fv2ontP/I5yMJ0Ky3Zp2oKNTAWZMHtQseBe2uFIt7
	 3xE8zx8zEqzcoowOhbiXVlKSnWI+AN+eYw62tsKnhstPNHoiS4SEOWRZVVtJ1Y2M5A
	 MTKBUWUludi4TJ+QrWaJu2g5K2o49MmHlDF+w9QHPU8G/wFyAtC9/QX+B6f2SoXEy7
	 L/vI+Qb7ERIHkAXm2P+eTsZQXdF044+2wX5Ke7p8CQuFySvcW3kI7Rbs93JCVVSiIF
	 yqibFfjWOygPkvx2/CwaAtIauB4aaqjW8gPrbm8p2ZfwxK4ymGTSrrDTlHa4vHNUYp
	 Kj8W9/B5Vp7+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD3C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059839357.21536.2001908261481812694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a557bad1219f467a05ec089b60721a7dd899809a86b9894bd65782ef2dc9fce9
Date: Sun, 22 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750598393
