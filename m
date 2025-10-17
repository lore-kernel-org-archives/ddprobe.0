Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1DD2AD11
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760674194; cv=none; b=UWgn/Ck6U6Kcb/OK/E9hHvNo3p5YDZcHL6ZBMUoQ0aTjgRphSNkOXNT/lStBzGg+M97kf6PTQnpGQu4O0RdIqh7vRbdZwubK/7STSLrhXAeF3l4wD2apd89NA1GC8epfix1fisceMC3FqgWEKrhtZ/u5P5g+xgygSKoMpDN5/eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760674194; c=relaxed/simple;
	bh=xOerfYK2RFdr1Fn0irfNEeXST6lMo4R5Wa2g0wBJnzc=;
	h=To:Subject:From:Message-Id:Date; b=Sy3KvJ2aUMK8Cvp79Lr5LHX13rEWGoWgMoWB89bt4jkVojf00RYEVZiaqomyQr+uDl9gwUvhbLF9QAl3Cpw/+1BbRJb+SoO+erGd9yukFimMOYCsZC34wwg8yTBQ95kWmOgUycqbWFISbkVMvO6gcqUowgfHflSNJ/Bk4fLmyOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcKI62ru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcKI62ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DDFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760674193;
	bh=xOerfYK2RFdr1Fn0irfNEeXST6lMo4R5Wa2g0wBJnzc=;
	h=To:Subject:From:Date:From;
	b=IcKI62ruJ4893Q+Az4HOH6nPnfGJ7ce9z4sOk97H5alDvyiTe2EAfjd6wHFaSNbGk
	 OguSJkWDZqW0ZTV3diUOwMwwkETmO1bP16PYdHys94WkjLHAz9nUtI13hzF5/MYrde
	 l4CLcVaP30RSu2glIJWanGoCkaZDsCz/kLpYPNgwA2NsKO0yIVuhK+XAIFxhCYr59q
	 gJNY20x8tHRO75WkyrRPEe1dhZwt6IUwJhE1NrIW78Bm51CsjMtQZQwqoppN0HWq5a
	 n1V7Ua5q46olcL6cnzYQGIGocdRbB2/yz8uk1rX91U/FVSwK3Ve7jTidHef0uDTKhO
	 xzMVmQSITU5VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F234CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067419357.7178.16030146530438879816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c028faa7289c268a2c6625d7acba3fda605f0b66ebc012c0d770d5c629f714
Date: Fri, 17 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760674193
