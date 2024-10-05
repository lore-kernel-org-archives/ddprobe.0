Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32253231CA7
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728097554; cv=none; b=TMfMFs+6jud14+dAntU62l+pwXmzbw6bp68dVvo/k+XCHHI/xboS9X61m4hV2H4W9H1I64wC1JDbMkTStyzUYog7y0Sv7YxvVCzimyHCLa3jbkOsHGEASOAj6bYwDqjOh0jS72prIuxKx5R7XMuU21fG6d0wknSp27URRSoF3P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728097554; c=relaxed/simple;
	bh=/ItxeI2Avt/Ku58BRO4n5pPpPs/BwxACqoWZEalHHYU=;
	h=To:Subject:From:Message-Id:Date; b=NXRt3t/vy4/Bty5KQdsyJ9Vnfd/oI9OAQjq6jdwE2KaQggTH9naF0WuKUFU16SDEJKFscIhAumyCB2/OejYP+tG1rIUYcgfrYM/1yWjgZVkaLDUhJBEcH4T/gHS2yxQfegc/GkIAz3GEt+aPPCYj1Odb+DR0xy3RWSFyo0tj+LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgRJ15Di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgRJ15Di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BFAC4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728097553;
	bh=/ItxeI2Avt/Ku58BRO4n5pPpPs/BwxACqoWZEalHHYU=;
	h=To:Subject:From:Date:From;
	b=NgRJ15Di69j7p3fbD25enqBK2tM4/fDcPfhuJuFUnDNib0MX56I+hezZkvoqk7XkS
	 /xtKzQX9DRnK0G7VGK/S8QufzhKt4iyk89ul4HhjWgdBrWbrlD88B7N/tfISffF+nn
	 05yUS6v7lpGNYZf6P8Og2nr2W4HRBPyL8CAAl0K+8VjQl2SslMxJKr5ZMxpDtqeozn
	 Y/MVIuVDDNIklUg1EdWPWKuf+zTixrJWXSmej+xgwOW1u9OD7B7FpfepQfQJlvLg23
	 dvmN45K0DJPdd3bSzhGD9XS6z6Yd1+1l2WGC9v2Ba7lb5ICIamYO3LoXWOy674MeSC
	 KWuqVAq01fnRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A589CF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809755358.26746.5641604339534547279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c787d4729ccaef61f4d1c4f75c3ce6ed198b10f7ea625da8e22cdd0e8f2dca15
Date: Sat, 05 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728097553
