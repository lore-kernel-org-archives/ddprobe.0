Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C702264CF
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770427434; cv=none; b=GaU1lPJ2KyrDB8Yh2387+P0Hp7ccrI5yAbnvvOol0aD3oN9bTeJaloCMLu9LkFpSkpJftCYH6445YcbdvXZjWksUWg1S8QB5W3ejw8T6n4+k+zS3ZKWnM+YxlDP2V7tWB2UxREIV2JZFFbzLfGGEYbbHSfdkJGB7mlFdtJ4hH9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770427434; c=relaxed/simple;
	bh=9XpN/x0bSwrtFwR8Po7cVzOPsjjxiabBlihzoXWPbsU=;
	h=To:Subject:From:Message-Id:Date; b=CtbDE5lMuUaSSCVipiubz9w+m4IDasrb7yZlhSNxAT1senYNw8ze8NlnHOCXETeE2oS8SY6qSI6dd400SGyZ8wJJKtbLuNlhsFokcqIsMsDUlFgANMBbjkYT4Yv6kBRuOi9tD3/R9x3PoQXJs+8M+c0RQ+G/+lluK69FBu/ds2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWNuBus8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWNuBus8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0079C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770427433;
	bh=9XpN/x0bSwrtFwR8Po7cVzOPsjjxiabBlihzoXWPbsU=;
	h=To:Subject:From:Date:From;
	b=BWNuBus8Fe7jXJQhbCtGeFOZqCPK9af3KOb+2uBn4X/53rKc5cLrNFjcGbG6rhzdJ
	 JpVvzySefejfcsIh6WtuexjhlHNa17Yg6GjqPYOXxhPOCaKnY9IssYzm3jUwhvGPmm
	 SEtmFod6s8hhrvwkz/u0kgqmy2KUVHGv9RJrElpvlDXplW+XDXKw2k9fZ+G5STY7L7
	 3ohwIBbjOmDeoNGz+lhjw5/sO1Zxfe9hiv0Ioy1e4NXcl2ZOUoyLQYtReDcCR1KbFb
	 HRCpH/fkPbTydeGw4b7jcXiAD4QpH5V+6G3LiSpRUwG65S2/K3RzRkMgstUe1j1CI9
	 6siEijYZv3gRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0FCEE6B71
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042743361.1911.9606206492998078554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328c3e769fd8533223291696a1f1d76f08ce6cdf7d931de45a8bf9bacd7142f3
Date: Sat, 07 Feb 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770427433
