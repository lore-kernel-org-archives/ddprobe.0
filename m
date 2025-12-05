Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000D21448E0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764895374; cv=none; b=KVDonAaj5pROexGdXa8o0VEKB7l5JSubrb6/sDwoS3BV4GkypTm3EyFZT2bGJlKewTr7QRIqhrY2M0rW4CAKrCqMrQNp3EzzCl054sG+XX/ibSHPaAwuWaBFO4iEQpJAd7ohCIu/E21a+d6zZWLpXXwjsTw/H+H31G5tkrnex9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764895374; c=relaxed/simple;
	bh=OXSk6JkzLSdYE68WBgHR/pm3pxe/djDDdSgCCBd2HlA=;
	h=To:Subject:From:Message-Id:Date; b=MyMJxANnK1SAWcF4iwUiwf6OAP03OzCwLyt/u3guOLGA2zanx/2xvALGdBjAx79CrytGSwqjzRf7aGpysCW6F8r/lM5EP913tRDnp7VNNBNXIXIqYcaJASexAsWTgZlb6082UIC2XvL7SdViPDcAXFMC68/DzsKKGPMZIxBRc5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opfJBobt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opfJBobt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A6CC4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764895373;
	bh=OXSk6JkzLSdYE68WBgHR/pm3pxe/djDDdSgCCBd2HlA=;
	h=To:Subject:From:Date:From;
	b=opfJBobtNSeVlOhJRXawnNYaaqA3QzxvsBWAUi/SWv9O4yb/4bkBFKsWRd0+sjSYK
	 LzbdwFBNJWr63LgTxe4c6GIIj1pDdwBZxP6xiKG+3LZsIJ9TnWl6gS71UUbcH7iILS
	 1qj2ilPu9Hp40dZstIOxx5mfeVvAkOpaHqyFcasAcEIkwfk+c0UCEnK5ChSMJuMIwB
	 8RYIfTqLXo2XSothxxMXoSwHlpjOMcjVJb/SiENWby/V/l948N/He3eVLM+Y037FBm
	 e+9iak+VMmOLKZ7AD48wCSyUdpkLHaRu0rmgsU/3wjsLovxHNxpaA3YHw9HObmWB9v
	 aUOmtmeXyDFng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EBFD2CDF7
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489537358.26561.7136943845570828325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67e32e522bfaff69f9fe68a946eb2676e665e27923512a249efa1f8ff082aaf
Date: Fri, 05 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764895373
