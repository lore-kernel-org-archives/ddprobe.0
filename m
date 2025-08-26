Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2489D26CE04
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756220994; cv=none; b=tQNQ9xsS85fIJpCG5vRna71/I6bsN43u02157AI62txW8KLQxpqDEr4auduetEl9AuWf6oYnx8rqLDaqXBickSdYsvo/Vz+sckKzrwFSnKBa8rtI2Vs/7X+kuI62aS74aQzcO8SjDPuBkuJ11NaX4un1DRg/FiNAx++HwJcGYmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756220994; c=relaxed/simple;
	bh=PkQa9Dz85qy3iuA0xAfOfBGvugR7VHlPrr8ZbrE3TH0=;
	h=To:Subject:From:Message-Id:Date; b=XYLsSdcM9TeuAi0u7NGL0vooEt+U9vFqB00YhmZkrfiXHQFK0PQxX9wDtHDBROiqdD6LnadWvt/itV1yprCDWk1k+qa+BuHvpUuhKeB2ee3a+dDPHex+I53fa6phqS3g+w7RULWVJ32aD9anrnojkyI+k+QesYyB5CD1S+/SIP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeDpcZnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeDpcZnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B15C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756220993;
	bh=PkQa9Dz85qy3iuA0xAfOfBGvugR7VHlPrr8ZbrE3TH0=;
	h=To:Subject:From:Date:From;
	b=EeDpcZnSgcXhDGdTapikushYxC3/o04TqVIXlVjSw0G3jr0+QH5JMXozNL3lOXUZS
	 NU4XvAf/wFILPizweAsaRl8MP0+q6R85hvbvoqzVW8RLWxegc6BeRP4FRKaN+rA3BI
	 N+rsa7Pv6zWsm3tUn214XU0YQ2F+NpO9gMoHEaSOt6KemmQYHQyWq4rRiEEVd2/kuP
	 z4C7ggnCNsRWJA9btLhax3sQq9hFdxBcMNsUxq/Foi36SKibgjiUDQ5bkeUXpdvZ+s
	 oNE8keiCJ/HwbW3Dv/GAPUjmubTOkdlqg9EXf3uo7fBF4LsTLB6rQc9nsOTL6EgkTj
	 KJo99PlmAnVmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91407CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622099357.30233.10344884724638561864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e407f0cd99967b02be0cc2765614a30fdf1d014a83d8eea3c346b47fa1b2908c
Date: Tue, 26 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756220993
