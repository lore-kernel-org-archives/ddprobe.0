Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BA121770A
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756168194; cv=none; b=oc53nUJqic+Ix4kSgI+Nto2T0vH8czRLdlQfxUCUow6gFscBj5lAjW3CdPrIGBkj6LaJ6mAyNMyh95EAVtUvF28F4zcfIgwBpQMJzUBO7jgw6PmdmPs4PS94o3sBEitcmK3G2Is8MK6svXjNQUyU087Zfu0cYKQ94YomvUFOD7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756168194; c=relaxed/simple;
	bh=9mq54STARZKSJhHOFm1Hz0AFNGEFk3/RMIVG5S/N4eE=;
	h=To:Subject:From:Message-Id:Date; b=J4ynUKWibwlr4weDHCIJ8LM1zrSsdjTUn6QfbAutJfy42dyHDshtYADoZeHaybK6FEpWWpMhsO6KqPiUkaEIZ8J85v5nTPI/zNMNlY+7UJFX95SiAUEl7Egd6gEIB+y43PWnNDgwpD/84S6yOYXZOr1X+WgWnmZEcJA926xN6kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RET1+H9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RET1+H9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21FCC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756168193;
	bh=9mq54STARZKSJhHOFm1Hz0AFNGEFk3/RMIVG5S/N4eE=;
	h=To:Subject:From:Date:From;
	b=RET1+H9fMe+N+CNYEOPpwde7Izllohv3NMuix1vxJ3h3c7e3o2N+DiZ3L1GIlBAvz
	 r6+xsi2iJ8bCt1hoWeQCv8g0gdfeFn2zfr66scctPAaKSip/lsIAlIi/pB813FAZ3D
	 4mxoPqiIlK/g8dfulGRAVBU8qXEPyh616m2XZE5X6vKEUfOCFYCG6LkXCcYOas9K79
	 IAI7+uiM36+7HZl5CP3wdnn1HqJRiwrX7l9mrcxlWqHqpe4UbioJ0491n09IrJd7Tq
	 B+8awcLuumkqmUMr+O30JcxYsfuDcQVV1aaMjsPreH3zE55aV7Kxj86Bg8wKUwoujr
	 UmtpFvyezEFyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C83CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616819357.20923.10999211670456914758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6143fbf0937e5486b82a4fa23bdb82ff4fe7279fff1bfc75e955a27bcdb86fc
Date: Tue, 26 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756168193
