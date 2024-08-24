Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3672B2C6A3
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724486754; cv=none; b=ORqEymr+69qvPUhQtbraieduigCHCUAtLlmBXIGGI9Si5zZXmkRT3BIq2td2wPfugJmmTm5kP+78ZDn8/esdMDc10qGsJ93zQsOPLLmZDBl6PF1s7M9Toc937SEov2S8Uxf2oU0kct/MjHhrghsqGLOVEK0fXxkLKy1SPw6MFec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724486754; c=relaxed/simple;
	bh=YMyoETVpSHyIeCacGh5VLdNhZg02bdVe7FeL9WUE0DA=;
	h=To:Subject:From:Message-Id:Date; b=W83+ihTuScY8vwRkeaRK+4GUxowpdQRDyqVU2TVUKoDDKryRUEuoyEU9LmLoMQVag4KHEr+CCOg8nY67kJD6Bh3jfl0kRo/3aATU5Tw0YpYoosNP2fTFDz1MXkMpVCdDUZL4OEuHdFg26hmofVgfM90C99NjZ0ZCok11vk55hXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jM2CdZoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jM2CdZoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E19C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724486753;
	bh=YMyoETVpSHyIeCacGh5VLdNhZg02bdVe7FeL9WUE0DA=;
	h=To:Subject:From:Date:From;
	b=jM2CdZoSjNskxVeBCBELggclBh/1kYeFx8NBDodMOL2gi2Rh3+/CXBcEdySB+Ktr7
	 4305PAFkAe8qJXHoCxZ1iRXCHmgjhirK+yq3AjJRQXiGwlSaJIjT0NlgaarKJmmQmH
	 WQyjG7EpLlvu1rbx138cs6xyoJVZEJrlPVpCeLlxCWeMcTN3+b+0MSSWRgVikyXSkw
	 DwtzNX/Ca3ZErpjBTeM81erCMIH0IZEpLuozBg6oxAddNEuNNHX5cbsk8RI9V5seb/
	 TxtldcI3csIBsD+ktA3Efqgq5gL+XegwmHMelHngKNkydENP21V31P53d4zgrY7Eu5
	 TOlkpYR4femQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957A7C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172448675360.20633.9337948354074045404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa6e6c0d7b6e1554550381eefa2f78aa0ad56ff6a2a4bb7ea71929daa46b334
Date: Sat, 24 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724486753
