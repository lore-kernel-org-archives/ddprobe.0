Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5731017D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737987354; cv=none; b=tPfAYucKx9lEol5yNUEUvV9a6N7rYI3iJdFICrcx7Q7m9vXZ1L+eyHfBPm4yLNcpFkiIJ9YseZXgXPcHHieQx0RCcu1v6dTtAwmZtt23bTir5vpBJNGq7+glnNUIWqzTO2TV/Us/yFr67lGAEKSHVlj7UZq/GkOxG13Lx0EIHNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737987354; c=relaxed/simple;
	bh=90j0Qnco2FS74c68oejk2CESdIBYUTun7OQlFagNgLs=;
	h=To:Subject:From:Message-Id:Date; b=qXuUbGKhB6vIlI9lktE1cR8HmLM1YQWGin9qvTkFWWGk+P53g8LRxY+Bt5lGbPglv3zaNUAYx7U8ieiLFS5UYgYrkke0Ch+K3rbTb4Pm6X4xd90aKcgT2l6ElMdqhH1JA+i3qeUh/cpO0KJ+tJ30MbaAMRfvcYjYNuQ3YN3aXkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzsL1kPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzsL1kPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5E0C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737987353;
	bh=90j0Qnco2FS74c68oejk2CESdIBYUTun7OQlFagNgLs=;
	h=To:Subject:From:Date:From;
	b=pzsL1kPz483ztB+AD6CZac662ShzkxTkYEiytnGPtNXQN4iwLeUIK44cF3R/V5JfJ
	 6h2iAgq19ad9ncEW4acLXYTcSm+O/tGkokXeap7zPZtbWkfdloO52Hv2mloho35tD1
	 Sgx7L+wYjtaMSbMMPMPKRduRkWvr3YJn1nu/SsPaDRyKQYk7yvESwD8iVXy68XaFue
	 o15Fb8MmJNCoBoAf3rbnvs+Bmau1tc5w9B5/M/dLtsCx8Uey8PXsHrFhzvQMKA7x33
	 GIdUfKcSFRo60rl5RRW2TfnK4NBtfOWGn4daS/oQNhx/XFnh86I6LcGkv+FLZUpdQ/
	 b2YuIFF0Va5lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DADC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798735361.26657.14921746023600054978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b66680be76ce5154414b6fcd266b63d174cce9d278a1afad053012fe0f703d5
Date: Mon, 27 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737987353
