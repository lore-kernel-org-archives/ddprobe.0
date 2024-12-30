Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED7825948E
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735548954; cv=none; b=V/nZK99F5ciiIDH4iM2cjC/fFzlgyoMa648omPrE25flM1j0S9vKnlpJUyKfmLZ4Za3REKQvnUK5Kl3fRUYyfSQhBKKPjGk4ahUuvysvDoIJrnZAi/tlHagd9YKApH92KVgWIgp9Y2U8hi5zROh44ccQ7KPJX4u7U6Ew1WLllKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735548954; c=relaxed/simple;
	bh=xftRrVbORlptq2UOA4m4OUNH51AnePjFs5gc1B2+Kyw=;
	h=To:Subject:From:Message-Id:Date; b=RyymBreLmi0usG6ZXBgzjERvSlvRaRita7s1SvEtz3Uo8C0cehtp1zYkBjExR2E24WXb+b5cZh6S+wOcWuh1w1IeLPtBJvtxFinWruYihVCFsOOYqScllurU8jZXoPMVinCI0mBGVQCWHkswTQ8b3P61NqudlftsxY/JKLF+ZvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYIivXCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYIivXCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEF5C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735548953;
	bh=xftRrVbORlptq2UOA4m4OUNH51AnePjFs5gc1B2+Kyw=;
	h=To:Subject:From:Date:From;
	b=aYIivXCpqIcRoRPcpMWXY+msxOVtUtQqLo97oeeGyMkhzkJDrPP32sbx8RluCOvcT
	 idahVAZfB8cyxbgNdmdSZ+uVOY0p1PMDtYNtec18JdxfCilb0nNhKMu/RNcmHUk/dv
	 xcHDg/NegfHsZx3ek2+v1TPAd/OPpcEhElauDLGh4f6d6r45VO1u4Gghx/6XGcbeW/
	 Jjb4jTSM9tKIcEYg6MTVrySdysfuAIOZz7gIGf6GxVAd09DMOwZJ+1N+HzA7h4FV8y
	 XpfQnjXJJOcRkn9fZjKpX+gPhq78CKRKHVeiL/KERTNUbAkv620r2hE0ZT4byO5wy+
	 9lQ9gdFl89PNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979D9E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173554895359.30228.13437085125971056317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0a3e42c97957a44a06069bd013cd182d614648566aeff35a2c862cd2f36224
Date: Mon, 30 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735548953
