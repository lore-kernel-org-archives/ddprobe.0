Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6F0175A98
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779579754; cv=none; b=XrH6Q4ALTN98LiBV6WFptg0mNKW9D44DTQqTG3ejudADHutMrxD2i4Ooao6pPTP95uck2FdePh/1lErGlEoDkrVXo+8heDofOTERZhiJzbibKevt99EcrHchzVEGEVzBcmo8aX2QgLCQyAOfbjdGD1DJXXagcBFLmlCYl7psdh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779579754; c=relaxed/simple;
	bh=6Pj3aZnGAWfaNzBqXNEfkFBZ3jSiwH8kmJ0C/mf39AA=;
	h=To:Subject:From:Message-Id:Date; b=fix+QogP6OgM2qulkf6Ng3Y5Dz/EjbhQY6dFbEr69wr3QScJWyhdY60qfQklBoS3/ToqEDEqRMojcNNEFjXUrC5roBwQ53Pet/YGCLN8DHOMd4sKBvi7D+9bCTNLaPAA5tjiFcdYXzE2Cx9Kb428ESDyj64vYMUEMWkxX6uRA94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F01XOkXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F01XOkXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA634C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779579753;
	bh=6Pj3aZnGAWfaNzBqXNEfkFBZ3jSiwH8kmJ0C/mf39AA=;
	h=To:Subject:From:Date:From;
	b=F01XOkXde8+f1T4sGCvHz2PrO5OCJuIJOphs5cvs6Sbj0jE8MsQQvWvmoZhMnn8+P
	 cjctRUkipPxx3iqni9k15RNymbtT0FIJd37aLzh+98YyHN4Q8ivnr7eIyG7nSGSDKt
	 fkF2YZs73SqGZjIl3GjxzcADR4Z0JpCwXF2ocoSjOhpko+U13nhP8n6nP4FVsCOOqY
	 qE9A/p5Zw4FSsTesoxuoYwntJd86XFUDDsR1UeccJ6lTVuITm41/EQU0Qkzw+BnI/r
	 BMoZIzal9g9m5/AsOBsD3PIoPSaPBydaIZlmfO4fA53Lw3b9IRs5+hqKSBDt5RF9S3
	 /4K9pZkZD4P2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A8CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957975368.30337.11834360647215980110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7cace93083361729be3938280c92457de5e59243499c08d55ab212000db5e4e
Date: Sat, 23 May 2026 23:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779579753
