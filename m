Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C32E1D53F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 10:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714042283; cv=none; b=Aesvomj4JI1reOHMCDIB1p2IFPZQ+ewCYIa/BGMSulFORvXtE5OeQayU9QR7AskOCQtyV0xsBf4QRv9guHyxXh0dSK69ftS8Q5wdkBRgDMzoiM/clWpAHZhUJA3wOZFjXcyEX2q2KtaBcpDpN3k1P9iEZRVqp2qwQPqizsDZYZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714042283; c=relaxed/simple;
	bh=P4QNxoWnYaDjkud6XDawkKGziAWn558WE5iIroMAro8=;
	h=To:Subject:From:Message-Id:Date; b=JI0F/Wj2E4FYJKrBu9eygShp/WVkA/Kzp+E8252dpdVB5C733kjQbfK692p/2yPExuydizUYeHE94YprR/VgWicL14YDO7RPWseE8v6fPTk3WbgnZT8MDVOHyo+Hou0ektwzL4sKZ6GkqbX2l+eIWIER1w0TxQ4HH5RmxOE0tUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Coy4bX8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Coy4bX8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D477FC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 10:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714042282;
	bh=P4QNxoWnYaDjkud6XDawkKGziAWn558WE5iIroMAro8=;
	h=To:Subject:From:Date:From;
	b=Coy4bX8xAFyurXdkYd20+Sg50N/+K8DSXwoqlznfB12N+gCdV0a2+vM/aaSl4yzZA
	 p7zLdR2ArSKaNaYOxOowxEubWLHZfazF5zw1OyiVxW+mygXeSmld/6OnObYXiyvieF
	 uzpafN60c8405k4rCAzn0GdQeZU+Pi+pp5yDVTQujr/jA4dIdCZAZjdNhCSjZpVhZ8
	 8pJRk2tSb/bWee16KqYS94Cwsxt+pTkai8SEVNloRLNn8PSXxHKDPNTOV4YkMtCb3w
	 E0vI2PkPAeqJVUG4ho1HoVe2mEbd9zqASAQnHGxatqT/Cv9jJeV/1Ku3Iu5gAq7gFF
	 DJlOmaAtAlIaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFF6C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 10:51:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171404228277.6769.4434037103436170777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45459dbba1d2e31f9dfd200e3cb4d1c8c0b4a600fe0d0b09a3bc6967bd04a557
Date: Thu, 25 Apr 2024 10:51:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714042282
