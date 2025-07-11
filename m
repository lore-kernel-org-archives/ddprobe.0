Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85D22F50A8
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752250194; cv=none; b=IdRJRaMQddsEV/KWBuFviPV9x7U96vbijMa4UGg2gDmhK/7qgUJN50voN9rUel9cAijJlmL5xlqn6y519NkOY9/FdR9vOGsGlPyGeF17n0u5gRuZ1iS+ianwH3IlPhlWTHs3c2NZbyzGbtFyjyCapdZFMK3f7PGSlem3N0vIukg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752250194; c=relaxed/simple;
	bh=gxIxlSbISj3jrQUJE5HFbbMBOqFdMKF8sF4CsSFnFpo=;
	h=To:Subject:From:Message-Id:Date; b=KKeCTHCW0EuBpw70j8iMwp9ZJzFX7r2NlKs0Er6XmyKitkIM2shXicsOBxuCLATgq1gcLdqfoYsVvA1Nqan20Jo9m//UP3C2fe3tjdZR2buLC9uzOCvkrOcf79SM85JJcrYHSnZSLmbxTfqc08AiLUs2+u7e3RouXHpQKWe42mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUnGUq/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUnGUq/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E362C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752250193;
	bh=gxIxlSbISj3jrQUJE5HFbbMBOqFdMKF8sF4CsSFnFpo=;
	h=To:Subject:From:Date:From;
	b=UUnGUq/SmhBmmnfQKMU5OQiGhrB1daSpGnJMbCYpmflHbYne+GEWwIkJixQZcQZQb
	 T3d8mQqHxNTXmsNLnT2li8iAGXlggEohwJeBMaILtBBRpAYGq0rVU0sc7E5Qtv34yu
	 areqS/BBtx5q3qfldaKitTU3juLrgAOqQFwwEImZmkDncIJ91PZQd4DKGKBr8p9MuU
	 HtUyAS3UBjcRijTq6fQrMTxlmj9H8OnYdqbkShy/p1LS9EAeHc70S1F43H4tFWNczH
	 2Jl4dNARNZP2Js/til7LU0uiHUO2Vy3Uu/v2b/UUqImY8lNUUvHVWZ7pYcXL/PMkdW
	 mNxGy02BfxdHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC3C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225019358.5094.2895641874279387609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d918bb7b56dafe274b126ecd87ae23e0f50923d325fa3d4ddb8a3f8b73ae67
Date: Fri, 11 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752250193
