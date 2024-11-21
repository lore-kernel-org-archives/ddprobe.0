Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E17E70802
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732203954; cv=none; b=agSvdLVmziFqufGR3l0MsRsLu0EK0uHDcMrsSDZUoYKOLl3N7AxzxUyJwLfGqtvrkHTxe4CsdMddaJb25XEr0wSuzGgXGkV1BAb1RSTJ4cSvUNq+fUBxPZG6qEOaYLhdf/LqdLB2dwo1hK+9kVakHXGObUk6LSdK7I266QlG2YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732203954; c=relaxed/simple;
	bh=h9oDxm6NIvIqU1vLt5tGcAhD2DTORxpBtQ4POavRyGg=;
	h=To:Subject:From:Message-Id:Date; b=j4ZbffS4//G/NBgl/rJUYN1X8HDl14Pg4xNRmbg68f6X1Q9V+3eINUuPuUwGutEWFNmPRuqrAcb3UkmstaMn3lCwa7kto5sqz4+g1686ECmmThMvjU4qPGe3JL7rthUPBKRq4Q7hqr4rCKVA60rHnlFvnC5wex8sCpANNoB8w5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McwTG7SJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McwTG7SJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7A3C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732203953;
	bh=h9oDxm6NIvIqU1vLt5tGcAhD2DTORxpBtQ4POavRyGg=;
	h=To:Subject:From:Date:From;
	b=McwTG7SJz/xnrJnPZvNjJ8IjB8HQUa6y7SZZIpklBikzU6uS1UIhw/OlPvJUYgsUW
	 7S9EKf450F9xf6LDAnHwH7ybSC7xLiTeVuGyvOqRKG/nOtoJVWh29vBQ7kPaCNvEn4
	 Oc7aCucewb/F6FA103/LSPXXyajdaVqrFJev0vBScesz/T+dArHbMrT2QmGPrxDD6/
	 BSVMENBvDR88/ySRESym0UOPyPARgKD5Z20ZHynq9Sat14CihhtrHnEFX42H8t+l7q
	 9+8bAKfTVwk4e5LM9jZfQ5UhiRdp514kgHsJhwBNNVgchh3AGMjN0ldBtFAEdnQELP
	 RunJuQL538Gxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97076D78782
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173220395360.15021.7291671245227141548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9231e2ceb5357e94cf626fe28f2b1ecb93c124e285f8b5cd58b350ff027aee4a
Date: Thu, 21 Nov 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732203953
