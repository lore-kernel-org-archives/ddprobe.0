Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2062125DD10
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746022194; cv=none; b=KhuhMujy2DDFLg7vPPaECiDYXD3JMxMCoJdASI6jp0KefB1/+Aa+ToU+4oYN3gAf74es1S1Ixh9XKc6ntAdP+ifwNwOpCr5RbSFTzabUv09YIADUN6uBgkpBMI5Xj062G2dM0E3ySp4qi4OSNmXGfrXxQZ/4rMt3Iqie12CwjVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746022194; c=relaxed/simple;
	bh=pfUUAmBt2y7scYw8xq0pu9OwtgL/s80TpZcouIHKSj0=;
	h=To:Subject:From:Message-Id:Date; b=hPHIhvEyCIvEhtgL8MVR8R4eE1TZJc7PJlAU1cG1ZxXt/DNaTMj2fAfMj1KYAwwazVq1E0RAKDSSAQ3s5OeX+IhIdxaYVyZ829mKKSKd15YG8+NIQwJgBrSkRmueWMsbn4HZI17ZnmMDDR5Em1Pm4GsYC+FwssyqtvqjLKu1xSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAHRlSoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAHRlSoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4028C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746022193;
	bh=pfUUAmBt2y7scYw8xq0pu9OwtgL/s80TpZcouIHKSj0=;
	h=To:Subject:From:Date:From;
	b=GAHRlSoh4mA6EyK8S0DKasrkczQn7ipEroHshX2GUyQyKLMbYYu5IlVpeP+inYZ3F
	 V6BmMEc2I3jUepOhIWHJB8FnPGkW/KuqbKKmoXGOmCYE2fa875fGBz5qLGghcsF6Yj
	 +0FT1WxeE15GBhdX2pdkwikR+Hm+rbIZ5A8TEeYlGEDAxA/dCwaXPnI0XqX1jRucBM
	 YtIA8g/RJpJL7o7PRjL7Ox3O5JgzdUCnoWpQYFpRJXV4i93r3XRxMw3SGiobCccH71
	 TVa7Eprg8xwUrlRhfCG3n214x6fg27H3rp6cKIH0ZN1WlxQ5eXVOLawfeZS1M1nLRI
	 dFGtGcxnJilAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C31C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602219357.32702.17314003100776454832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e42593ba595f8800683a49f296ce7e23aebddfbffcaf57acfeee65727c364d
Date: Wed, 30 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746022193
