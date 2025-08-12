Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BF42DE6F1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754977794; cv=none; b=pHET4hzh3/uNMtlDaI8+kZwhWSjAUk//v7L64FkMqOEJwYuLhviLeOo9MdUM0yBUE2PYeGsi0TLrJLs9TNGsAApOosagq+psKt2oLL5xqlnW6vcwUKvPuEp99Q0kN872XpbuEQqxLnfmrSD9vLGN9d6Tng0xM6DMzIDzgKivUus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754977794; c=relaxed/simple;
	bh=3Z1jOedZVK4eMyymdHOd1vavdjgFgeJlguBCPB0uV58=;
	h=To:Subject:From:Message-Id:Date; b=t6xelmgK9iZu2hsVmMcl1rmJbfWxg16RdA2r6xo+KSmzy2XGSvwVarIGTPip2r4gKdp60/f8e5dfPjNRIF+RA0bPnYkYixD7Y3DYaGTHHFEJ8Fhj7GpO8BSIlSPvQlUl9uVjAkpNROL1rzgs+Ozim8+hdlnFe0Zbn4qNyRYQTjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHwvgw82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHwvgw82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3316C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754977793;
	bh=3Z1jOedZVK4eMyymdHOd1vavdjgFgeJlguBCPB0uV58=;
	h=To:Subject:From:Date:From;
	b=bHwvgw82FoseQdi0ItQl0wRujPKEI8Jpv4Gw+FhnRaGRpNKLcNYYLaRGIpcV2TrCI
	 P1RPOQPnO0f6KmAabxBV75TiYQ36lwCJYzQi7R1aaGhqdP8hQihq34DmP593q2RhTG
	 FDMm/EeQo4x5bIw4yNquVYEufkcSfgVMkOrr1BesPZIH/SnwWb7ESfb7OXHz/nLaVO
	 aFWLfHrl9K1YnH0g/xSpIkT4pMWpreCmv/bN0wUVyf+h615Hw34jQthAHkYx8WXvSI
	 bHlJh85EQ2lfSP8J25y7V3bv2JAedOki2PhOnYTI5ytw98TPEICxey0zXgLulptiij
	 gWlQ3QyF8e3qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D6C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497779357.8261.6502336197785843400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b541406db4c32bcff273b80c7edc18a548a4cf823aa272bcab4453ef4814c9aa
Date: Tue, 12 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754977793
