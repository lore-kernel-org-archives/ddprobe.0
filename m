Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C26E4AE12D
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788190234; cv=none; b=kxETkX1LMxv2BS0iP/sPkInYTeVwmeBejyquSkzpYlfwYy0Dk5aaWSfXzi2Gv/VWCGGLV3Gpn50y3oEL4f3owPEfYLo0pktL8hcuFz9YWX09f8PVZZXlIw22cFiClh9tOJO+4sAX+yng8n8iAroag+oH2aZeEcDwFlHrxljLoZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788190234; c=relaxed/simple;
	bh=8GPV1g9chUogsr7bnAM555ND5ADUa07aEBXsfvVL4Y4=;
	h=To:Subject:From:Message-Id:Date; b=MFsSY8k/OS/u1UGacVJzLM2RBhEvY50/32Elv8P2tD6eEBOV4CcPjJecxgKplOqMT6JT9KOyKcr1Bg9MUDvxc9mDa1NWEclQxvvah3UO7lOBlZ1kcf5N+7eiE8z0bubvWs3dz3P97bjpfNPsrKbu/cHtABEyrFroXTh9px68/uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peZ2qGbJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peZ2qGbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA39EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788190233;
	bh=8GPV1g9chUogsr7bnAM555ND5ADUa07aEBXsfvVL4Y4=;
	h=To:Subject:From:Date:From;
	b=peZ2qGbJhORD33wj+Y7S0qw4Ms2LahWA8Xl/qBiDc/4Is/q6id5poND7glV6P5yki
	 AvFMhWEjTIE8ZwOkRjfQSMresAbyv5K4+B2wuXL42Ft6fFzN9JhKxEZeM8ogZ9w/h2
	 ieTp4HOeOUNv8AfWir0NqqKx5YYtF8MMRPhail2Ub9dvn/SYLPAKxZ0p/7WhKtxU6B
	 9zhFLtDbzsE5KC8ZvnhvK4GFfS7eXlUpPE4ROqfVTsHigltbPk2lbEBPk13lEksmwo
	 CC96b0041pzvh8z+PSRg0R80nBiIoHxpOZdme4a3q6SYyDPuClIxClEkWmPZc6Ec6u
	 DyMMvGkp2xT7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAEAC624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819023369.23261.15549255162288253801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c75bf34e0df96b914f1962e21416fc1254a0762cebf51f756fe30b04e263f4
Date: Mon, 31 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788190233
