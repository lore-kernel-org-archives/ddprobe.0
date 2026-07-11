Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A152E1F06
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783781914; cv=none; b=rh+LvpktHul/H2O6rvp7ysmjhA2VHNcxohlxo+Ab3AATRNrRYyruVU+7I9nyoTxSD6cNddt803PRCQaMctZdNC3LGbJU+2OiGpZTTwT28cI12Fts/y7OIEQWQvuZkCJaYjNQtVJRl9E0ateiYUwRMMoxdwCreg3/Z44gKkQwqiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783781914; c=relaxed/simple;
	bh=V8V2UgEL8u5zP5ethVmPyPkGKRkqzHbrgrIot2Lnvqw=;
	h=To:Subject:From:Message-Id:Date; b=nG2eS/GWgBeOT09BzfRyFQcPR36vMPNwFzTzyfQzxkE8RD8//tiYMDPmw8PpuNCdqgkdGsYU6KJxFKAZPyu/zTD35ZKrpIUMKb+UGGIjmGwqDGAm0jqKSqpw+M6YhHH2V0AIg82J8Xk1qWnSXeDR1kaiKHRLu1pX5aSnUljz+zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwGlrgp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwGlrgp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E46C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783781913;
	bh=V8V2UgEL8u5zP5ethVmPyPkGKRkqzHbrgrIot2Lnvqw=;
	h=To:Subject:From:Date:From;
	b=RwGlrgp1cpv57Rh16g3PHxsbhKpqdZCJKy/SzVkzEwAQ/UwSNm4R8mSRpOVnNBVE4
	 3+FfPWBN3hZeAqWRPI8IoC0Rm9y2k5665jOy61fXD3LIYNU/73pwttpsuq0CpMGChZ
	 NDOSL9TTUxJWnO0FtwTdgm9hvUagqfLgYt3/EtJax15nRxetIIluLUlTLqFDUWFOt5
	 V3J2gk6fZekSi4rPC5xAs9yqcDy/u4H1gP6S3vzxRIe3dYEKUuIhOc7X6kuGXCbPJn
	 ULW8Urj6zNFZAMOc/DetUQXJowJs0jLV3EveOFcraAJUxaDdVcAq62d+8IEVGPWEAL
	 cQKWFemig6ciQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB88C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378191369.20570.8194461550164498039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586e4c89490d47782cb38c45a434056f94fb717c9f6a68673a61b3f707ae1b6d
Date: Sat, 11 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783781913
