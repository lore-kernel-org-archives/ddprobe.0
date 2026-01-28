Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B7D1A9F83
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769562233; cv=none; b=PRi8GZ3yUGEQJolaieMpw5dCE+5Tq/zyR0Go/1dhOk2AksSV592WXNZL6OwZGxO8K7rnNUbevcuPWRopjIOZVGATFpCUGC/tqrlc34pJUjxznB0k6YuMcPdLTY82/a5rzUyqpv3ka7/qrEdxgfrmRVO0nHCBkXXMpL3lw1Mnurw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769562233; c=relaxed/simple;
	bh=GePydZQHg5GUwXiN2zpmp0BxTfvUnloiCwBPoABjx2o=;
	h=To:Subject:From:Message-Id:Date; b=Y5PHVlArVXYi8PV03SKwauNl0jLzjvlUybxJ7iHX9Y/+CUseeJIt6N2WNxejSM5LtGEGNaOED73id+9rxXr6VReeWLq7Sbdn4z5n7YJszT9ldhsynTjmEoe0N+GpOOtPV2XF2PGRbIjWO1wmC/p/BPcEWzr+ZphI17ydCFetH3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPTmf79j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPTmf79j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF71C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769562233;
	bh=GePydZQHg5GUwXiN2zpmp0BxTfvUnloiCwBPoABjx2o=;
	h=To:Subject:From:Date:From;
	b=ZPTmf79jv/Ylh41qhEm42oXDpDFtkI+hvfzC9OuVtGOFIzqh8M5uxb+rMpKrs4Idi
	 JKgrOFnif1Pz2UEVRCho0r0AID6+vt5355gXhiuuZoMk2Iy1zeFLXxePDVlZVuir8R
	 qeGWPrHx669GPrES/kxqQfcy7W2Vkj/RZHrduabZ4lS01fp76QfseCaWT3PlpKugKN
	 p7yO2PrsGPYuWdsA12KC0fX2ZS3/wxpkN44qlDdlpmM7PnD6Nhn6SDSzwm3rIRgfx0
	 U0+h0Wzjp9qCj08PwvzcBNyxsHD+8Ky9nvudina+Mt5gAjyfhQo1QB2U+mVVT3kPhu
	 Q4ihaZiaV8m+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907D9D35664
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956223358.30216.1045929871103640123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14cca6315fbf75c9a5549ee99d5d943013afe18428e0fc75e46b1b6a89ec40fc
Date: Wed, 28 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769562233
