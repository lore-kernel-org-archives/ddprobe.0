Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541C1457E6C
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790845234; cv=none; b=ZLpSjcDkx82cA2VtWJ+ixdbm95vcQuu9I+nUcAaNq9wtreFJuNNhagTfI2OmKCWcDBKh70hHT0t7MsCmqmbYtWsyD0GPbYnkiBWXCMN6NJah+oTOTEYV0vED1Byqpmnrhxt1c0DqXZEuXxW2eret1HYnwtsMqYC6MRWLVsE2ywQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790845234; c=relaxed/simple;
	bh=4gWg2n81+mP1Ks6ek4MN1cvZKyUYRu4vgzJOaMf7zP4=;
	h=To:Subject:From:Message-Id:Date; b=Iff6iNohOFMr36sQA9+i+usUeI5hluJMQ+f/imiW64H9w4UbYcaLJxr1wVTycI104luWidkLdTQ3LXHegec2fQrmIimraaFagwdf+kMX/vBi84i2JdkjIj0ZeqjycYiLXUO9RQR1cBbUy63Nwt0kLOZ4Mt4Q8N2qTeXLSYg9P8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuEzKBg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuEzKBg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D192AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790845233;
	bh=4gWg2n81+mP1Ks6ek4MN1cvZKyUYRu4vgzJOaMf7zP4=;
	h=To:Subject:From:Date:From;
	b=YuEzKBg93d2TFwqgc8kY6+OHVt5AtVQjo+lSWtmIkFaSsficGRVi9svD03Birua3+
	 1u+sMYRITkHONX787ouxvmOnQN43fKj84a0q37jf/NzHmg841slfWfUk6GOh6l957b
	 ZW77awD1884f4d5NBeqUoFA2X24cIeH6g90NZBVaW0yBQb+XAHGqwHnLpR9TtAX1xA
	 OUQYVxGnlfW660HIvvCQNiwDOBx1eVuaE8jEPWXRjvj4yHpn6dRtsaM6ffLt7Ou8I8
	 Hl6XJm8rrXZ8M/kWRaBBL39WhZkk1mMl/149V9ME382LCPhw9mw2xAb6ey1Miv60vl
	 lHF6/rpskIkug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF86CA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084523369.1372.3981890677291766624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cec8a3d254de915bdbcd2e05d143ef77fea07aa69d6dda58416dbca3d0e5fa1
Date: Thu, 01 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790845233
