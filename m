Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B029231823
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746078595; cv=none; b=HHx1yDNWMOnyRA8kAY5pRFZIacESzwPmvIxyEct1bzk81AJNLuXqc9rq5medqFIMpXqvtL5oZ/Vu0Kc8s32lv27+SVpXS6HVXVrjcA7fktNUClyf9sFUob6OmJQL0UDL3mOAsBxrYj/Hm5+7AUVhqWskKV927QJV5+lBmZqzMFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746078595; c=relaxed/simple;
	bh=o+lZJAuz1FxMp9orSM+XrLu5YT4fD2KND0ecWcZdsak=;
	h=To:Subject:From:Message-Id:Date; b=BZacNrYAbeiFYKTk4YNiYNIIwmK3NxPKb/vG/dvqOosNnCTnBubJdhFNps6Q0iHq83eAaRpFyuO8olCUPYt92VU0IxFePQl/irFwA58j60q/lZqhnumM7JaMAUOfdwUwfBeXsMwRkVL31pYKa7gwZH0twJX3kpNbgFDRIHyB888=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6njp0Dn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6njp0Dn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE0EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746078593;
	bh=o+lZJAuz1FxMp9orSM+XrLu5YT4fD2KND0ecWcZdsak=;
	h=To:Subject:From:Date:From;
	b=s6njp0Dngu3kG4iBbZr+5tklMJN/8pCQ3ikzU2SwgAugj8mJGH1Um6br9VjWwP31N
	 KqTle2xeDxAKPGIokTaEXRlZBaJm3AsnYt4o8T8fK+EdVXBnb5rbN7fHNKbZ5oNFqk
	 /HEXR3iFEYqEZAvIXvSzyViVt6YIDc+w7yliMoF/HIO233rRbLak+ZyNu9N9JuGLzI
	 O6oQfDeJLPKJDKtLQHyVuiZt+zR6npfTQvHTEXb/CdvP2TOfcW30bwbALEseeqg3X1
	 xHxwnNPWl9L3l46hj2gKsPiwOsMWkIqVxW6SJ1FIj6NXJDo6/7YvY02XXTdsjm3V/k
	 Lun1cpmnUPJRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5BBC3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607859357.5286.8721287452138501049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1334e6659af22baed484b087e4cba4178c29ded18c4bacad0448d706be72e9
Date: Thu, 01 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746078593
