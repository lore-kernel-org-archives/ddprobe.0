Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5B52E889C
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776839254; cv=none; b=T+crs1elU4v2igHt/LGufKxRTaDfrHqiYLjwVOr0SwfseiDz6C5sYhl+ea4A8PjtDlxixbifTZkXNZYVkIpTF/De5xmY4/TbFzZ9jBiuLuXT4yCAWC2hHL44xFrhjq/eIcsZW4TGmaS2AgxPenOu5gkTGjYof/enwpqmN95XMcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776839254; c=relaxed/simple;
	bh=bPqSFetqN256X0T5qVlTdhnu1O6pcejF4vSgbX0CzmA=;
	h=To:Subject:From:Message-Id:Date; b=qxVv7SofYfH9PyK29xAnGPUc1o/RD9o6Q7DRYGhxooD3JgU+MQ6JnGt/8fhhZkwZ7MyNg6TByyc2kE/xQ6ecgnZo+22GltOI3YZPB2NR9uQB3bXRiuIebv7Hij/kNwcpFX36K7DbIOsfOvnlS/CH/vkhs+9TwXvSGs4eKd1pYgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMCbh0kS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMCbh0kS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4D9C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776839253;
	bh=bPqSFetqN256X0T5qVlTdhnu1O6pcejF4vSgbX0CzmA=;
	h=To:Subject:From:Date:From;
	b=BMCbh0kSanpIST6OhwFGug/1mx7goGY7FxKg5IitDicNItttgw7ITa5m5lY2ygO7e
	 IvWU1tVMXj1654a0wOwPf136m+s+SNBDIN5ox6jXrL0LY0CVErDVfYCFiNvauvvbRo
	 t8pP51Oci4TMRuL6dDCXueA5MNiRZgI5QrOlfN/GQhVHmkFpK8wiLP6jj8JSnHa7lc
	 4eWI5r2F9ZFbsVHPwrdWeHrOL3rR44kML55tLOPw+udOKjIWVC2TWdsnyWGN0L0lwH
	 odsF2mQAzzpX5skqQjCu9iv4S7qP3NuUhlqAEUjwMoPgHpZD6B5tV9AVW+mCxQhyT+
	 OFfJYLg45RBnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA00DF94CCF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683925368.26332.13139470816698787035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e0cc4140645bd3b92571138cf7aaae3086b21ee7bef6f0045e00e1754517a2
Date: Wed, 22 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776839253
