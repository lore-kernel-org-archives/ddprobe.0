Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C37324B28
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785700834; cv=none; b=H5kyibhDiav985ox6SL/zTkkU661mze5Me9CXYUIsYyC4G/3w2MO4tMQ9sD5niJDTMH/CJtQN9MdYx+RUW/F0ZaMJc1xmWW3DAo4bxMBF5rIvDDjIS47mEcmVmQKezTm9Fvk+6TmuIzws+pxHV+gz7r/z0TwbCaweyaI2pm/tRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785700834; c=relaxed/simple;
	bh=6S6bdbApRtRgmO+BIVGIi/wCIhDHSP/eZ0yHO6bch4Q=;
	h=To:Subject:From:Message-Id:Date; b=iESvDGaxUi8Zvwoyfy1O/D2GN32a0k73aAF6pFO7gBXfWPuImtQBOmv9awIzg14R4VrUtY/X8yj2qQo25Tq0215wa0/yKzXUSuOGxwbLy1RAPr/fei/+43puRdSmOo/1xlRQXomdw/BbJLZNQN9IM0K2SRkh5UBukQjFR4O4SxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzm6xcSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzm6xcSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A82C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785700833;
	bh=6S6bdbApRtRgmO+BIVGIi/wCIhDHSP/eZ0yHO6bch4Q=;
	h=To:Subject:From:Date:From;
	b=kzm6xcSxboN5OiaTyiacoWZLoFXHEGBRQS0wvi9MyDwiLf3q7mjgclPwioM1h1vWD
	 KObvS/qrq4/cYm+Z+PAjJNS7A/fdMumMuPgGh37kF30XxcBaU3qwXq3StBo9biceD7
	 mVlQv4qax+1XRHj2TAF0XjXCqz+Fiz0ccRDnoUvwZDtT1JZ0XnznFYB5B1IGMe0JVU
	 jyuxuvN/R8p4OY9hAhdzk+0YH0NXW39FiAV+aA0faY8T0sAuTKgdC3240WuGOmN5Ax
	 ox1AUE1AEEAdtD4UgKUirFezIOOzdjHZjs4RN6A6Q4BejI1SrggPgq8mmNXwuTYe/z
	 pLkhQHusI16sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFB2C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570083368.14622.14313888199805517736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c10f2cc1e805c7b57e5639c0fced724a1010ed275160a63466ad927eb534c1
Date: Sun, 02 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785700833
