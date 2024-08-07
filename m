Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2A121D2F4E
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 10:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723025154; cv=none; b=Cc0VjFnUVFmxEgtYEj1ogZKg7jk/7gZ67VDRe2QL2+rhxgkVQNE2jhCvNK/6UxC5zGpB29K0dIJpWuO2LbPO9BWpwArdFN8HQE5V/tuYNQ7mZ9WEP8t9t7llh4GEusEuTyg4sXOqkdFpL9YTdaWqdnMedWQFCxzs+ulFgJ+ngG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723025154; c=relaxed/simple;
	bh=KbL28fhuLCF8eaRWXV7jn+ZSMEMDqO3zg2sjeX8DNlc=;
	h=To:Subject:From:Message-Id:Date; b=cFP5M/0lWD91mevZ6zTaCrwP3gw4ktE0UFEp7U+OwzNg8XwKahJlrQd8wK7aUVOJxMMcECM1uD4nH7pvMpFKn74HO8592jhgRom8qoTb/GwRMT/iNzPjH8LN3Cy7HxHesPEPBk4ue4Znnfy/Ar24GL4eQf+/WhXdZwGO3i7Ntpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3wL1wLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3wL1wLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5E7C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723025153;
	bh=KbL28fhuLCF8eaRWXV7jn+ZSMEMDqO3zg2sjeX8DNlc=;
	h=To:Subject:From:Date:From;
	b=C3wL1wLULAGdwVtOmbmAn/gyeZ+qs4GojC52tMsV9rI5ARCGDeMviBPYmLVj0Ea8N
	 V2eoyT4JqZQNKiw27kt3SjQOSW3wv+R5wo+t6VuJWv8huDflI3+7WKaUCQcAo+qk4r
	 2QKcS/if1HDrxNHZasKd8p98NLqqsGXeG/MWqFEgAfspdTbSWGpN7vGmhAvvPAgStn
	 xcydbS2DEEwxcVkdDX6A33d9Nn9O2Q53bps+dAM4oUp4K1q3Zs0IjTQNF8ldI/L+il
	 h7iBY/HcKtKThuc2XoWxcJB7FZhMJPidMK88x4aJIdON3jTjd5PYH2EJyJydfw6UWq
	 hf7/JD9Cfbkmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976F5C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172302515359.27581.6047886189243796454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ace2a12ee89c3cfda3c0b939316c6961468a7ce658a854452d51c12b47f6ffb
Date: Wed, 07 Aug 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723025153
