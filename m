Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4B4140E4F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714236143; cv=none; b=l1KFXJ0feQ8YWTZ8SlQwAaVPojNfhQJhKW4RMVTD71mz0WDJY/9bAFLtWkL5aHads9nEEKFYsSAMJBfxZvlMG8Vq+FGxYdQd0Y9l/mKrqkl06OWhJK7dhExT7HOCXQJCjFXuzQCnRDO0m4CaoLlV9g+oDmzLqAzrAGqMTOOBKrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714236143; c=relaxed/simple;
	bh=FXwuH5SBxnI12Ym2XPCyb9qdyf4YY4tZcr5EQMa8VIk=;
	h=To:Subject:From:Message-Id:Date; b=TjWto9/PlUL3edtXcqsFAsGZ1J9vLZbG5ZVUHmBg3cByq7YH7u6quhnM6JqBTbcibjdUeHkZ/+PjSp8JjF5OtAMtwrAs2SNCfkseFMWUene+kEj01aKnJmFhrv/QRJ4ShpkDGb1b02ZudQe9UzEbpwju36xIBgDQHBoTuNi11EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZNlfzK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZNlfzK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8071C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714236142;
	bh=FXwuH5SBxnI12Ym2XPCyb9qdyf4YY4tZcr5EQMa8VIk=;
	h=To:Subject:From:Date:From;
	b=PZNlfzK4kqbF0rcah90+tTLiGcdiWN90WLVJ8eh9D8XENK+BCQ4P1eqS5TVB66Miy
	 aNSOrUVnsvZ90nbOE87WCO1vArl8+CnV8RdRLMXjq56uXkp7ASMQ4ZfdgR7DG6BnO2
	 5UaDFz+pcLwcduoF95ZV4LUb71h/brex3KvFG0yqs2QpgiWxjlZ9n6i9MmJXnbyMTc
	 14nwXzEce4ylrO8poYbojCmY1oLlNkuFfQgLRXeL520uB9wKThE2ymUSKgEQb5f/wj
	 OFGhqqBY3M3zD72pVW7l9NK2JzQmD8M08rmibS+kL4qRlNDBve1EERWG2K/wnTdcLP
	 L9uLVx6SBbsWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C413BC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423614277.17861.4616521186140383596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5740caa1b1404fa86e690ce056bedf2d6037a8d8b7253aa26a118461b16644b8
Date: Sat, 27 Apr 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714236142
