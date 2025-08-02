Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D8817B505
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754166594; cv=none; b=X5bSeUAw0gbSOObYEoe9Z5VM7CiyLmZhKjU/vM+V7KXBs8baFBo3ZF1G/iQkt4yo921OdVuuIzhUQo6k0xeUYz9BEevFLNw7TO1D8tIQN4FHEpEtQELTUd5edT8rzNRBu3af8ndX3LFO6CaHQSMbqssWP6EPoyEh/IXELSXDs54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754166594; c=relaxed/simple;
	bh=BJ1snYRJBgSKurt+jJgZXHBGzLLY4t7ra9plaBj7NtE=;
	h=To:Subject:From:Message-Id:Date; b=LC1ADRQnBaqIHePivzO3Fx/qIadcbLo3LD49gV6coRCKlqIztFyA4qIOvYcELz48KLPGAXOGbXuOuYCzXGmgI1V6ZQ0VMNkAvLMPY2pjUbpcKEuk0BHjhkzfjsB8EkmChulwRKsEDNqwa4ZlpvLuFFKUpmB82gECSq63znZslY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egjgbilx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egjgbilx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DD1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754166593;
	bh=BJ1snYRJBgSKurt+jJgZXHBGzLLY4t7ra9plaBj7NtE=;
	h=To:Subject:From:Date:From;
	b=egjgbilxy/WTnVqgAsBDQ8roflDmsC7Px7qbjdn1mG7K3AirZi97kSQPjfovXhmGs
	 cWZQdNTzUemP8IJ9IHyP/0GSd2ENYSmeiocgvccLVGsiE7OM9u1ZM6I3waBjqz5yn5
	 1qHHpUykslZCUeIHRP27Ro0tXZebN3uQJa/L0FeB3uyx6EOaR+8ENMxB9qO/sWeP1w
	 bNMDuRBIk8n7wf0fA18vmeySdJkW+fmraD8xXOkGrS4kHOhFLKvcKPxUXTlyB57hrY
	 oZrhgqctFspAc3dnOixNaUMt0TT7/wI+6CPeRMKS9pfCcYSCTrX+sAXLBSTauL1itU
	 hITS6PSEx36tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921C6C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416659357.19113.1636804948990887855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2cee3308f357deb41d73b0d618845624eca46b0f5d8f163aa3303acd63e32c
Date: Sat, 02 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754166593
