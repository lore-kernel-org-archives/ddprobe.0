Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A6E3D6A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721729754; cv=none; b=tjJPflfQ/ObE4KKVKbGkU41npG7XcxtZZXE98Lt0qIM4Ivaw+4lNq6yZPwkUdZHU9SjzXg1pUM0ApZbAG9XH58Xkbp6pvNEctXEOH1eo39iPAiKlUWSVNqhhORvHDkEwKFHI6G5bHtbTIbniTbPwOoFZVQyP87IEDPr3YQy9pGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721729754; c=relaxed/simple;
	bh=3w54sImpj4IeO4iJAST1YzaDf5V+ixPNVoa1K+oEvnA=;
	h=To:Subject:From:Message-Id:Date; b=DTT8V78ATpuBt7CwuH2FcutxcpwmdFjWSq8yxNVyAAvqu6LGJjGYDcCg/7eOq2GISv7jeBPqaDdFM10XSKdvWBWtUZlzTorqDLJbCzEK8uCr0NWw2gFDaphLW8/PhbACJaI3cS/GOUWzJfFEM1jo+V+Us3S7Ns1rpzq7vH7p6zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2sihlLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2sihlLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A931DC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721729753;
	bh=3w54sImpj4IeO4iJAST1YzaDf5V+ixPNVoa1K+oEvnA=;
	h=To:Subject:From:Date:From;
	b=l2sihlLeye421xdsy3gDvu1Fu5kStxiIID02+t6cLztSkILIrho0kIlCyPbMUVE8e
	 /GeqtJQsKCpj5ZW2PHveOiD4yeZT4/HoNElckgR84eQZmFufbyio5IuuMSOWt7Gfdl
	 xEB0ZYy4juvdQBMzjoh56LkxVbZW/UBRPy0aSNQRBgaHTWq6XfFnO5VD0kthII6cYI
	 v/5uJpYauJ197Lm2oe2Rg5BmGgn0JWbbZWAloLlmzH6rB/dYtq7DIUjc5OBDtnCTl6
	 CXM/xlgQZ/eCrNYplKIl7xAZKJKgWt/2Xz9TZP1FXbWRQ+HIFQgUUHnJM2mw5J+zem
	 HdK2m4GT5bDog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907FEC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172172975358.14093.7894149530592783132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa562a1a4fdf3cb014cfd9deeaeb784a94b8b759374cfd1c12ebb4b6ec40ace
Date: Tue, 23 Jul 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721729753
