Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4C135E934
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773830094; cv=none; b=OKbB2zB4DcABOYa+33JQsABw+tFJGxkIpyKRSaCjQJ8/OnFOzWCQnge07vENyTv+1IUnQh6aPFyCpiTj2+inz56XxXPWj7d1nYvOaAZHvuc7GFcITKkxopFoVNwjJ9gw6Bkc0VtAOxk73HhEoM9zJiYQbX7K8khn4kQbAt270QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773830094; c=relaxed/simple;
	bh=lTHopzljaQ1+zzJmb7zyPN9e54VpxVN5HmeeXzGFCTE=;
	h=To:Subject:From:Message-Id:Date; b=F3y2MxY3NxQlRvDGkgFIFT8orwO25Z26Du6ms+sG043VJweNGBt8slywhowu7jjvacQpmAX9CQ6YN+Nwoo2XjMfz0vT3t+Ga9Xz5bhpF0WfNWnihC/hf5OGVAgEIM8rwW4mxlbZDB+ZyyPqlBmGyQW8hpQiOvgZeNQb3FIU3GeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fM3UmdYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fM3UmdYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1416C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773830093;
	bh=lTHopzljaQ1+zzJmb7zyPN9e54VpxVN5HmeeXzGFCTE=;
	h=To:Subject:From:Date:From;
	b=fM3UmdYQRPeG4Hn9OpNDwLm8Mn3gpvAexOfvhMZBu4OMgSfiiQPqAUdQe2qpE3HgY
	 iH3+Ft6nfysQuIZzcH6zxgXNweed2TyWhpqjMziKBWbndkkM9K5jQhFgCmcBJeeVn/
	 9gf/vvtuwVRFUngK89WTSEN3vGyTXCGvxAjp5CgNlaYZPoKgknbQnfsaV1c3iGQBvw
	 9DyZ2ODgGKx73L0RP0dpMywCiuJhXfG0PAY+KHHmsoK5vCIc4/DZinKRg7d2rnT1KL
	 hC/jBMIoQRy2apgQvJ3LNjsdmzzOVjvVDKL0I5XEQS+J1voo4iAm41wpK4Uw/SMF5h
	 zW1iFn1tviLbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004D107BCF2
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383009358.5752.2100927036680868256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b52b8a6eb3b8d3cf029e4c87333858812fe88c4217a762447b88bab8236851
Date: Wed, 18 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773830093
