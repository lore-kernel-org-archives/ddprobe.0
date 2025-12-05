Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FB534D384
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764964974; cv=none; b=kvpPwZFSEhpz9qDKdHCJ4UlLuZ+J431au6gfQPFUuhDBzPtA+J7MbqNcM8zSfRugpaB1tyHw/l0OhNPTvpKvUkzpX6hqq56bXytV8xb4OjxrSfCmrummKer/id9g6QMwJsMUi0BP+qEi3o+Hx5KSNYJjmUW2bD6ry5I2sLAc/h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764964974; c=relaxed/simple;
	bh=GZjI0tu4Gc5Z68Ie5gwOR42QeuOazQvxWLMeh1NKOV0=;
	h=To:Subject:From:Message-Id:Date; b=eOUTeEBygxxGJ3GMYJS9ndQrD1xxN9BcASkLMupQmyCdFVPsmRvd5ujrQ/M7RZMK4K2mx8Z/RHRV+gMjYDtaRd3+4uNTCcnSMdz/n5n1xtWDJ/T80CumoXiL/+EvMrWGaEGl0rSAq3f/FjTBHHmJafcxh/y7R1e/e8RN+70NEpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tc2U967t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tc2U967t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9034C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764964973;
	bh=GZjI0tu4Gc5Z68Ie5gwOR42QeuOazQvxWLMeh1NKOV0=;
	h=To:Subject:From:Date:From;
	b=tc2U967thZi+Nq46E7V1fBL4a1o4ihB2MQeuRDpINbWywhSMFtdZc5K0O1JIVkUNd
	 MVOzXrC+bKt5VGxTb3voxUVgV/cnEjF78chlpedQGl7VWxODDiepuLYANj726uNxzX
	 1FbiIK5Qc9cWaRcyqLd1x26Ezua0LNizaeyDamvg+Lypi3SI9xvRHIx86ti5dXbn4U
	 dw8owtpn3MVOvOTOm6hl5jhVocqn0vniKOCtHFpCvsZO/EiO4hMalnclqGPRFE6D2T
	 TZ8tOWCpPRvzCH832V5HkLoz6FV6Be4GX2RQ3I1jq+ll2a6qVNzaUDymQnnTPNl50g
	 aucV1esZJAzhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95449D37496
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496497359.22375.12863762745091624221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd96861e89435c40b2d93b840edf533ee2b89aaa57a9f98cba7723762913ad7f
Date: Fri, 05 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764964973
