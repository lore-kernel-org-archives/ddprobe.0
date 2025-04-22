Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF744284B48
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745328593; cv=none; b=hG5TEcuBWMtN2bSOWYhKqCLjhUv34vxeurmY5YSSy2NIVlMpdEJ4I7f+fert30pfJjSOJvmvYzsb1FWqx+sF1THDHpTK0/2ZZZywlBA70bavLPnoo47H3vbUbeV74OGswcPh5VOoPVaf3pvTt+BxvHO0REQJ4JZSnNpxTnwttsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745328593; c=relaxed/simple;
	bh=3iMgrUlryuEJoqpuKDR9gbnu0yku0cGAEkP9UXNhHE8=;
	h=To:Subject:From:Message-Id:Date; b=SSpBsn/v1AMucSIxwHSw4Uj8CmOOtvJ0JP/tJkLB2UTT2n58Jdj/DzHSl1NefBNi+JLRtv5LH0pxPTVJBLt6yD+R+XYfwjeodZPyyaDQ8b0vW/gjGuWw5sm64F+XZdX7DeZvLbo+XuNfAq3KrXmk2oCWRr2WgEZ/MC0UBA9pe8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/mJ3Qzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/mJ3Qzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD2EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745328593;
	bh=3iMgrUlryuEJoqpuKDR9gbnu0yku0cGAEkP9UXNhHE8=;
	h=To:Subject:From:Date:From;
	b=p/mJ3QzwabOZrwgHy7/GCqS2FLsWykp0CTHO+KhcVzDu+9GYxnsk3zU0n+uvtssab
	 6lQWCj2aGD88ELQ/sFZKB6sA/oLiD6l9FKtaXIsuvr8hrYEjvHqrlPU6AFCihY5rcg
	 Qbp0we+WLesqrNa6vm7lxx2WshT+bP1nrnLy8WxaCenh/J8Z/a1tgRFRP4N95wlDRY
	 b9ZZyqsNzcNWs/B7hjscePiQVYA1OR196JDrFYYDyfNjq2URIhhUu1hm6LYLSTXrm2
	 V0Vq5ljmK3EES2DN22jaa2ZCIIISkhLyIvmz3CQ9UijAIPensBe4rmeAkNO47RgVE5
	 vYgwtxGN570ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B599C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532859362.17016.4444291824197930683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a00be450f182a6e2bf552f38ecc13f121cd118917af506aada4d6d5dbb0a2f6
Date: Tue, 22 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745328593
