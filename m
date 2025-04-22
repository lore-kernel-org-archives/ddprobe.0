Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C78428134C
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745330395; cv=none; b=JvPy1r1z4XuWoqytad3FE3EknXFbNoI+R9ImJtPJ3PLD4hwaV/Q3uVb7el+mkNvaYY5pXGHmheUBb6jfuSyHBYfM7dtYLd69v/KjIQCe1q6PLHY0ZrGuywqmEfNpDbZ6zUyeFCFYeu8hss7YPjxe3f8brMaicbJEc6mL5NaTQ+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745330395; c=relaxed/simple;
	bh=gLxlWbyacI6SSC9OEeLNBdZZ5ojRHPH9XzbmWEbu9K4=;
	h=To:Subject:From:Message-Id:Date; b=Yz6U5wYSdqeDl/smSo6MeFAVICm6YVcpS6bwW4ATxHyQ7u80sjapyuhRihTVbitftPv+gznaNiaF1rLV2YHGhECSUAx6joAmbUkWlbPpCI8SyJmSfYWOQ6bGkmj7BbBRXsUKr+xvH94Zi3XkMgKffa4jyWxU2itis6purizzLfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiIuhiaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiIuhiaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8539C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745330393;
	bh=gLxlWbyacI6SSC9OEeLNBdZZ5ojRHPH9XzbmWEbu9K4=;
	h=To:Subject:From:Date:From;
	b=QiIuhiaQmiv0VL95qjp5ZXzWojB7zhxeIP3lK7gNifcT561Xmvu9trGzQy0umnAMS
	 9xe9+2q9Xpqwp6gaSScbKzwvJdtvjFu84enXHvi3eeALqX6YqDvbXF805rzLx+tN1F
	 Ix+VKVNfKpNiLjmB5j+DLchaH+rGPM5D19UbS75N5u6Mj2Jh7Gv9ky0cABuruVpx7R
	 vpMwfEcodAqDaRc37CwE+HfCW+42itcZ1wtyQWYNrcW/3QttutYeBY8pFOS3Qg/8hF
	 GiEKGJ15tpIwfk1BANNOtNw6sqdtTZ6QMoW6hwZQoKk5/5kf+LuL2HH40IvQ1DMSNs
	 Q1KWdRM7a4++w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24AEC369D7
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533039364.25698.7338886032494213027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5441c310ffbe1b84b70a38da18337d339cadca1f4a0bd3753a4669f8b262ff7b
Date: Tue, 22 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745330393
