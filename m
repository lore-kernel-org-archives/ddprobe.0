Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163692D837C
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755812994; cv=none; b=C3d8OnSWYWinrfQBdh/mh78eDkkZP8i7bHEuuusSaMZmgPtblUVEoSCuvvvsrA6MDN0Ofr+DFdID2ioJbiOQcrfgQmtJF82SFvoKNXwqjWIWZxt+7ihP0LymgG2By0n0yfrhnDg9pfiOtgINFaouISjwC39zYQjgvg1wGsPWO48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755812994; c=relaxed/simple;
	bh=Em0Efias7qH+KFrUk+0dfBjiKfUGdapNAvHXulHQk7Q=;
	h=To:Subject:From:Message-Id:Date; b=RaU+d5HbbCMoEpm+78VBmw1lsos03kWYna687zCI7L/97QVSsgcycgfvZbCzEBSM7DkmR1oWkSETMOva8JYIc/tABVwhKNn9w6Pl8gDkT8zGVfLLjoOvtcrw9CJuDBIN8Z8Zar7J1XqHSmTK+EOxMmO3DCSkSyxD+jpG/XxA0cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKhhUeN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKhhUeN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F0DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755812993;
	bh=Em0Efias7qH+KFrUk+0dfBjiKfUGdapNAvHXulHQk7Q=;
	h=To:Subject:From:Date:From;
	b=eKhhUeN5vhtD8L3yfXeSxoz4RFCQHXJAa7CXaHzfnK/JxZEgDqkNi4971cuQksXyU
	 Rx1Mvu1q2eVDrxbkg0bYDmNQrCk08DHNHgDVP2vWKpFXHcOh/lkJ2QWeTddf2GiXSS
	 VcW9wU5PDkeGYC87sCANd8TTm5HrMvL+aRPGylwYniFfO88IvEdie+bKJ8wNhNy2fo
	 Z4qEfXMIDdfHBlH8PUBy4zbiDr9+DbSjjSVCkBCkH/VfPtYNaCzS8TEVvfOJMg+TG5
	 AOzlvyQRp0SbN3IdxKLZLkpiOdsXAJVRSWejZ3khBFYEBye5GOzu1scZp2d+jvvFuB
	 J5Jczfj9qWQWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC9CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581299357.27669.13532302351820279709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e8d2e3c36040925acf3a5050801a6e8913eb9115f0f52a1f7b62633d98f431
Date: Thu, 21 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755812993
