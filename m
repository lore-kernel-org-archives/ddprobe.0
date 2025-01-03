Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A1F1946B9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735893354; cv=none; b=KEppohg2+fO0AwUuAoqwDqsYP9+rSVqJkhRvX4w/dRqu5lP3mEvzzsISmAZOGYtfOpGMEnYmGyLu4+Xz44WfrnjGcKu9Sacw3cRAyZxP27grgnxkTswQ2/jPQfNPnLAi4nT0RAGD7c1PuFSDDvb/8DNW+9uZ4MjT5F9PLw3I1bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735893354; c=relaxed/simple;
	bh=rxnJCjNVwsn+f4eGPNLIypmn7VWvuLFrTT+jOGG15f8=;
	h=To:Subject:From:Message-Id:Date; b=FLVTMHH/nbdQDXZl1RIQ+L7Xf0RjsaA8IhYza5KOLxWFesf53lsxPeyUdGcnkL8eskM1pHWBdNXvU75k5juVdPPvshBWH0TTqvoIBRxuUNhVM+6UtOCSWyMYnVs0P9E+pXMcpTYO9eG7avcIRLBRafHBKQ+LkWDfJ+ENRC79pSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n94E6a8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n94E6a8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCEEC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735893353;
	bh=rxnJCjNVwsn+f4eGPNLIypmn7VWvuLFrTT+jOGG15f8=;
	h=To:Subject:From:Date:From;
	b=n94E6a8pc5nIG97pzWIEox1Mb2xaq4QjJfkoRxEXofyyZ6DrA94ECDpaGwaomJ1jG
	 DokRkzCUHcBfg9jY9KBpJv09rZPd+L9meYsiQTN4wlSX4v4z2VyDf2EKqBuNNRpr3+
	 FGdIL0UusTATZ/7aI6n+e7xm2S8y5XSlH0r2q3wShQmW+sHlPKWn5+h7KC6uND+yMM
	 3SwcjK6QgBxtBnFApqfHX7OoyAJheeOte5PsNJk5y69NC6/plAqWy1PmYABcSZvB1A
	 tXzNVhkrJdx4mqM4vIJWwNK8x+Nah3pc3WELlrwKrCKiDEhR94S/0zHXRFEBdYJ2ZQ
	 DAD+asI1r0XJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3785E7718F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589335366.19851.5575095016846479145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9b0067b41073bdeccd266e9f0f8fb9c20a53631f203ac1263d1f066e15f77f
Date: Fri, 03 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735893353
