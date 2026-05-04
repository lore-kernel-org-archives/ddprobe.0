Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159563A7F4D
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777895854; cv=none; b=F2WEqWqE/6ZB5Dcbv7/2REw9cswQQeG4YIVZVT93wh4k246sIFwRw1Quzb2qMwN2dR2rwNU4B3pLdmimg5wGvI+hcdxV1owmn3c7sv7Vdqb2QL6EfIdEtoW22xo+yimVka8+mhEBxiia/xCiCn/kMn7t/r+PW+YEEJSM1hiPPrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777895854; c=relaxed/simple;
	bh=LdE+JlGN2Q4k2MrSs+4GtkLKq63c8oPhJD1y+wra30A=;
	h=To:Subject:From:Message-Id:Date; b=CIW3DQ7IEDovsP0G0RmjTU+aYNMhqx7H+MiPwryV7w3LuPhIEBmzBrKARlhEKa3YoGgc3GBwK8oMC099DIyNzRHH49tB6EKRThl1DzkY91oqJInVbnH/6JlFA3LQeGxUM/5x1WlCz0VlHspmhRoO+tLlpJiy+tUVv1vKkuwWyD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kySiwLGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kySiwLGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D4DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777895853;
	bh=LdE+JlGN2Q4k2MrSs+4GtkLKq63c8oPhJD1y+wra30A=;
	h=To:Subject:From:Date:From;
	b=kySiwLGroD/9qc9oSlYJw45lY/ZBOqAw14q0F7qvozLRcLEupOJ4Zyf4KMvFRNz0I
	 vIsIXRXf3BavvU1bwa0ZtRPIT4zDyIzXsZPauf9fxIZh9uwVCE9lVBlhYwdNT4v4Zx
	 DTe4B6VbSoWHHE5Z4LnurlIhRY4kzyM0bD9/0AxnvUwnqVSfVBGihsPWDhJD8QtTuQ
	 TgBjZ9cGgUXKlgL4UbpYHc52vlDPpec8J5WQLRreMOqGQUzNguSXKhkbuRNx+zGfEY
	 7A+0QTFJEWDhwxA6GoXNYwOQFz2E/6sO5xYkU+r7udu3S2NiuLexZ+j0oUS98D9hfx
	 ltV/wm8ZigS+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A969BFF886F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789585368.7205.17331663551078728304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd333fd9e4c2ee916c48726cc356b19a7b7eea031f0365f1b6a61252d6db9442
Date: Mon, 04 May 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777895853
