Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE660377EA1
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772564694; cv=none; b=G+Mxfv2wls/cQdthhKqtatITDQKmGWu9BQcsRwtAO9cdomTvTvDkSqbauxi7QyJ+bed3qkCg6hN4+kIadbPLM71g7PIehBOCMqwOu5eVvsdTit/nfTdpm21jLplWo+boxGzJS1dFFnfkNeYODhLt+5SXsS+VAugrGokPqrkjBtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772564694; c=relaxed/simple;
	bh=3WbxWwHh4FgJqSFYVGf6lEBWzNEiJIOxcnkB4h0dFVo=;
	h=To:Subject:From:Message-Id:Date; b=licEFrmO173kABW6Yp/hDYsi6EZmfn6K/NhYlMZnR+FxcFWzeQymxi6KfrfrOVyPMle3Vh0NMHYHxqvDmbxRCm+yrJzWnFKpU2cAzmZtYfnYu1DhJA6d/XhZWsilg63xu8DFRXO5l/Vfojh+Ypp6HjV5hUoRk758bUIy/0nXCMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HO0N1qF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HO0N1qF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2180C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772564693;
	bh=3WbxWwHh4FgJqSFYVGf6lEBWzNEiJIOxcnkB4h0dFVo=;
	h=To:Subject:From:Date:From;
	b=HO0N1qF7fu/OtVP2eOLw5VY8Ecpq7LMj9/3xFZaRknT2O0FjuEXOp1SpH/lHEuaGx
	 i0f/tzhkciG8i8Bl7p0POJ6cx8VVedyhUReXvGxddTeZPHk4riS2fIQN6rdsEVl9fM
	 jmSpeI66e6DLuPkEDSsqX9SnBwj+9ByE7FGRRJt9FylLYMWGbIC4kURoMY92GFOrGk
	 QfW4bIwjlUaDj9G4t0iq/6JvXUqBhrkblLGYqKbvWHfXDYc3I/z762foACZ+gsNBtn
	 7rOcQVvxt0+UTaGqmhX8fy//GU2yUcoY+ZSmvath0qdaCIfbemSjnTQROaPiBR4TNF
	 FVQZ4scnZHhdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9106BEDEBE0
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256469358.16940.17388361363244508105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04665b01578ca0192d756b995d078336a6b856169d96b66acff64da991693199
Date: Tue, 03 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772564693
