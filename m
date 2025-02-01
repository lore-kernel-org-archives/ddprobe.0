Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5123814A4D1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738400156; cv=none; b=JHqURLiTPU+7gxDG/NYtoxgKMvG3IHZUqBpfoLbD+UTNJRzjlWV8E2zEWjVrZgcBlHs6nEn7AtflOjfcuzYub4DpPhg9z6kLmjWdQd4wRttvq7ZmK8IElmxX8efeaVTieqeaZXJpwUlMCxnzJ1vWFomv1VVfYdYL58487ik83NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738400156; c=relaxed/simple;
	bh=JKoyRFpHlbYNh1Kpuafvn1fj8U5ePi29f2qhY5tkktc=;
	h=To:Subject:From:Message-Id:Date; b=NtR61fgL1TXaXGf7SdvOYjXfbQ3teI+ElPlxHgCBZaJY5/sPhdcS5lW1/Up9uDORUci/Zs6oh591gzFNT9N7SWvs3OS0Ntqp1qNCtcLM1hq2zEf2KbTk+MBwaq2t6TOajmhuUa/5M2W9Kofbs3SIniDND4ysFM9IO5WWEtsB9pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8VnB1f0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8VnB1f0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7D0C4CEE1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738400153;
	bh=JKoyRFpHlbYNh1Kpuafvn1fj8U5ePi29f2qhY5tkktc=;
	h=To:Subject:From:Date:From;
	b=k8VnB1f0R4NxqBehh/Vkh45hqX58f8CZW67hIh2QzBdymL2cNAB0+mjRQbHUoogyR
	 82V54XhUv2O0MY/sockXl22XOUgpQO76tFIsG8W1WpEJwrH1gGMOvtN2gev33n+oXo
	 CY7ZUGT8v2DAy3E02eFcvPU2zSOqyXGFssesSOCxECxcs+8sgv6K11z0HhVs/HDfrM
	 SgDr0OC7i2NVf4aKKAMqCl5QLd26Kfwby04E/SvyD6ERG/dKGB60gjrLzcoNulqtjD
	 BxJ+iiNU+Tc/OKt7oFgSvzEkETD7HrbAXkxtwIyTXW0LN9GqHSdsMSrGi7ticnRlgJ
	 a8F+Bju96BhvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970B2C02194
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840015360.29872.13580628636563380568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b1488143ca6b00a7ac3b26055c8e037c6cbf5ee8a820506a4b60f452b94ad8
Date: Sat, 01 Feb 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738400153
