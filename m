Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D51E1E9B08
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755660594; cv=none; b=FkgDUZyd52khTDlF4/6+8DJU62qYNdo9HYUgsQ6wK9T4xrV5/ApdTAg8qg6YaKo6QEIQeghP5zUC10UGD6jT8r4nMgR8TS+NEnyDfVVSUwIQ6iDtiMNe6QwqFU0YwWutzmuwr72X0BjjnvodIEPoWu0XOCodhNWbtk+oMp7L/dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755660594; c=relaxed/simple;
	bh=dX0LoGJKNHaKB9A3ClVIfR/EMJnCugh8dvE1iQcP3qI=;
	h=To:Subject:From:Message-Id:Date; b=eSTjKUPuMnMlvr8cfTFebSVtUpAmUR80ZlwIlYkRpVJPZOMVVsrM9Phw9zXaijwWN0gZ0Ff8jhbCLI4FRM03v59nvcBeRO7gkfFh90CgWsEXXH/QDBFtMPtTqTDcgwpgT+R8I53ckq66jos43Lsehe5JGGmkgf8GlDijsI5p/dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqmvbAdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqmvbAdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41B4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755660593;
	bh=dX0LoGJKNHaKB9A3ClVIfR/EMJnCugh8dvE1iQcP3qI=;
	h=To:Subject:From:Date:From;
	b=IqmvbAdIOpZ126qEOiZjfhGro3AxCsGHsZyqUxOWVHrto1RnzJsjQuUs18QYOsgbB
	 L1XHke3sQI0dxy1IxwDKibl/zAZV0LzuENQ4CSt7CNU3nfYqT2XWpE6ofHI39Gl4Sk
	 FzN4K5sT+UclZSmynW4Wb4CrI0d8IgVAjK+eu+fnu2GNfZk0rnR9jDj37czdNHZ/U7
	 t3RojULIXLraVCjDAJESFfw3poXKLvTv/jdYICazoI6KhYEFzhDqhJdjGtZhKst5uv
	 t9bwfyhOKtEjOJ/pf3LbFtOD18vAJ5DeL3gRuRSQIWXqJCqN1wIrdnyBXSIbrt5Lvs
	 /wG5tdjB66s1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B1CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566059358.8765.6265254138514403235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f1ec19f8ab6b466a3a772774a31fa0e856f64eac82bea57822836e882dfabc
Date: Wed, 20 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755660593
