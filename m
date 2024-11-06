Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1191DD873
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730887554; cv=none; b=EmAF+PkroJhYK54cwq7khRtAiqVt7Z45ypMdSDhMe1MYcrli9QiDayJdKhv1GXCuUsnkw4leZUcxcnkSj4fifBKMWw0kc+ee7DdZ75yCdEHvSChqPpBuxRtlydZgdYUcvynC+oLMv5fs1vGXa2ityfoZlSv3TkVMk/JF2cxH+JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730887554; c=relaxed/simple;
	bh=0oaSxzOhJQUO66y3NRk6S1cfN67OA8tN3JLrcXD3Chk=;
	h=To:Subject:From:Message-Id:Date; b=jANb0v4fxKskJqKd5sEj7iJdvqTSLFY+9Jf/nIlCM+etG5Y7SVw1BMVXnnd5zb+vNdJEssEDappc7NKnvoXc+EVUvuPWdfqIcPrL5G1aBJD3qEXKxixD/QnzEK/8gndLKaR/1IA06LfLudHpUA2aNXQyIQt2vEJLz6D5ichNDAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwCrepmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwCrepmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC48EC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730887553;
	bh=0oaSxzOhJQUO66y3NRk6S1cfN67OA8tN3JLrcXD3Chk=;
	h=To:Subject:From:Date:From;
	b=KwCrepmZb1kSgjZxb6JF/dbRRD8g1AZ5e//l32VMM6vM0ZGi8Q6Op+zD4yjZNiorM
	 oiHIckESb+tRNV1w/IS3vS63jhSfNV3UcP+JmW82YwB1Bn/HXSrb9W0g938mT2Omds
	 iIAz1O157ctmc4s3ZSmkjmw2hlxdt8CDe8AOq0zcb8q0r8b8hbSGf39Bbvr3o153l6
	 jmRBYURVjiQsRjRfa7cTJBAHeiKx7+pz94b3zZXn6HnBhbWkcQPUpjdJcVk7bVdyTR
	 UXAgpx18riBrNX6kRuHB0leLzGXyrNrvvvpkr9aJFiUX7QoHoPROq1ukFBMnSpOJlM
	 ziTzqAUkHAewg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935EFD44D41
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173088755359.18966.123036184669027196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 404f5bf676e6c6211ebf6a3fed474f445f6ef055c4e5b20bbb5b4072ef8bec9a
Date: Wed, 06 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730887553
