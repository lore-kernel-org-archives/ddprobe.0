Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC791FA178
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749283193; cv=none; b=QMha8/BPaj1fg2s0c3jYhGiWo1hIkXxXUHgE7ZWPCBDGbqWeoL43LMtyywAZKsC28rK6kdMn8IlXvhz9+4qrTmJwDkhgmVGmRw7EQjs6uGNNMKhDNbEkYPwAItm/gnK8k7amy/m2kZuxrguIU+CpabImT3uM/OLpyu3EhJ7FrJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749283193; c=relaxed/simple;
	bh=INm1HBX05PjuBWcN47d9cJFg1BihCReAT31hXOSWRcg=;
	h=To:Subject:From:Message-Id:Date; b=oBks2hKLKzApqp3Q2Uyjq0vzSeQYRvhsnfvcwtXd1CNvDnpCAqcdZbCCQll/b5eBG3E73CmqdlhnEc3JlakVPk5xlczyVQAAb2+QL71tMp1uNqP0ok3pBADh6ZMwvyRMAj1v5YTya4+OIY44OQfhRyRG7lodDnq/2EunoPGMxLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCbCy50i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCbCy50i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1479C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749283193;
	bh=INm1HBX05PjuBWcN47d9cJFg1BihCReAT31hXOSWRcg=;
	h=To:Subject:From:Date:From;
	b=rCbCy50i3eejfGLstZEbnTs1muFosdPyBKLJrl0/5zsxtWFRCJou0zVf0MtYsr9GT
	 G9sj8SWt0TKAMklY3ovA1opQ3TKHMLd2dVF8lG5C3EEH0CEX9fmJiZfeNIBe1W0S9I
	 me2TU5qCRZ/K36IiNu6R3ogG7Fw4iZjBAINk9OIp/OM8EekxxmRPW6nMs+7dId6VFn
	 300ANvtINuGB+zTZvyUq5uh5Jme4/hjb8D8k9+61H4SsIxg1cbgLHB7GppVfxaqNS8
	 HJjEHsQadqdb0RuCPNtr/cX0GSIwVb6MjArzSR+Gch2j8SD2zE3v6/LhBox9UKsXdv
	 jyS1ZrJNyTvzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28FC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928319357.3266.5770566117331970304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8363c6bb3aeeb68fe1d1d96a39df0485f60aecc56461c1c6e1c5a6c8df0b7bdb
Date: Sat, 07 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749283193
