Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80FA8329C57
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779031234; cv=none; b=gbVVxBbClsJ9Z9sNn4Sk2qCmRTRwQ738egy/Z8Vg1ErgsH+sCX2abwBkSFZRpHejtE+Gsmb81Ju5KFXRfFMpbezuj4i8ELGIh8iFnmax7NI6vsl1DUpuGKhmpHFRxYGMiGs2snf0lQ4QmUmirBsdVV5UBiX8hJ7AMVjMKOvDJ6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779031234; c=relaxed/simple;
	bh=xXO5nBsMm3x8iw2pK2RJNDhzA6khU5BlvuAc94VUbyQ=;
	h=To:Subject:From:Message-Id:Date; b=LjwxHiNKnmzFgk/ZAHWbefo749RAVrG8vX/FqE8fa+0z8tx5J2DhH5ka5/Zh0iVxOY1TpEZAQKbcRworCXqWX+hrcX8QVDOkegp0NRk/RDagzp1V0UV3GgU9eKNJ2oMcBJYuGBRzuYVurQoUEAbtTbzIh75RzjxCdRDkfD6I2NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEx9gK3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEx9gK3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC414C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779031233;
	bh=xXO5nBsMm3x8iw2pK2RJNDhzA6khU5BlvuAc94VUbyQ=;
	h=To:Subject:From:Date:From;
	b=sEx9gK3TaJVa3/rFuZcDgEmu2sCkeqlvqd1r1BOGC5coKFRlwgLAucU4e0lYYYOFb
	 QoyaQZiqtyr1IS5aOQxm3HKRIPoCJuGMjldvyqrjfWT9CTO34yNueDMKWHKMvUdSah
	 g5JkdYl31YPLxaxIDEp5bCReKyNa7FF6p1LqTbg5eOMKvLCcWwIYq3xmt+X60phan5
	 sfpFBlTSZc2ORIa+VO7pqz1+3OdTweE7JxuFOH0xlSaeri1SJaMauewPeYP91k43x/
	 wFxo/WH8A5hOBqDXsiSNVFPf4fXjdTRyzYo8I8NgNMMjdbz7GZ9GBexMPO9lUY00bg
	 zjbewnrud633g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E62CD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903123369.19529.16981713934876709987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84e40fe5e97dfe43f1b4809d42c157cd2845e3a3336731a037d09d9ad322db5
Date: Sun, 17 May 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779031233
