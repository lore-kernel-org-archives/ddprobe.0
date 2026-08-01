Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C49369985
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785575434; cv=none; b=TdOqTjD5ahtAqnUrK6c4Q0oP1F8epiRxgVaIftPqNbH+kNBvxEZnw+IxY8Hk9JJPlXn/+F44DO7HgvDsnvC0K0O0wGJIzMFPoJBPiFA1uaJTLk6y6VtG8YWx/NiVBjk2RaxfHH/0r6plfNYTBTIzXXG431haz8PnR6fzSbSxqcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785575434; c=relaxed/simple;
	bh=msCFdi3j472vJdP7QK2TK2S8Q6ddkh9gs1SaA/ry5qI=;
	h=To:Subject:From:Message-Id:Date; b=DqurIpFZZCTbiU7Hvk2POd/qbkRi+PqmUW2b5UiQS/H26xHg9y7+ozsncd6hxd9bqhTAIGamxi2dH4ZWfYwG5GI4J9aR5Ly4wrO/zwPSgMmtwQ+T/AU6SG11cJoo7MPhtWqLfstS8UkdzbBniQF1TZO/RIC5Ok+/RWKY3JZwdQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGyWyDy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGyWyDy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE2FC2BCF7
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785575433;
	bh=msCFdi3j472vJdP7QK2TK2S8Q6ddkh9gs1SaA/ry5qI=;
	h=To:Subject:From:Date:From;
	b=fGyWyDy0DO8mMrNle8rluYs33ovs7b8Ua855CgXsdNCHjKC6/z2ftzFDCTtRvgJKf
	 e/GggJtJs37tJFMAMF2O4eyVp4oatEjxURFoWdVqkN1Ir5mExDbKSVQFwjJT0WTgIr
	 v5bPrJVr9pBxrWYuuAmaBSsC/cIHcJgEEU9VfWIBjCBQ1ZfRQP/G907WFKt7u6fURh
	 n8aS5Lzq93i79oGEqfunoVuMkzqiFjVA1TBWKuk82nHX5V84CnWxpAqQPQLmnLMOlR
	 s67GatpZ0Yq9vFI0KgSHbz4tzpfkRS9odIwSPXlyhLOdpuISLtiBWfO+jLrj1Oe4Ut
	 jfPW9zKOn5jDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93F8C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557543368.18417.14607690482166893877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0af3060a82fba6bc19a4ecaff11cd0bc0c0ca45dcc07c8e2031f4b038759878
Date: Sat, 01 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785575433
