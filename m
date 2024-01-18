Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0651D1F939
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705567097; cv=none; b=WrWPRm7ihJwNv/ZvptmQzrv6WNumhZFsH6aakW6eRJ5QWsZm+0OvKP1NlA8HS1xFrjpxJjZuQvK5oQL21Xo3fK4qeqi3tiM5ciTA3qyM/QuaParhp2GS0GLSAor6q3Jh3HQvaPhAZB2QrYmEWp+tFPpmNfpPVkl5v+yg3QYC/AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705567097; c=relaxed/simple;
	bh=KzZy9d38UVMw8ObyZpFsEYoiKu/Chd1LwXc3SmfPyUk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=X/YC0hMlMl8IxX9kJ6oj5GhBKx2q0DC7hgSHJnPcrNqlSs233P9QZ4F3101rDrhPgo1NAPTds3fzSYxIPa4XppSn6/Csij2tvF0BbIk13JVyjn3Bkj+wmWKOEJ02I/+42YWVAMZEkZLDgr+I1uatOH1ZT2KEaX76ZGu01NMV7iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvOttjxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvOttjxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC8AC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705567096;
	bh=KzZy9d38UVMw8ObyZpFsEYoiKu/Chd1LwXc3SmfPyUk=;
	h=To:Subject:From:Date:From;
	b=cvOttjxC/reCNL2mkBmfuDpPhzbVluC6PA0Uwr7wwbm09sc01FAc0XUSzOrZXNVkZ
	 ceusEEJU0DKa4WlrohRG5RSYgXJvxq8C8WDtLB8KBMVymU7VxNCcYjBn6YxDCx5yAm
	 rUNThWHTRCopwoMzTMUhKqimCDfY7v41H4zdHszUh1l2/OnZdb15Yz1qfLfPW8o6P+
	 +QW4mKjuzS+vpXHcIS3TtRbrg2DnRjlNN1XlFNDJcxH7uMsYq44y+AFAeNM/YcTkR3
	 Y0ZwNH4MVFbUut1y6YA6fKbtZKEm1POswzhV4Z0zDQiU/fx4hGlFJCSwf9VJyFGVEe
	 x5B3HwowA/AlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6145BC4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170556709639.31837.17767752610527494336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85707fa3f665e58b77c7999610ea94153b4e07caae46e7a68bba0b8cc6759f35
Date: Thu, 18 Jan 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705567096
