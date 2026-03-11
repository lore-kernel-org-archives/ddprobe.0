Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C45413D539
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773262494; cv=none; b=W8bz0w+ODNUQo+w00tV5I3xXMA76sjvs8gccImhytDAcGoJs3A6fcUOjCHS1uyPXlG0IEf5i82/gQShtxCNOuXh1zzxK14myIbOBAgT/E3EQuuo/RTU+e9MEU5TRfJp8CAC1WVaPpW1LQdOsQPUrRNg/PD9ZeEWTrRH2h7yY1uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773262494; c=relaxed/simple;
	bh=aCuKYf5HUus6jPLo0kYQLBVsvGHM8iIGtxHxKmYGpx0=;
	h=To:Subject:From:Message-Id:Date; b=WMPAArJp3KTF+T25YYqTNUHUd1cV/lSY5+i57UMfVCqjXu3TCdp+JVx9qphu1WvacJ6DyeqkRH7AQWHid566p1lHPenhh44ZwGF4ODqvir61xOISlsAcp/kyM5JArIcfCT0EhEuOgUeAVjc0ZNN4BooeniKg+IKZGdRZgl77YQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajqs23c3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajqs23c3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B65C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773262493;
	bh=aCuKYf5HUus6jPLo0kYQLBVsvGHM8iIGtxHxKmYGpx0=;
	h=To:Subject:From:Date:From;
	b=ajqs23c37tZwAatF9iFkTv33PMoc4VM1z3zxERVJ+9SP0WBZXmpCnKRlU8jG+yzRe
	 ypp1wFrvhsW1++xUD0rvurRtuXKgedaNtTqeWgrii8NxPUAmtRLY/puoAkm/Fm0YLK
	 EIk8vnhAiei+ZlONU+rVvmOYrr+IFPFPz89vx++6DkZ+K41WDjl+sswqQXcIPoEQth
	 n/agNfpEks7oiyn0nBb5p0qBUbtKMmyoDpBm7r6DrgmwamXGGKZWCHfii53ZP7d0o7
	 /WBh0YOhVN4HDiD/Eeija+dTfQsIxtKsO0Qv+mQU8GJgXzs8ITjmsveN9BsS1oKjvV
	 QLWJeHgyHgOzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91507103E2E5
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326249358.9857.8277204228863000076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e5cc4512baac117db6a02e67101deada28f9dce3c02efa06b8ceec649b2549
Date: Wed, 11 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773262493
