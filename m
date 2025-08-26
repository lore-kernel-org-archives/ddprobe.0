Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1856D2D543A
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756237795; cv=none; b=VamqHaLRQZ86p7lxZsQzHiYXzLoVQBXUQdGFQbuuj1S4ZniikosqCu86Cfq92TAXHL6+qv0QLBcbGXx0QBcmSutskVdSSh51IgYLluZfCKLLM36zBsoRV4XmYsFwB5k5ZdET9w6XDKf4XTc0Avo6YbhdyBij9D0KyIRrG+5PqQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756237795; c=relaxed/simple;
	bh=eSV7ucijf1Ppf74TmG3mjYgvhh0V7KWdyOuEldBO62s=;
	h=To:Subject:From:Message-Id:Date; b=TcdUQs1LrJivCh3YRG0BPH5LSCjY1TmpWO8BMCQ0OhyFxRKdgw2xesDIjwXzz1MeZO3nnOdl5+YOZQsIrptE3n7dMFsZH+c0uapP4lnkyTlqNh4lx53paEt3Ac9pLmFZ825LTSiss52bbAGUgGc0hdJr4y1P/7uNPb4y+fW3j74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shzYxMyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shzYxMyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AD4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756237793;
	bh=eSV7ucijf1Ppf74TmG3mjYgvhh0V7KWdyOuEldBO62s=;
	h=To:Subject:From:Date:From;
	b=shzYxMyE/7lgwjG3Tr/Pgjz6XLtax5DKN69bTVwYPbFZGNV5DM37xvzW2/W6n7Ac5
	 42xevj+pKxK4DXeduWjHH5BZJgUOrAUTORW1uxSvYwyo3hASOCSKEBJmUShqtE58DO
	 TCL5jhGj5uqw+ffYwTXb+9p5tCunbhsH30DWHDSmjukqBuOvJdKIbEey6vkqNT1t1U
	 Xslz5H4WfLUhpaY5rgjEYUMFDdY/alHyxHNPZoadnYoyh8FWkOiHK4gi5zs45AiZNV
	 dYz6B0bOxe1iiTomCqbXQtUZwU7H33M6vhRqsVr4tPnMPY3OOVURNF0zvYf5L2BoYC
	 2pPhy3r64UmBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF64CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623779357.18825.13965857182298311422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 284fe65a191f63c73231d4931e1578b66c5771237734ff222cb1d724afd58672
Date: Tue, 26 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756237793
