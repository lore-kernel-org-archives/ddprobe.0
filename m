Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115648BEC
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736479554; cv=none; b=j4lxtVUP4xU5EsUOc0a/d+5js3IqZCm/LKBTyQdGiyP7bBbCxQSRypZPn3I59I5ps42BkZFAzW453b53499X5MWa5lQh89pd0gIDBgg0GYyjTWLoBwQ4N4O0yrdaZKaywSvGpo4p/fYBvzHAtYANTjVpfgjHShz6o8AFnm/BvqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736479554; c=relaxed/simple;
	bh=wmllwBcPNHLY20bCDoEfDnnupaLRmTAja7WOPGt0J+A=;
	h=To:Subject:From:Message-Id:Date; b=o8vFFD4TW99VQBQBlKvWiq8URhJwEckPArbfcRiD+VhsJv7OmozZ/GAEDtpsoOu/TQWl+D9hyvi3e74FosfFHMHbvRzB89Bhs3t1C86OC+KHzO5qNsVb05wOlCA1RKHwhJIsx1sg9Cz/ur8KFCHeiK22M6gCjR4yNJwML3Ps4Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsXeEnxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsXeEnxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F74C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736479553;
	bh=wmllwBcPNHLY20bCDoEfDnnupaLRmTAja7WOPGt0J+A=;
	h=To:Subject:From:Date:From;
	b=TsXeEnxvHHIvuxbEltwSp5zIXghhSUwy87wyBQwbL//gnaVJuIyHRHRHeAz33MPvx
	 j+Rp8xMyx+77lSNmnrK0Cy8+YE8NyckZ7pDrs8mhdICWe8amIBd+S0UaAszevl/5E6
	 yRObt1weqYmBcr76ok3S5+C7UEMmzb74KWe7RdN2iqkRhQAaE8kR8odMy+N0qBhShv
	 depF79sLdZi9r2cXDceS2SOsd+FFLLVljD3gA/miA1bZaFQZdYq7cACiQHDqTjbpmS
	 WajkhxC1gwuDcvFDky/bCsWo8s0fycRzH8mRaywqNXDgGWI63TF/dCzKflUlZSlO5P
	 SMU2EzqD+m/Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247FE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173647955358.2852.13063096929469882673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66eb53a2e89f0fb1a22f8786932e9ebc4387283e73a6af2c08782b90ee1d635
Date: Fri, 10 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736479553
