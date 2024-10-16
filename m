Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C90216A38
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729107354; cv=none; b=m1fuoYB/BChjLSHjhkfZOE9WSVOx8UEcUBqtiVOeokQfbcBkCfixBE+UMa0mzp05L1LuT6h9B+Z56hnKsrTatdkEe3SC84YKxg2AxCatXtPssglwQcRjkZRv2SrF6RfIMMJZ06kCYzGFJn2JNW53uhwrc5GbQYZpj96TsTdpNPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729107354; c=relaxed/simple;
	bh=6zSmD/1Qg/tyS86hhT6fNDaapukzAon5AKJt6kjW7k8=;
	h=To:Subject:From:Message-Id:Date; b=Oe5U4kqxPo5SIffEfR8+55vLdTTXhWIjwdwSUNJ9gEXK3q9TF39CCF8p5Lah+bcf5ZAjMApdI/haFaHkSMN1yZ8R9UatJ5vrOFe02G5b0bd9RWSc7U6Io5Wbh40shWV85bgwhdRNA0fDw/Wfbx4tYENVAqrwlr0fYmDYnz20HF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxD9u9Z0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxD9u9Z0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B57C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729107353;
	bh=6zSmD/1Qg/tyS86hhT6fNDaapukzAon5AKJt6kjW7k8=;
	h=To:Subject:From:Date:From;
	b=cxD9u9Z0SYdyn4TZQVInVhtMKCR0DC15wKrZjRY5LpzseQ27erfRGKGJS4oppFIbO
	 P3pP5yZWs0iba3AAIZv64lyBBY4xyeziSvgLv578s9GsHJGL/G/t52pDhCD6XvyCPw
	 OoZBDBSJpjbVq6SRBqBlIZQz+VkQAfOon4Xx7VP97CUR8w6dsd7eCq0zV1XYk11EcI
	 xNoCI/eCg64k1LLkXfHtgwYRwB3qVbWunZ2gJbNumTJhvZcguhygThhI7ePf/BaN1p
	 SI/BDtMHPzDcM+JfYPHOdrtYAheSse7RiwN6+hol8611V/qXAdGBMlrGZx+i4Ckgtx
	 jRaUJJLqsxjsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D1DD2A54B
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172910735360.27698.605862660292510010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc75398681d9cad7222672a15f6c8e02ddd8158aadd37d298930bf228eedfcef
Date: Wed, 16 Oct 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729107353
