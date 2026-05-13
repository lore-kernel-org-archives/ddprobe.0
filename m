Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4243AA9F4
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778697034; cv=none; b=qIqf9660PCswAtlQx64F5QbKcdtrcz2Ju4rj/cs/amywrEEDIVZJA888uogahdLNqDDytuaGCQTGO6aKpO0frGKs17ja+TqjS4vCjlcFca8dRGq7zJEA3fXqKQayo5dm+DdE+lqkCH1CHeYNV1krNj0wcdf0W9nZgOSiH/yhiH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778697034; c=relaxed/simple;
	bh=XlRkqX/Qx77Nmtd45chA0hKR1gjTyS8nilNgi3Kujic=;
	h=To:Subject:From:Message-Id:Date; b=oU5B3kZW6eVTsYnKYBLqg4RvMcE1VCaGpsbgnIqYgJVIeWAbR+2WHKHl6Dqej08uA3wXC6ej79Deev9SDmoNn5sCgxdiLhFnHFm028lp8Nd9CEMApFEHzMF37LwpSFKr0hF3QdiOYln69CiDp79ngCfby6izLEIGsKG9rTnt4VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcXkTcdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcXkTcdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B88C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778697033;
	bh=XlRkqX/Qx77Nmtd45chA0hKR1gjTyS8nilNgi3Kujic=;
	h=To:Subject:From:Date:From;
	b=NcXkTcdf9j/WAobtNDxzYDCZKHilomql/Y86MG9OxxAHxE3PYdgKWmai2j34tbjY7
	 rL0azX9yhJMvEuVLH7QwxqiVwYrCSheTYlOalSR15pSuun25tFJcrxpm21gLpuhw93
	 1P6EqbKbrQMjzykViMy1Z/5JpGV8V65iDH4H2fndWcAjGbBr9FaDSrhdiSR53xAMwp
	 vl8ENIV3wkXnxU5YZ1WQrJQe1uBhT74lzcOBdInx+eRbbIEsfaNRq9WVXi8K82EScr
	 7SL5CE7m5ruv9stZqZpow9N4/HPwXsjtgpq0fqSmTC4bptITFXk3VRNcwN/BUcN2da
	 TwKbBADhe4c5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2CACD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869703368.9065.9952872895470037169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f6333f33827cac3ff4a5362a63eb3d025f0c296bd48de3436e135f2ab97060
Date: Wed, 13 May 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778697033
