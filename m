Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5212580D7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761242994; cv=none; b=I5AnDV2phyTiIDIOdoTySIOIay7pmzIEUDPXxyRqGRDq5p7oBu4mCpENc74Fke2UHOXBeJbMbanalOYg+aBmen2yFywNW9MJrrtZc5Hy7vxhpkKJ1jd9/qWzlqWP+NnW2PlRu9fdBnkwL1qmZ1VBsJ5Om9apy4FlBiBihMWTcNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761242994; c=relaxed/simple;
	bh=zlIR3yYHWtIVxE4EeAVwdp5jm/XNDzSKf0p0Uw2ly0o=;
	h=To:Subject:From:Message-Id:Date; b=ajuui0ak6r3VgTiRDUDgL/pNQEhFM0Rns2DFDRzbzTuts578MBhfhAAlhQnXzT/Ap02tD2dDrkmW3j801NXniNsA/3qp9pTjI23MVDCjzhpn5jCtTKt5DutAa5l0ayz7X52RAzxbHbr/3lhmNk62CNzmAhHh+yWlVOzq7DzWKB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcctfzGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcctfzGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36E5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761242993;
	bh=zlIR3yYHWtIVxE4EeAVwdp5jm/XNDzSKf0p0Uw2ly0o=;
	h=To:Subject:From:Date:From;
	b=XcctfzGjmBbHOEc4nuzy6mVI6Scwe+nbthflvaDQA6csD2CN3olLBzmSOx2fWNvR5
	 2W4Ovq6o0ea5u07N/0XFsFWXbcHZxM1ZyfY8jRoieImDE/Bx4L19X2+YO6I+hlU8bn
	 aIiP2R7g9DS9ho7XPYu810r2U/opGU+6AXnFdrUMFPL+NKyZIypjN+0Eae+AVF5mOi
	 zC3OIIZmEHdCb0e9cgvjqK7O9/NpDGYKzliYPVLHNzdLjfXu5sMCpQUyeuHcmv1apo
	 x1dF1BiBtZ2OFkvMth7ul/MJ9Vt2hm2BUvarzDSNXOo+452ThAGAuw8Gq8Xjs+bRHi
	 k/UUiqH2HVJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1DCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124299358.8277.10003431708271250927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172766891908cf5a27f916134b713dc4de2ff4e0f5c00efb2b054d9983dc71ba
Date: Thu, 23 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761242993
