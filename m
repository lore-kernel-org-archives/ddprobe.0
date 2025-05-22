Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4965422173A
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747895394; cv=none; b=TPtTqmDA+EyaJoPtmMeLx9ZL/OqXJ/TVWeKI+4uRriPT0uddTEpL5mnGKLUjrADmQrTLU0H+odhznEJEeKjPgECo9boff0dmGnDL6O9SFI4y8Zzd8HCOekvmFvJBKML+WJEoWXfDBnssB0+R71nrkxumVZwMgytCF1uzTroQ4Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747895394; c=relaxed/simple;
	bh=fvMC1W4brawa4J/xeTgHE2KWaLLbgw6IDoR+jtoONXA=;
	h=To:Subject:From:Message-Id:Date; b=oPsI1gTHSLbVFiilRtm08pEcI6d9XZimSPenw91UQzNAaCnh0rFg1AKEWBPm/3eRzfh2RCpjXAAtDPWI8cAAocX/wc9J2nvKWP5BU3rzW4bBbYIe72AZwF+wjBpEDKoA9Lb04C/OGbUAmkQtvN7DdNklKTuX3i3aMaNyzrOAT48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAjSahxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAjSahxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A309EC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747895393;
	bh=fvMC1W4brawa4J/xeTgHE2KWaLLbgw6IDoR+jtoONXA=;
	h=To:Subject:From:Date:From;
	b=BAjSahxMArZwy163ZQNj8kO9vPXzBIzxEXM7E4ZlIYR6hqspYrzfUojh5LvQ/XmN0
	 1QjFSIMAJ8FTgPuY2htED4vJ4exxL9wa+5CAC5Z6UbMUhxIke0Az5/5+21pnQS5jWE
	 cwuWi1yu0fc5eR47Rd0OFfXYkbDQhfOLEA9XN6tIx80X1KidZJaAD3t2Ac8WxXShH2
	 BsXVj1MHB+p2AfixRBgjqB/cDnYTy8S1pYs/QC1oqD8MEU6OBnIChkNV4KAjXzR2UD
	 ssDaptM2tx5VtIojT8bbClj4Fj0zwgYzaXbu8DPY/i/F2peU60+b3sQS3CRiExKmlB
	 IxKpfUoxEU25Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEADC54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789539358.28032.10705829510183585561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1a85b02ce9f328e6f9389db10d489871196fd5463aa272e0615eb5283d0045
Date: Thu, 22 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747895393
