Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5103E347BDC
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784442514; cv=none; b=e0RRTDcyza+gLEEsDb785q9h+Dq1ERFiA2ggiTzjp3ad0Imm3lL7r552wsjtJUZc++La6sJjbveRUluSHrC/oqM0+AgwnBVwwoB8nBgAc4uBI2BIlT6+PirUFcGRow8ml+3DUdQOFiUsh6XBuahsQwiCiwlSYHIW/ND2hg9WXw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784442514; c=relaxed/simple;
	bh=yjqWw7sFvBlpBg3Ss0cN0nTUjPmor1KK7zt+zz+gytQ=;
	h=To:Subject:From:Message-Id:Date; b=aqORQQAwhG0wVszyUsm7ksimOv27JvJSkWR6Hi/ia+m4h51/p1vHHFVIQWU9HI01akyJ3ZFdGQo9yCwE1f5Glduq76THtCWS1MtYDPnZwrjgR9T2mMNtsdvAjKer/DwjQ9eXGrRHXCeoQdIOjC8NuVp5s4A9oc5cYMMwIma+b4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXgvB9cN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXgvB9cN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7000C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784442513;
	bh=yjqWw7sFvBlpBg3Ss0cN0nTUjPmor1KK7zt+zz+gytQ=;
	h=To:Subject:From:Date:From;
	b=XXgvB9cNDdhHpsdeQ9sS4CQDpowxDnoQAvuG6lWcJ8qpPEQ74K/oqW1f3XnZKD6MO
	 EDEbB7SO2V2V1irKFu5Z7bAbXIjOo4ccqQfrBwKBpXu/YpN2Sv+KWhfnMVQIauJqaV
	 oNza3r3X0OF2UX+Fv7MTvPS+RQClzYNk4R8+U2pQiuxkVwAC/aLCSTtGokn96QX6cl
	 Y84MXhvfJa6sptsUzZjRY3pXd6HR1qF+2xMvO/fuDUfph/5/u2ozGW7I6vMQ3SOkrx
	 YhhrhntARbZ9cXeA30+xyCm7jabbgHz3aEHb2LN5BMksiCULblb4f75NgpQNFF5b1y
	 wR8zNINowFwZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85F9C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444251368.30001.7657149650955864634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c279ad6a69c2e442011e1b345d1c751b937e5bc9f137a56dc28126897af83db
Date: Sun, 19 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784442513
