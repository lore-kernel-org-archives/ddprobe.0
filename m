Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586E91D435F
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786071034; cv=none; b=ZOPw64jogHRse0hVCjqbrh8e2QK9qzLPFQ2aelOJudc4rbl6ddTm+igz+JKSan6EKJwnhpS+IjnM8gpMDim/5NBckRqrbLD/4N5JbWwi+Yl2Fy3VHNJ6SlubsNhvflZh+iTLb3o2RjYmT9JNTzw9VqYcK5BFjvA3eQXpsS8t4Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786071034; c=relaxed/simple;
	bh=vg0Z6AcJxlmkfvwZpk+Lbk9J7zAU77ikg1uD4KzmN08=;
	h=To:Subject:From:Message-Id:Date; b=iMpocfoGv3BOyJv0f8ebZs22WszCTPTdSHvVT1PNMo9IToGc/bXLWkyY9bHN/+oNQk0jsSB1n6UbNhF9/c2DKdzmRjvm3St+7KJD+Ei3SRWJRPVk+Xpp0r5G1vLTzk158WXBy/F3jlH8UPqB/JKfpq522dulvTwjsYSTUy5YhxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTPDfkg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTPDfkg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AB0C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786071033;
	bh=vg0Z6AcJxlmkfvwZpk+Lbk9J7zAU77ikg1uD4KzmN08=;
	h=To:Subject:From:Date:From;
	b=bTPDfkg5ayRyv1FkaH2WePS9VHiI1fPMrvBqHPo7dGW5KZmpSMGTwAGhJmg1iBkmu
	 uj15UbC3WhY39pxh/iNafO2ZgA+PQhh7321CXLA2Nwypl6Vx9aSAnhTBknqElqp7nA
	 EICx3Or84w5uViw5DAZAzahVGqJt/Dnh70KMJB8SmqRREvLukWC08/BgxvMQ04UqM2
	 rwBaTzjdQI5ipiCuKOvN8kDWk4hFYO/ADA9XPyO3S3nl/RlMxvfSslsvH9Pv2JYA2f
	 ngz+07S+tZvQbyaVg85dsSH6BDIsPtDdIZst1zQs20muLRgPzAPHswO/uMX/yWHoKl
	 vecmnkhtAv3pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01C2C5AC67
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607103368.10442.2811994309604929987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de45e2be149a4c131fe84b9adab40f705f913f263d09251464bf4e17d644af9d
Date: Fri, 07 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786071033
