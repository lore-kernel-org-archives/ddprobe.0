Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AB324DCF9
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749784194; cv=none; b=p2Ql35YclLi0Ee/KK/1IKNrsUl0rxSnPL4d7L4iUpt51y6685DddEbAIFHjui3a2l8nDTCyDqGKaw+ALLlrpuFRE8orebhPWtjIwBZZfkf0OiZFuU4qgjc5u4mDGSZzLdWiFehQjqcFXzEc1/KJLbFCiVJmwn+NFQDnHSJL01u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749784194; c=relaxed/simple;
	bh=utbm0e4u/50Dlc2kQ6Sv9Qn5J3Ozwn/zpNTTTJWkoZ0=;
	h=To:Subject:From:Message-Id:Date; b=OvrV8/yWRpqXhDqo7a9MYTamebf6GK8tDh2v/KRbRrwwhxqrVMis3p26ZpXL+9tNBTO8WKzGwJqZy2IzdwGz0n4+2XG8UR8BlviSGn2NR5rP+pMeNop/D9koPFNgGXgoZkmUIMrH/jzEzmg8jbJ1bhJ366+VEWJnKiqibpaPFoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiyHeszs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiyHeszs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD266C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749784193;
	bh=utbm0e4u/50Dlc2kQ6Sv9Qn5J3Ozwn/zpNTTTJWkoZ0=;
	h=To:Subject:From:Date:From;
	b=uiyHeszs4OMDzUK1ewhGAVKavDIxtrtlus3eZqkx+NDPbknEan6F6cVB5YjhZPjBa
	 hX+C2mCbamJxieay6AdN99kFYm8HT+sOI4CNxezWcOIze0kgYy8nuWbDd/XjKHc4ws
	 CqnT0jbDcKT1rpFWEGWqgABoNPX5LQ6usyeAd9/6sspIekjZJdkS8/8YbKRedsp6rq
	 1mlymCYpTEj6MVnXH4nZCRduRpWaBhVMdfZhWKzbp1SQ+zDfDV7sOzZyeE6otFH/gY
	 YSolaA9HPygwyKV+TRzqU0NnElCeMM8jp0i4vAwI+L8bEc2rVbSU826X02li6Qx/Og
	 rNIdsioI6VxDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980C5C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978419361.27431.9397114535227881563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415091d850c6351cdf65217a6c5fa492ac9bb0e710f1338a3932b3e437efd032
Date: Fri, 13 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749784193
