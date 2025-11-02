Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0002D948F
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762103994; cv=none; b=N8QEFgGjq9T2tQkNMl899vcLPcFScr9FA76CR1A+YIFZxh+FTQteW1Pw0u2SOf6MQx9jTTrBTYme7w9dUFgJDCzoo/1NsaIqk9yKWax4uWGSfZJUCHEyaAbbx6QShuD/2iIqrX+ZLrA215CVtCoR3URnqUtjltHEH+G1pDdaEpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762103994; c=relaxed/simple;
	bh=PdjVMdPGuqsf99qDqCMip2F5/GAfbAcKq57pUk+R8QU=;
	h=To:Subject:From:Message-Id:Date; b=a2p+1VSs3GMmiey+LeL7g+ntYRrWPcQRF9QO3sjwXC6IEx8jg/MlQierzPNf5yKxm/JBKCyJVFENvSXZZ6NJruQGwFL1jPZlWeMMC2rShr5WwAPwV1Iil7QZz5HWCdfrDGZnHrJStE4iT++HZ2DygwV6ew3fdlS84Q13VzNvg4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HagTJkSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HagTJkSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762103993;
	bh=PdjVMdPGuqsf99qDqCMip2F5/GAfbAcKq57pUk+R8QU=;
	h=To:Subject:From:Date:From;
	b=HagTJkSEbbufbBbcoTk6W1zy3ziXFF1687susyPm2/2bB+maeBCJR4wGivxlbkT7k
	 h6jzs4pJNpTSbXO50RQQPkGavNJfCbB0AqeBQq4ZnkgYTM2IlkEBrVH3i8Vo1J1Z9Z
	 BKxgv7S959xdGtYOBDDVUzyumEARP6P+kzD1uMYjiEOzJTZkHp5zcx6qx++Pl6YL8a
	 zeF+x6LTdg+JlTj3zySTqTZNhhZVAXQOW8cVVmdsE4kqD2aC6BzQ8+IhoaO2YDztoA
	 IyaNCet1OsekoJvFGMVAuvDMwx9GMDxXuymhvypH9zpDNUKgVs7LnbsYX2W73BL5Xs
	 8IwT6VHt9BRZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90643CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210399358.30841.4729183501280716629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eddee98e7a93b449f37a5de8e6b617115570c71a9338ae5fbd307ec4c6d15a37
Date: Sun, 02 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762103993
