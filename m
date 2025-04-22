Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5FE1EB5E5
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745288993; cv=none; b=XqapCPGBi3bdpybZD5Z+5AqDRtXTSGanI2ePW6CNUNU+P4AfPg21/9UY2F+gkNji2ub6O/tH/mll9tVZcpxmMPq5PzmXfELIiHqaGZEQXIP4rSDI8efdZQ1LkR8uyIEx+avAaEK3it08ZorxXEMQis9ZQQ6BCXjQPydLahhWObU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745288993; c=relaxed/simple;
	bh=5TLPgqLz+G/3b1Odvo4h/fWWG5XuZr7wjDSlOUIHU4M=;
	h=To:Subject:From:Message-Id:Date; b=IZ7VTOKl3tSeYHGuY5BZLAOUToT5CSskEY4NC3PJWogS9w+qVLujpKNcs0UZEvA97yDdcBITVOoQ0+XfK0S0E4OrKkDCvK6GtiFqczT8AbJh3dcZnzFo528cy02ZVnZ9ezVdiDlE9YnFyCt4Si2KfLQZMpa+gOc66wc68B2LdQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaiXwyT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaiXwyT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA670C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745288993;
	bh=5TLPgqLz+G/3b1Odvo4h/fWWG5XuZr7wjDSlOUIHU4M=;
	h=To:Subject:From:Date:From;
	b=OaiXwyT2ntfSFhu4GijCk4uSdK2vfH8EI4XokbtFwffN4/O4Ql2eudzM07g7m8Km6
	 sip43n0QdM+SA1h16naqo+vRrqXW/0dubTQSWPrgQBBn9O4t8DLRHZIE29yvYTmD+S
	 /NcZJPe5F0ps44PtwWem7M+Q31SNWNXxaAdXcZzlNkxClGO1Dmx+iCIM0OjlmT89+K
	 NB3p3xSEYHhnIC+jk66q7EtFScD4z8e9oiM5uK3aD2XIWEo3o1Z3tnGtA67NArU0WK
	 pF7RhrK2bC8Z6kADYca6seIJWOaGeLLJGeeS+fLy2Ply52X+NfAla6GP9qFjmGjIR2
	 i4KZzSGxJETSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D7AC369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174528899361.7516.14847985969952333677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d44e350ae07839ca4d914d7b1d89573708116dc651268fa4bb81206ecd4228
Date: Tue, 22 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745288993
