Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDBE4499B8
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785517834; cv=none; b=irGrHFXfCxwv//FkSHmkb1eqzjps2NBXmROb4I6s1kbbojn+WelF7n7YdUSdkqe78bvBsepMTDmzuCRfi6wj/D95lYu5cjm3XN64n8BNMXMimhrfT3gJDkjeTpDycGoLRZwzz1FX80Nm/AwEqimJMUkrqYtdZD3rqXygnEBBiHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785517834; c=relaxed/simple;
	bh=QvKIOaBdDE7/I9oJkGFaxPkp8weyX+a5pO4aS1OWyPw=;
	h=To:Subject:From:Message-Id:Date; b=MJ37W7UTX9sxJ6xNKG+XEoTe4bJ+gJjPXZn6nQ94V+uPm14rJNbUdQgKlGvESkX8h6GPtX3fM+knsmO+8mMFTcle3GGri/quWYSdFgMILnNQt+0YNNQXLMlInOoluIV8nIT2Xs57CTdRAZOUZU6CXEMXDBgNnAg+Tazfg+5QY7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNn5kzzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNn5kzzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB101C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785517833;
	bh=QvKIOaBdDE7/I9oJkGFaxPkp8weyX+a5pO4aS1OWyPw=;
	h=To:Subject:From:Date:From;
	b=FNn5kzzpoAgbE2cNF8zAn6QO3R/3/8CPDzf4/RtlZXQSOuMbykK2VE31HhgLeekgQ
	 DuEg9KtPUD8eA6L1XmHcXTNnqZzKE/gJxdDXhdCEpfw+u30iFrhLFhywj0UxYGEcR/
	 iQYpzgPpqq8StS2U9Yq+opmfvWG6dCzN8uYDpcT93Uxuj7ThVOBLBuye/I4SLi8tca
	 G8iCeBw9KXTGrp6HxkVQiO1lFVjnub/PHcGFPRsNa+CFgJtI2lUyoiau9xe+M9S72p
	 n1Tz59TRh1rs0Syc1DFHQpe9eektBNxdsMo44i1GNyhSHI2Ex0BX+ojNsU2ns5KhxT
	 JZwsAE+t7oy9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9016C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551783368.16055.9173708750028731324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b8cd3d72b260f68ace1fe8c643fc2c2afa1d897a7b78b7e909e9aaa62e1174
Date: Fri, 31 Jul 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785517833
