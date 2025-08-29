Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4415E28507B
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756502994; cv=none; b=nG1UxUk3nkCxXJ6XVnSPg5Edk6/ED1NupiiLwYdLxXEHNJOLRDEuTPsi6RkpBNfv4CBSX/k97ZxzIAHySw7qzkESSYkqZsInrH7Tg5fVpCwDBsHhMNKAz0tA0s3OnfU0Ar1iyLdBdJGOwOLCADu48WcX+UzSk+/y23modOJVcPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756502994; c=relaxed/simple;
	bh=ZVNzwgQ7lQ5C+KWKSu9GtFtO0Jqx75fQujpxUbexusE=;
	h=To:Subject:From:Message-Id:Date; b=q2edHIqAI67p4xpbbhXMw9cfkd5vpjk3UQjoTebC1WG0oP4zZHwiA6FwkI5sVj9JSC4E60M7za6BqwCClOqxiHfz5YGFrMqRIyam+emgf8obtH+d+PyrCWIXpnbWOXsl1FoE7/lLm3gwBAmqzFmKNmE51wlWU0s+aUu/Rz96Y68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PckOOuhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PckOOuhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2102C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756502993;
	bh=ZVNzwgQ7lQ5C+KWKSu9GtFtO0Jqx75fQujpxUbexusE=;
	h=To:Subject:From:Date:From;
	b=PckOOuhj06ftBrU/8ZLU69eYW9Y3SgUJnGxLGCa+hj9Mujuldh073anSu9g+IarxX
	 qir+W4RsxEpoYBq2akPae4sgPxB4Zi1j6kmnFkcb2eUdcwd/9Qh5afgHZfMEpN/dbK
	 Cio6xf1a+YpQP5ak2b0y5gpWowt+KYxqb4zCls/u10XiJT9kkEh4FcAX0UidJllFkf
	 qqMD0/UBl16XYXAhDPEr/Iv+BsR5ySLk8RaFfhhXWhAzbYqXK1iZ7ay2LU7oG2O2F2
	 n1rQohIkAj9akC0GE2eqLrc6eN/zy/P5aVzDgdAXGb+HtZj9L/o1hvZvp66nTXp6jq
	 FSaONYVjDuHWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED88CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650299357.32708.17868979842280426255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741b8af64ffcbe4ac5f8a57405beaa40c8940801d98992c1a31b8418645ace0b
Date: Fri, 29 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756502993
