Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6230A2F5485
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782135394; cv=none; b=HbJSyPOCS/1xvk9gAQaIG3S/Q8buyO9vZunP2IY3K93BLkhyTDHYgAEWspNa/Gwiei6+UWhl7hWW8XwAXXOUn3TGFzDoWiWTqQxrtz2V/V8sRTXwawJLRTPqbm7+Qedjs2REOyza3qIG2j5EdnI2L9Gn6ORotiXUTAMfQgyV61w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782135394; c=relaxed/simple;
	bh=lyk1JZ7AOKAqtLonAhjk0b2Ar/lT/WoNP0W/hTf32nw=;
	h=To:Subject:From:Message-Id:Date; b=VslSD7UwwAMp35Rgzxa9q/QcW40z9wwZBOg1Y5a0GYHzwoIxALlNlc3AWOtlxbrf1WF/Kld5VBEvH74pAPU2u6e6BF4GRRuo6qB2HFzxX/WqDBrHk3GGGsw/G+5JVPJsCcIqBBjZvT5Vf18YYqwkTozkuKpUnETHkSThyR/2xHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlaXVjPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlaXVjPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E3FC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782135393;
	bh=lyk1JZ7AOKAqtLonAhjk0b2Ar/lT/WoNP0W/hTf32nw=;
	h=To:Subject:From:Date:From;
	b=TlaXVjPqspw/sx+9IiYdnNwLm8ugRHDmY3FNTkhBI4d4y+sfaTaxXiFF6RCwulopB
	 m0QjveQSkN8ODPFIiLnkFNbg48qikc9zkyjzjgI3Ki9nvVEGWd9eODWvQUYNEFcZpZ
	 P2iscFKhnqYerGFpSZR/r7qHZSKUZkAcJIjB4FXpciOKkKh4Vwqu0ua2G8U4gePiaX
	 h6WpvOOGLOlUbRuEZdvyKpJmZxP72uhFj/hXdYU/AeOUUL47g8uFcHN6kO0nTXvDDQ
	 8YLjDD6kSGvcxxKN5uKsTOAFwsUBr48bz9h7i1xVUSd3bDJ1G3ODDuip7SGnRlcQds
	 8Q23SdBt+CSWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B037ACDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213539371.17901.3025964474967868849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823915a68391eef3dfabcb77a0cefe258a5cdbe2f28efcc1d42e395d9652744f
Date: Mon, 22 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782135393
