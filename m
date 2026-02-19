Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B2325CC40
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771464293; cv=none; b=Ct6GEgv7UYmrz1nYjpAvi5mcj1CHO9Y/VgvRUxfwjaC9YfeFXXr0G+ZB7VjqSn8DD+MzVjumO7cN8c4w1Sslor7o+Lz+BN3I1iI7+oKPbnisWtsBbmduLZiiiG3UvqTRvWAriVZLSkFZAm3oDWiv+WvXoe7GGT2ShqCo8Luarrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771464293; c=relaxed/simple;
	bh=CqFFtzdVernJY/12Ez8aO+wWfWNwiBrVkCUA2yDP1Po=;
	h=To:Subject:From:Message-Id:Date; b=mRD48V+DbyBZyixJM7kosX/x070v0n+r7+PvsNCjKZg+HRDxHwOk0Wep0F0Tsi+CExdxMr75SY+zcE1sq7SI2XqCP5nUtdYzIMp7jF8sa+mWlRNgRJ4nX6ZBIrYfLextJ3KX+XbgrA/6eg+b49fiGvdkTqkVXIfXyT+WFz6T3kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfmaiG0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfmaiG0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6729C2BC9E
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771464293;
	bh=CqFFtzdVernJY/12Ez8aO+wWfWNwiBrVkCUA2yDP1Po=;
	h=To:Subject:From:Date:From;
	b=qfmaiG0XbaDIxtUntx6sEM/YzdOM8Il91Zp7Mk2am6jRXdzW8aVytNuCmuAVaatxu
	 1Y1nIYCL5pX3MQ4PbqaXt0PijpiWL8rdk7MP+brQbSl/B+iUnrO1QIbi9CYx1tf40g
	 FLAqNlGvNUhfQ6TDNMafMbWx/o1kiWh0lcCiQiRPMuxEAUOsoZXttc/iDvly4uHZWf
	 Yr9ZFJ/ncErZD9CTdKoVLxY/OFmnk3J4KbN+hMV5mAheJkUc0XcCCfurw0ckBEf39P
	 H2wSUDDO9T6/fKYYGxau8RTFmnLFk69el3o7pJ3i5Xe5E1x2qG45/wV4bYRTV8dPTN
	 GYs8yhekfkJMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0ACBE9A02C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146429364.26137.5549609657323815069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e4c67a130b242dba777c199b724a9781a431de7f55ebb69b5ab29406b293e9
Date: Thu, 19 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771464293
