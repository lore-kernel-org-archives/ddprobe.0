Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377EAEAD8
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728248154; cv=none; b=GCZO1Sz2xv87qk1zOCJVj1CjpyaSiRO57U+lrTn6ba4JE3GUhPpQsTPobEVd6gzoYLtRRUQhJeKE+pmFT+dnOuxEopTydrdMgniMDxErdeuIcPqAR2BwcakSzglV1FNTgmxn4UNcCf351Yx1Hl1dJD4BN7992v8jPeUrlM3id38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728248154; c=relaxed/simple;
	bh=Gl3BJ8cjE/Jt8PoC8usmcA+9rtvuC1GY79HafWJlruk=;
	h=To:Subject:From:Message-Id:Date; b=KYADNU4CBn3FTgLfCCFz1O3jXh4ncmHCq55g+1i9at9RpVqIJ2hBiw48p+ZASVmyhC0dJtHPc+V/xrU9Gk1vw6wA7mEh8hDmKW9ozNNV39Ez1NdeFsAYqQfcr5RYljdfMpD/nwcLxtlHN+EM4GVDeyBF8SK+DC7B6gva+OATN+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUxQ/XUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUxQ/XUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3BFC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728248153;
	bh=Gl3BJ8cjE/Jt8PoC8usmcA+9rtvuC1GY79HafWJlruk=;
	h=To:Subject:From:Date:From;
	b=iUxQ/XUlgStyXr1U33ii0xwztHJN4t5ZK6gToplxgeMwoJHb/x3I0vg+Dfvz/Zheu
	 JJ8yre7YQ9GhR/YiyCc7FCQOS1XrrWhQ6hSPaqyEfUo+OfS1BejWWtYkmwVbhYPEwo
	 oIaPF3PByJEl103pyRhvLYKNfvORzKfQdswtcyouopPm3S2qnvDVNcbM5OcJ78Vghk
	 suNqXQJ8zZYbuJjNgSW1fGQlEjxy7RcpN5BNc+nN45WUaD7CFq708bJFDdF+A1RFaP
	 SeQfHtR4wslSoSvJve1gXdS5asxJlQjJ88mKfv6koqeFuMoxpm8W6w51yMJBxe1JqY
	 dAQP42Y1IyH5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBB2CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824815360.11925.16945827768115470638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616c1a29d79f75fbf38f70da939d25f002c8b49fe9ccb8d020fa5b500f83b99b
Date: Sun, 06 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728248153
