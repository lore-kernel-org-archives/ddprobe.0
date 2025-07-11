Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C805D1C3C11
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752268793; cv=none; b=gk3l42jCZs6M+IgxPHn0MLVtODYX4A691YjT5iu7gu0YlAx7lVFTH186g1ACX5CX/LjLeZJhmWzhB6o6Uxso1PHA1Rzx1TTx5YGui/0iWg3e4XSu2J3Hg6s/mwOQjc9ZpcwHupstsClvYV7iElqx/W80cFeTBL4NfaVfONlUTi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752268793; c=relaxed/simple;
	bh=lgcD08eER5Ci5FHzxW+mXiclHJyGhIR0TmPar45vI0s=;
	h=To:Subject:From:Message-Id:Date; b=upVf5EEA+1nAVrsa3Fpyg2HWLVBr/VMPcgVgWLfPJUhguJV2C1YQbQhku8ataUMGA0latzUIpaX/lSmG8z8WNxeKG6psKglzJcP+/ok0VnSsW8IDWLhbAVCDTn3y7YKnVmJ0C/Bu/8SJp+thiVdKAtpncs/4O/RrjV8e83jLmF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ezo/M611; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ezo/M611"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF6FC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752268793;
	bh=lgcD08eER5Ci5FHzxW+mXiclHJyGhIR0TmPar45vI0s=;
	h=To:Subject:From:Date:From;
	b=Ezo/M611zjJ0nVgB+/SDVWbfYpv6uXJcWxrKFWTAwnW69JX8sicgDX5PcYThGFwTt
	 Ne7vawFxPqzeDGlb2TIlmCwTg000MdObry4KffTOwZQGvn4NYQYGMmahksrS0I7P1o
	 F7Uzau/iMlztfyYTOJXdLRDdWTlu3r8EcaGZHhRwujfDSqsATuicKbZiYIbI9ywmqy
	 GhxpPKQ5zUG57tK/JwmTq8HZXQR5zyEf31MjAb2U1iCzwUlnYlrnOR8ryGBKc9ZQ/H
	 bknwoFZ4jPwfuyjUQJsD4+U17iIqOxLb1J/NJ+efD91/Al/qrrU+8cwmWKvY+hhJEi
	 bqd+2lu70lkgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901FBC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226879358.14608.12946123028481166635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0fdbd9958c846adf146a47a9b03a53b887f2ae990f1368caeff351bcb0ebd71
Date: Fri, 11 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752268793
