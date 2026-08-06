Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D19418375
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786048234; cv=none; b=QK+gwpHN8KCqB+ZqgU3qLgkJWq5ghJ028OEy1+DH05ES9ndG6bUZNH7B8nQPOcaplyzyFDgfN3+8IRBza91ZKAAhTKg4ER0eX2Ch6qPky3WiJcv+jmVmA0cYEJGZAZ0pwK23G2gv5dgn1vaXY+NvLTVOYj1+tXlUSenNWVv98Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786048234; c=relaxed/simple;
	bh=BZ74Uhj1JpmWnr9j+3Ryx3GXd2OTNHzXnpMJHY85Dcg=;
	h=To:Subject:From:Message-Id:Date; b=FbNAH1kWQvGNW3WdzBOxoE/+G+cbIdMnSeC5K9czFN1vsjkUYlATNPA6gv1H1tWwEh0SkUJDC/2XsZJRJctG/Q95oJ+37z9LxhN8sXZRKYfMuBtJGKMODS8QIWcSaJ7KzhDJvGl0AK/0uscyiQWMMB+0xtOClpeL7U8HNTJk2I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k99sl3X3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k99sl3X3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04EAC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786048233;
	bh=BZ74Uhj1JpmWnr9j+3Ryx3GXd2OTNHzXnpMJHY85Dcg=;
	h=To:Subject:From:Date:From;
	b=k99sl3X3mB1NbrIF27hg8XPY7Nlana2F5f3+b+PSB2djBROfUZe8qjZbbNcc4Q4y9
	 vc3heOhpFWjGEHupbIzJlProta/Crim+NXVej19WUI0qRqsUeuRY770EK5YQxdMTHQ
	 5RR5K3QFR5bXvHqzC2Rq12CIGA7/b6YKRJMXtUq0xRyZUMxOr8U3JOh6BCfMPMFxEf
	 urGIEmBTPv2ORwtKGwM8GG6ANbcb6YcNbpEbCbTlAtsvPwbJbvOueYQspyQep9jau6
	 f3+HhZCKGLdjJyvcALGoPvjL7QVjNcmrWa7jFIm/NQ3H6OgrOE3QOPBVTRfoVfTl2w
	 eOjSJ+nISkSyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1BDC5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604823369.7223.4282540390535506294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270c93e373b33ee4ada4daed8a2f20affa622faac8b0048b5073505531f656f4
Date: Thu, 06 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786048233
