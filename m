Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A8063CF
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762043394; cv=none; b=l2pwH4IpSocCPQb3oS/huqlsJT18OouqpH59T6eQQ80fEUVJe9cO2xsTWdbfQwOWpHg8y7nQe7cPxL8KBXzqpsjwlDaRbKQ3eD109S9a2RcChBDqvxXdu96694shNnPuVqOVBYxd7pPYo0jmH325v5qyzof6FA4ZmnuPXlRCHeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762043394; c=relaxed/simple;
	bh=0Udapw4aYfzJf/XhlqRmVmzTpKI73R0mySXEE7kIHOs=;
	h=To:Subject:From:Message-Id:Date; b=I+2+gAokT9U2EsZI5B6tTwIi4RqERu17dpcVQD93cM8tgwje2MRssCX48D0LLbf6P+GyjeOQiPN+Zj9mV/Pz1EW3dh4f5UylokUeLgDb58MYgM2tgLn2FHsY2/Xfd2TA73NwMjSNv4UE5mEb/gRcaVyQZ2oRGGVRPwmBGEx42kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtO0zzJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtO0zzJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D51C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762043393;
	bh=0Udapw4aYfzJf/XhlqRmVmzTpKI73R0mySXEE7kIHOs=;
	h=To:Subject:From:Date:From;
	b=KtO0zzJhT0+Rbcby9EhuRTHrTjz0irN7JwLckTZqUwyWEC7YQe/YWMhaM+X//R8rD
	 gm4HSt1GJClZrEk4MgQj0Hoc/emYodfxCi33EDKbbglxKlpBcgWp4wnTg3rrKOqdgF
	 l1xI5LqQdzdijXXQShaBsE+irVyyYabbWGQ3YF3ocB1Yh3lp6pWlY6X0Ahaj2Z3PA1
	 l+KBjoK05bN5RqkpNY+/Gz+XOgwxdYtWSxw3V+p2NJvNGoFQpXFKa5HroVbLaPHFK8
	 NQPfzklO2Rs8BtgpJlTTZYteJCTcIAoJx4cC6TPV2tqU+pTrvim2TV/eSuVgKTD2lt
	 dGqLVt992iZ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB8CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204339358.10602.9243214146410810774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3260632d8cb5fae9f2a1cb96373132b9893691d002caaba7889494738cb0a5
Date: Sun, 02 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762043393
