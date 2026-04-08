Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1691E19D8A8
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775625934; cv=none; b=GHFpvzDMl6KpFkFuBcn+Vsj34Plc/AobxL4AkNwRZLPuUbHxZsS6kB45zIbK3jOxnFJDAplfjygpyT3JYinBBd1jYjEGtEQbqZ3mgusyKJ2+w5MO1o3tPKwWe5DTcneqzfXS54Kjjy9rHH5OAxWulSn39dM3NmzPZwJC0tqcwSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775625934; c=relaxed/simple;
	bh=mzIdreG65x5ZAcGAdFh45oAIQDrpY0eWhcSHDVU4Y3Y=;
	h=To:Subject:From:Message-Id:Date; b=Z4ZzVjwSsYuPUVZ3QWTC/TpBfrVMMOmMgDSZuL9fN4hWkcM1ooQxsAl0tZu/i6xQt5baTdjKFpcSdSfCZSOwNFKlMB2mzJlmlE7hbP3AighvaxATNPsCStfRiWPcsRmkQj4hKVy4WqfS7wVnXz+dl/+S4KXLGr712gZILSTN7Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNcIjem1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNcIjem1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D20C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775625933;
	bh=mzIdreG65x5ZAcGAdFh45oAIQDrpY0eWhcSHDVU4Y3Y=;
	h=To:Subject:From:Date:From;
	b=WNcIjem1ZyZx3SPUdFEIpVWu/9iAKnOyswwGrlHjdGPX2PtFRvLjiLENh6+oeF976
	 P+1Bv49RtxbcfAweLAUvUs9KYlWuKGHK853n0BsWUMw2ZpOvhw5CiE3Y8dDQyjTKwY
	 57avrBmBUFKwPRT10+xK0gIQpbaWr20PuvhDxDYvQOvP23sU6m4Fee+M5HrG748M8v
	 x5vRp54WaJxzn0BS7bHMBnuLcn0EplLAd2OtJFj7MfMXz9hApo0STWchSdowWyvCso
	 ka9LoOoEFgKctP+RZbHlLcoZi/2WxBBHwNZEvce+/Yele/ZRDhASuJvhDBBNgapXcU
	 0BbN4ztpmUE1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4008FD5F61
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562593370.22265.10518716493440364971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac512fdbf9b7f48ecdff20334eadeb15c31140aa557deee51d763eaadbe9bfd
Date: Wed, 08 Apr 2026 05:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775625933
