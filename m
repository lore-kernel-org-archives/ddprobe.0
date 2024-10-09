Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279161DF726
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728494154; cv=none; b=h6E0/lXhpFvVrS5V2l3D6yDJ9HQd7O34EiCwcCoLAFsprYMBI2urPif9DxM+TL02akl+jTvpGmfJ6yW6/7TbeZpQyQkm2rNO6w2wnt1i4w16wlGTcvxaZMgjKi4/MtmkPhOPnbBatjVF1jYgbNK5WvpMwFWK98wwW+o5rULswXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728494154; c=relaxed/simple;
	bh=1PLfTsmq8EwYc+ILQu+a8RLDrGatAiC+8DCCSljO46Q=;
	h=To:Subject:From:Message-Id:Date; b=Zvh11WAEzmXjVIRblRvqTOeCtTnlsbcxTM6Ai19zbQ7N8JAoizD2QfelDlPyQwKEQNgetNsYKgJmmBgqLPEWYQXRHK0cH7RE7ysuzjrU2Uq4FxaZbD9ZJy+3ADpat1sZZZsv6jPuOC4HeLnd1qE+d/yjFcrDn4QxH/YbNOVcxkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXjmbjck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXjmbjck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6977C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728494153;
	bh=1PLfTsmq8EwYc+ILQu+a8RLDrGatAiC+8DCCSljO46Q=;
	h=To:Subject:From:Date:From;
	b=pXjmbjck0VBj0L8/kJ+3Rw9/i25RyfVvdDMe70WJL4Ya5LGYmi5LHLVOX6dbU03Nv
	 WofAq3nvfKcuQaePwILzlHDi+9EL1kta5npbnwUPd00bfke5rzAfwyNkIYcXsw3YaO
	 h2K5Z7Pkcf8qvNFh59ORwrnOlISaISFyn13tUMAXQyXugealgN9a0Cks5BUEfK5pTa
	 IzwZDaaRXy1hmSMjaNAyZHPPK108aQjMc8aogFOOz/4U3i10fd5QDPbkf5lFtJnmD4
	 m2pj5znWLKtDHsAbtHBYntvSb5YNWuLBFOECL/kzZKh8IsGKRvVBGaDzVJhsVjqDtb
	 m+g/aWEsttVTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93629CEE332
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172849415359.12747.6223786959062398308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8132bd60abc4dd994e8709d519fb6d6c6f1c41b621af75068d909fd92d7af34a
Date: Wed, 09 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728494153
