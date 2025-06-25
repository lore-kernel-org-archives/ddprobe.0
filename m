Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27223269811
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750862394; cv=none; b=TrvMQin1sF2yUnb3rXwTmvTkTxx6Ohm4AnopEZg5Ln6TgpBIje0zvJ3yFypgR6I+g6u+o96SGl5Z7HggwQ4Is3dryx+Kz+45cl+5CCNsBlrInXQY4Kfh1wAf7kcDmH0019sA+xKdcNVfg9aVdb/rM86Tw8a53R2N9gKaBF/3Hhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750862394; c=relaxed/simple;
	bh=0KeQHqsvSJRxwE3zkqZ3HLByDLBcj/bmjFYttb4Qllc=;
	h=To:Subject:From:Message-Id:Date; b=LSD61cmv2fqU5OXfci4bnDRUujaqwhw0Dhp9EIfGikZxd4mROGurXBL5w9lioiDk3uZ9PDOxSBUKNjiYBNtt9Kx73vsb1Dieq3MXGqAeCoc4jokYvu/pL//VCv8rtrBdQsMPoXCqfDZXSX3mPx5FbWmOIZGNrQ9bTXjdh2jhR7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aelNOX4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aelNOX4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F17FC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750862393;
	bh=0KeQHqsvSJRxwE3zkqZ3HLByDLBcj/bmjFYttb4Qllc=;
	h=To:Subject:From:Date:From;
	b=aelNOX4fSlFd61XniYYS1MGQi/5981dDbsnGuturLMppNY7NUKUjfgCrv964/rvsa
	 XdXgs7PB2uqHk7KwYEJ0XaKXb6ZwxL4mF7pyIkilGu3sCvT/U/Sw+us5tviVdqA+Qb
	 e1d+OxFOKKXoGDBIdqXaYZA+hnbA0GGev78juhX/QUjBsWnFz1jXTniN7CkY820YN1
	 xce98bx0FURSvjWzF9o3Ajd0KY9P9bHUrxokuF0hHB1gVJRLScePd/QelW7FXKqbyE
	 QtVsceMZTQZjLj5Sww00VuhbdrfNtvQ/6bZHB9fhe3vdsSkE2DDWFPx44J5GcZe/Qu
	 +5r39j7QKOE1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11CC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086239357.32363.1510147598376948224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7442c7d77255270b3c4dc5a74637814f66750d3c1bc9af0892fdee55875c02
Date: Wed, 25 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750862393
