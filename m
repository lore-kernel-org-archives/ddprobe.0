Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1A21DA23
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788307834; cv=none; b=OIlGACxq7c/6o18XYgc3QF0ofAaJZKDbPpMYxtQA0gwH6NfIxHitWhvD72atXXGJM+By+lP3ynHcaDe9r7rumrTiO6DVsjqc3dfZO0AOvLVwALLB4VO49biRchDHS9HrQEoSquVZx6aix490TMvqW9HJIFBh2rO818OWEEs0lJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788307834; c=relaxed/simple;
	bh=thMaKWiLQ5ZpOpVno0zC9Twak5GRGgO7ga5wT68PfVY=;
	h=To:Subject:From:Message-Id:Date; b=cF6UnGJ7OVMhZi7J1bXffA5ZTv+piAQIDB9BFL5uUjvU3fIAaTLrGZHVPN3Xbl5HCZWq7v6BultlyYK0+WGM8+E34HrvwgqYOfFVX7I/rMQTR7GTtnekm6jDqu+JoLhdBKqQj/6bgP3fLbdEFP0xTXh6l39Tp/h1cKthVrCy8ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCzvKr+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCzvKr+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3741C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788307833;
	bh=thMaKWiLQ5ZpOpVno0zC9Twak5GRGgO7ga5wT68PfVY=;
	h=To:Subject:From:Date:From;
	b=jCzvKr+EG0ZpV7bPPWVBBCZ1yUUPDckopZAnkQHZuAvyeZHMgqriWfN37ns+FyCLn
	 gQC1uZpUpA7mqq75rO1Gi2VYzeKgSK0d3xsaMXdFi2bMlx3BbYgWmrasC6k1fku2eR
	 QfHQqyT4qbzDxfEcbxzyzeoUlt24r21wQyEPZ8UjjS2rLrsNiWclcn4G8pQ6u294jy
	 TkPwo2/5Dqf/mfuw9t+SzfiafacL6wcQ7UlVKDOMIfm7gXbh2R0ukBW2vtcE4RtGWA
	 JjCF4+6trVhNzkhEcgDa+h7/R/OfnYUv61MlXoxVstqzL7kArGZKs1OPedtvZlljlS
	 XjqhatfNRXQGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD957C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830783368.19756.17170579927969216831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffc5ef04fc3dfa2241f5976425aaba09bad7aa703b45f4ddb4968e8a2526f42
Date: Wed, 02 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788307833
