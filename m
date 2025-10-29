Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0D1224B1E
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761731994; cv=none; b=ooWNOfhurgyLjqx2in0q3uou+/xx9ahKNBYzbIk/lGZcBTbUKNQH7vY86sqOalLpfFUhb1bxCzsY7g5GHrWeALPzw4MZvNH7Rcn8CwBvdVEJMpaoBS+iywP+dVErGkvvt9RsMEM+3T02vWLUdLkFcd4Az58Cj3lAfa107Mw5IN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761731994; c=relaxed/simple;
	bh=IknCIx+i7I96dTVk53HOeVqnF1DZkNRplsDbAUfL3c8=;
	h=To:Subject:From:Message-Id:Date; b=Tskt62iHP6hQ614KxfioxRzKJ0mXGeFuvz/5DI/0+z/5MUc2PHNb6HrUZSGh6u5vLzO3MDUjExw1le5VR3IykYNSX4WBJSBu1pCRv9aKfpOxI5BB5CqX134MjOPmEPJykf7SnK82lZl7dT9plnf+nbfyOs+CMYXH6052iiGDjI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7SwewlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7SwewlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CD4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761731993;
	bh=IknCIx+i7I96dTVk53HOeVqnF1DZkNRplsDbAUfL3c8=;
	h=To:Subject:From:Date:From;
	b=X7SwewlRjW2nWUO2x66Ay4gTDm16X+dh1AU62yO8pxi+eLqJrr0R28VDfEuCxxAp7
	 NpRiAbj/elJ1iYsqNzKxmzmrhh1qySXwT4QPFL81Ejadzi5mN391A/j2cgJKqoEQ+S
	 tj0RMd+PDYcyB1PlDeuYoKh1kO06A2BmiivAyvldzbqPCWHPaX3cluxE/v/gfnAbts
	 yDWokU9A/mlnOJH/Fb2r6cg4qeTCk8XAnyNxWAUyTn6/HFTqeoTLDbRuqIabD/EI+m
	 Xiez8MY6QaP+m1XRnYwjZtrlgh3/q8s+lM1gVUOQIQ+4Myl70hnojqnwuE+uCnd/BJ
	 b8WNqkmGjHvyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984FACCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173199361.21271.15853653717137251278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54be6ba9c263a0fd2204a31c5cfde252dfb130f16e1731726041551436102adc
Date: Wed, 29 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761731993
