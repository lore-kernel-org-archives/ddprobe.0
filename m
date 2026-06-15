Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4015630F55F
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781530594; cv=none; b=HZyW0FjrzF14YFa6oFcpCdR9VYUC2CXJ3q/ikt9gLpx88ad2fPGkjUFxhyStN/mdhd+Eb4bvs3rrtguafRiGFmxSBTgc2LKIUgVIMq2dQHbXlyyj8VAaADItx846WmH4tt8F0rRDE/mfJCXuI2KMZ6osrCxy1pF7/Bc+U3vjs6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781530594; c=relaxed/simple;
	bh=5mth+I0tPQKR6dVnSGRXZvNLnTCUjDEaxHuhNMhA28I=;
	h=To:Subject:From:Message-Id:Date; b=F7w6XIjf2uGxdM9xHnuXXtCPmSUcyjZAQIQCyrlYE1JQtr02nJm/UYl/LaZhR7vr/hsd4WK645WmPRzwuOy1BsvqpFHVDfbK2EsUKdhm1F8FMFCatfVLRCiXBW4FQF9qgUD6F0Ggk7yex0KxmzJPp36U+jM4pu1qGUj+BYUXIcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxbMQc+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxbMQc+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45F3C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781530593;
	bh=5mth+I0tPQKR6dVnSGRXZvNLnTCUjDEaxHuhNMhA28I=;
	h=To:Subject:From:Date:From;
	b=ZxbMQc+5ha2VZd6xkRvknPhIj9LQ6nm8qUUFlj1yBIe9dKCM6jmELq2JScwJfp3/6
	 Hbwg2oJU67wzsr1BVViATb+rEMN1oY2v/A/F5cjP/CEJuSdGIPewTBqN9lcgj/0K/p
	 7908WV9griQWb4VEr/1oW1ocC8RHH8SXet37TQH3Uv9qeJv+aE7gwYYtzb1+FzDykp
	 +UvXTirXB6QhWIlo+R/+gNO3FB94R20C89IRqHoQ8OmxBzjo3aou1j3VYHEh4LWg3P
	 etHn/mMPjycD8EE/do3xxmPP/+fTmzKoCrK8tM1iajOgWmAQlCO4O3fba0jHwAlg0r
	 u8RUiTJXogYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7805CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153059373.28928.4764970191422555296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab36135c703e5a0901eede0c9aaf1d566bd382f2e9d6e082fa8d2964f5d79e00
Date: Mon, 15 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781530593
