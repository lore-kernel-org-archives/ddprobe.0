Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8C11B969
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723221354; cv=none; b=F01/6DBc7iFvaiG/35MUFxd4AL+J99WEHLahYaF6Z2qVgqJ77QIP93bB9Yj7PBr4WWGZ3vrD1bXNCCBzIVUVwSwUrfo+AgFCvqQ9bU0AiJ6zVKs0+VAPxAd4lCo7NmZlYaxs24464xOrxfWPp9hZ192LR5Aq6tn8NpzxYmRI/5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723221354; c=relaxed/simple;
	bh=qJTiE4s/9v6VbgTm4bZV2bRl9tSAoMTRB9sE24s/DSs=;
	h=To:Subject:From:Message-Id:Date; b=Iwba3UJrp3C29lfjSwMWQ71oXE3+mxs+eKLReNIMNw/fGJuKcHCjQFzAEtPTlek6o5v59uTwq6DTzrhYGhyzRzLqOKeGyx/+zek2oEs587CMcggsIPWapeuSqDOzFXrrKy9OWTlCt2vP+GydtRArGa5Vm2GHu2ceqhtzNebfudk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7+llsKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7+llsKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18FFC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723221353;
	bh=qJTiE4s/9v6VbgTm4bZV2bRl9tSAoMTRB9sE24s/DSs=;
	h=To:Subject:From:Date:From;
	b=t7+llsKNG/WUWM6lLealAcUZ4+FXBCMkwCwJ67rr9JWDFrNebImzady98w6gL/z5k
	 NTxwP3MVH3/G1V6BEVu72kq10+1P3Ducw11enZl75aobHo2L7OV2f0sl004vwzQvwN
	 HSveNa2DINHWqTcaFfek56mUt51gW0jm8jqHskzWhHg7UlbK9JRzuVTmLywExrBOg2
	 QTdwutZBBsy1dj73W4o7FrcQlBpmmAHLQQ2lEqjrRnkq5CqoBMNG8+yMTU5UaYjhYG
	 HMdcyd52BdCF7yG/1FSs7mdfZ25vPxrKgIHlY6PPX52jBcj24djHk3i9+xpWkuo6K3
	 x/q25dCRHaA+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1A4C52D7C
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172322135363.3234.3037500918549721558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084fc6b5fab54c098060ef41d9f4ff2dbc5d2209852fb767fcce56fcea1e7b49
Date: Fri, 09 Aug 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723221353
