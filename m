Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315E9278750
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746530394; cv=none; b=lL75HKgwyoWorUGX+mvWL7NW7yO8OI/VsgK3CLgMhgIRWi1py3KcHKegvnwm/2zgmWktQ1mPmJ7A75E9Qc1WDUxQ39ZeqhhxFuX5rb34FfBB/mgIOPPDJgdLc3nDBfzR8CtbPNeh2x4cQ+l8S5zHXhKDXqWjbIStAorpqeBvv7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746530394; c=relaxed/simple;
	bh=Bktno4y9gNNlJyxib468vZTps0XGwTlm+8+4wTW7hT0=;
	h=To:Subject:From:Message-Id:Date; b=Xm+UMAcfYm5MszhJ4hxcvjEdzvjwj947z7KWK3LEBBkX6Fvmes0yBdwmnlFNgaYdPwpzIkqhlyrndn2l3+vf9YJ+c46z7Cnj8A00xcwDUNTfcxGO26drIc9a+wWqbQ4jPCIOKMol1WuDTCy/sZy7aGCuo5hi9rMe52+GEprUUwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk/S6FGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk/S6FGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0602C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746530393;
	bh=Bktno4y9gNNlJyxib468vZTps0XGwTlm+8+4wTW7hT0=;
	h=To:Subject:From:Date:From;
	b=Lk/S6FGpSV2bsRIhQZuzO54EPIcax+hhHzCHiUcekvP9SIbi5rYQL/z63BWxnRZjf
	 /y9cOeYhVrgjv48MHBPQ0+LSHGNeNivBaHHtgeIIMdoZ3jT6Cke57utq8c7Aspb1qm
	 rvgkvFnB+TFPLJf3PWv6M/LmcQvb2GeTveHT68X9m8DXxgbx4bcnXXsI0xagsMKuI0
	 XtQlM1vFFkCs4h0jEZfEdPQAuZGztRchXE4QjCv9WfuGk2Xa7hNlbcg8qpBP09IzKk
	 cM/cvyB2842Y82zAqB8c4KxLG/Eb/PWIObmTRZPxF+L8d2TMRVHx/22mLVpdE+/gHC
	 1LPtmjIqZUQFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A9C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653039357.15388.980510393185644767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9195c7e3d878b355724fb3012e1f1478cab207c9ebe99ccf6fa6158cf2fa3601
Date: Tue, 06 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746530393
