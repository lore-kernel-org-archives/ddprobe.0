Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4368B2147E6
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745317794; cv=none; b=BOmHm4cIJjpnsuI7/f/HSBVuFSlIya0+s6IAkfb/Ehy9/0Ys1susgPdXRrNEciqdkGab2qwvfd8BTnDZQcpSEvCmVKZec3kHecPv93nJHSudm6xibivo0cf3SQXIRfEoUdgF0sCT0jLInBsTVjU/BgSoRxxrQMWTeK173yFSRag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745317794; c=relaxed/simple;
	bh=sKI11IK3wyvJ6oh9FeIfy0CEnnmOzvYgYKd8dhPQpcE=;
	h=To:Subject:From:Message-Id:Date; b=ZmlYh6k9zHmjQ88Z5xgDQgLwkR22anvXLYUEt2aqxKO8wDoKMFpZSuvcbSArKQ7uxDpNtTkZGvidmDblhxqKm+sJzBvaZhJ/w2a1WB5IENuTK0AS4AQ3/So2r1vI/0iNRDzgTPR9gSqAidjo7Xy98fOfVB4lb4EHiK+KgkAaEgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxG2obay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxG2obay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4943C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745317793;
	bh=sKI11IK3wyvJ6oh9FeIfy0CEnnmOzvYgYKd8dhPQpcE=;
	h=To:Subject:From:Date:From;
	b=PxG2obayO7Lk3aZMWTG8TN5pJir/vIt0F9P2YrdjLFDf5CQKlq6rhehGxsdB24FP6
	 qoyIfRODvj2BrPsM7dr1TNkt4SzGcwjyf6hNLhtP+MjY9+xC3qcPl/X3TEK88sWgtU
	 8dYAZ04xzGxR+gdG28jAiMyLt4irJ+mYW66nfMRjKncTdUFuXZIia8BXLHNWiOyKYH
	 tZ9nOPtUC/8KZUqk7RiKMqozm/7ZoviTNPvtCxZ9Y0YT7kk2tGNSpgsz3fPCyhjRKc
	 pEY0IRjZYAFkhuboA4FDdQ7TmLr3jxaOmNAy2nUk5O10d+G/ux0v/kkKZVFdC3gPgO
	 8BkaMK6FAEWXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944EBC369D1
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531779359.17867.15362105899258102331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776a8b3bc43acf0905c970eef8857c72a4fe2de9e23e8974723e328b4fc69afc
Date: Tue, 22 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745317793
