Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F084E3761
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784048314; cv=none; b=PH+UTDq/OJvKSmL2A8NAC6hmpPyEoB6x36ILxsDeEdw6wAS+aPKU4dwrKrl4dqTaF4qLwtLLFIxutkiJu3Ill5j46l63NqTWDKYeTtWPI9faxc7JCjuCKVlklE7qZstVbg84yziPm2T/gp2v3ueEkxstswniEQIepsvs6qdO7aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784048314; c=relaxed/simple;
	bh=4Z3ZmoiwfdyCH1pEuhAokT9SgYDnnhAA/jNGE8W5fJk=;
	h=To:Subject:From:Message-Id:Date; b=VGLiulfaJrWEhgD/bJ5dXMZcKAtzZyvOXY3VHlLcitVdQr3sYTL2at47AiRptMcvP4WwFtCfp2PIfZZh44ilUd8+degKiCSYVKjuy8bvR+Fb21xxxWSptKZFN+KKe+/2xzoS8ouV17jg+xTx/ZjAzrerHt3clWOvgrObVCI1TPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMdgnY+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMdgnY+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B26C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784048313;
	bh=4Z3ZmoiwfdyCH1pEuhAokT9SgYDnnhAA/jNGE8W5fJk=;
	h=To:Subject:From:Date:From;
	b=BMdgnY+BAslhrvVBtWi1gP7EqplYdQ614ixz3aZnzufhIO+9PVybSkOb7qJG+7pkk
	 ze9EWcQJwVirE09X6VbfpnrSnrD1SvatBrpbcRLMsulyoisGzb1ZIs6ZQGsGtW87Mv
	 E1Z3r6Lu28wUW6+c2E+H7KmMWPd3dak4nKKCAfcOUjBL7BR+NS4lAO9on7gRuIVl34
	 8fHpqrfXb3RMuXJyR67t+uLI/Mmb6hEnEc8gLNS8+gRUC7vXv3xWZMC0K6SzXklBbB
	 HyA9aIt06u8FbYpJYtZIgeCIE0mua+8sn7aUVv8uICnrTsp5CBXxwqD/K/O7WUdUT+
	 Mdiy5Etj2QsFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31ADC4450A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404831372.18739.6303844884880717093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d51d9a79770a7ce882ac4c3c8584c2d174d8cf2d39a07519dcd6bef82971d7d
Date: Tue, 14 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784048313
