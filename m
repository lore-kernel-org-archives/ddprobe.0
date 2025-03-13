Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335A727468
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 03:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741835334; cv=none; b=bDj5HKpfGXhdIEM5GY0nq43eF5AuDzqvKU+pTiGMFtUttWZi3VyWCLjFKovnznij9ccnK4qWanwNmGQhRaWlUjDzkUQzsEk5V3Px4mYIwbtKLr3COt52uIIXfHbFUF85InF6Odmd5pedHuKGhMzDwtRNpfPL2sAIWxt4e2/oWdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741835334; c=relaxed/simple;
	bh=PDfnGjBpWa5GfU+xoZa8YgyRtVSUsTp9zudO9YgMcXk=;
	h=To:Subject:From:Message-Id:Date; b=nLVP17LxuM9+ED025HyEXDhT2UGMGPWY2LPhoZjarMRyE9xfIipehxOsKmXq5HtNbTaQ+N1wA3zUZ9mQGSuAyGUEsq3/UNN3G0vW0pE9KmYnz7qT/5FKTXx8yo6qETfMkznQlKGFZN0QE7+ytBhMXBUYZ46CW39IzZ5Ukawigpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prFLbVxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prFLbVxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A242AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 03:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741835333;
	bh=PDfnGjBpWa5GfU+xoZa8YgyRtVSUsTp9zudO9YgMcXk=;
	h=To:Subject:From:Date:From;
	b=prFLbVxcf70owB3gP+pwfbRflHPUP3bwEmggub3rFYXWis1C8htoz20h2X3k+yTuo
	 o/p00rPI7NTm7FY5ILgW+r7EjkRPsIrXtjVfhB5FQjYTup0oG73O0XFA4J9iDdi2by
	 DtEGtZLOE16Qf2ZmEzQdVowYrHlWQ9AtX1oR5Z91gs4bLiLAJ9DzIX1MDZ90wVImCN
	 l/My2QzUrTByAKEBDHv9y9MJNNPXSiiasK5wFM+dAQ3udvX63uGWZA/39zh4PosaOT
	 yN0IiVUcglSShBNHahBGoIg5aMBe1Pic/UdqYtnMWbP0xCFr4ilrC232ccLPUKNt0i
	 MnTy5w0OBoo5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B4C28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 03:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174183533359.32157.16435505381671098324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c018c2d0512db74d501a3f02a8782d9b184b28e6c905978865af1208b97e5e1b
Date: Thu, 13 Mar 2025 03:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741835333
