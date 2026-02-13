Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124392264CF
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771014294; cv=none; b=lrgWEJkICJwrfePD0jecIXCBDdEiypE/Nn+1d9Ef15Wx/KeWz57PzlWZ9TOLip5+TwKDqYjviWNDmVFHgElxHb68WOxnHxc9SZxgs412kwGSTCfGPFlilGpuecIF1OxJ4SszNl+IIARG1ENDyoF6gnQlw9P563kV6sOQKxG//Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771014294; c=relaxed/simple;
	bh=/KyYczkS4b+Ifve2S+G4VIrbVPrAIdFePHwf+Iv8sZA=;
	h=To:Subject:From:Message-Id:Date; b=oHVN8WhOxJj0t4Y5t8oMqpb9zVdYgGSA+t+Nf/iBsdqldyfNTNpxKa3SIokqm0iTyXHoZ8/8a+5pw45bQp/OuO+xC7Vz+iUf1yfwkIducniXwQnSqFxfFNiOFD0Hn70dZv0uJpsesQw7/iYJIO25C6gsj5aLWdeJ0ju+QeG64OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6hVjayO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6hVjayO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6514C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771014293;
	bh=/KyYczkS4b+Ifve2S+G4VIrbVPrAIdFePHwf+Iv8sZA=;
	h=To:Subject:From:Date:From;
	b=P6hVjayO+mBJpfPoPC2cJ8HYVON7KDF3hpV/mSFAE8BP48Rf7LYSq7svf+B7d0g5E
	 2ybj1yD45nnTzElXqUtVH30Bpirw+K3RWQ++TTt0NxYHxp0CrPFHmbqSZiUukwKoZY
	 naRmWh8Gv5TeaeCUDeYbmiCwKI7vZZPlwtRhSQra+w3V1cSPXS9QlOiWDLRs2nUeVB
	 rcyaPibQ+ng5xvAHQouimnDFXanQfBVKjCwM8B2hGtxxTCiXKouAUAIvSbN7rCvWwH
	 2G6o63/Zvvqzeum/taJnxf84h7qNPoDRmkkh6Hn87CHuJGX0t8lydQ2w67F5m/zAPp
	 q7TK+VCd6rrGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E8BEF99DD
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101429359.22966.15347893436202016447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fae67eddf3f44202f9a3fb0eed12d11735d11977b1797b4e6ee74c75e1e8bb4
Date: Fri, 13 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771014293
