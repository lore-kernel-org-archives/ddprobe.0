Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EA73D8100
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781183794; cv=none; b=ejmYra3iD/rl/k25LR/MAZszzX+i+Nc+YaKh2Mn2NQZccv3X14ppUdvPGaSmgrnbYB9fGODNH5fCA4ODGJMdT1yh1vVrC7yvmmkdXrd65+Mf3y0InKmRAi/XD04zqIUTcFYc7TVhU/3yhFNCx1VwoPg+b1RmznYG2dRJkgOc4B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781183794; c=relaxed/simple;
	bh=21yQta1gdmIMhkAdumeU/PybqVxQc8llcQnxfSRLEtI=;
	h=To:Subject:From:Message-Id:Date; b=InjOa/HYExyK+rMUawHzh77s1JD2hs6PoMGlez3HbQdyEIveRzqrmeFrJJNR1Ibwi4q94vbyqYIr7wgrDJqcAgEbN1l1D0LD7x+3E8YYUfRUrMagJsuoPw8ddcuMlLCCfyOQgndPKjwxy3YIkoViQEEo30Ie/aPo/rTGVDoJXS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsFIQZ+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsFIQZ+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E13C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781183793;
	bh=21yQta1gdmIMhkAdumeU/PybqVxQc8llcQnxfSRLEtI=;
	h=To:Subject:From:Date:From;
	b=XsFIQZ+6sI45UPh3mzOHq/ehQJlyrWGYYRDJZNBiCPgUoXXUVIZffNe6oPaqXrtWo
	 M8i6xVocasCddDAaFaViCDYY1W5XrsrbY7Fe4ALedTKt3xn2FNQYQb8nO9qx+/jkCc
	 gjAK/NeyoCTORhvc3vc5ITYCY0xn110LxDVCVLP7ztdzbAMlgmwI65DHRJieB1dXn+
	 ep8r0EwxvK5Ry2hAVAd3lnTvlZfb+qQppgg8EomoALGW4i5zVl40Cmxgae024WS+Zm
	 gjNtxr6hnIOX3tVHhnfcZ4cO5Ol7xKh1v0q4j1xUNs4YckN3GFiHQ3vC0bbw043/ns
	 Ws8e2P7ljHQbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F5CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118379369.17151.5441597759133242482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537cee0026bc23705b9d5c81cbbb1fb266d2a413339adcc49008cb294a2e1639
Date: Thu, 11 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781183793
