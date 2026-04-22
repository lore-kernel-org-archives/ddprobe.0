Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236592C15A9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776892054; cv=none; b=mQAyXW95jSdOeFTDZfqYhT9IrOT9KvXQw5sPxoexih2kUSqP66gMvPrYTKqVQ2QPrfBfgpIs2QfFLhvP7lkBdB7HsbDCcUDON2kEFyKrufuJL7gbGAY3qg2kyzQXkQqJjklDH3/xfQhKtG+FC6pYVLTEjZ8Kfu8NCrrWitSkeEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776892054; c=relaxed/simple;
	bh=Dhi51QNCX0jIhivzWSUFg3Oq7983ZYmtqbZoPxpelAk=;
	h=To:Subject:From:Message-Id:Date; b=IqjuGdNklCiVd9vPbo7PIOVd7aQoQsJOBb2/U5saHgMN1IZT3nERwfXdYktqL0534pIj/tiJtdswHnRYsEu9FfyU7WBuTH8Zs46zvnXZpi3Ki7kWnIVRDQ5iWyPaBRc2Ag6v64vqoJGdzAzXOqKfZqSTIC5LIAB2SnWA5loaVm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPJ3fw8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPJ3fw8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC012C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776892053;
	bh=Dhi51QNCX0jIhivzWSUFg3Oq7983ZYmtqbZoPxpelAk=;
	h=To:Subject:From:Date:From;
	b=GPJ3fw8N4IwOjjttd7Z8eXgWXAdFoBIVvY5iHzLKXcahMe3YHl6jmdTcG8dG5cP/P
	 xL+7Yoo2FTwUg4TnN1hzN2MsInTO54tH7tv2X5kVewcbHt1++/TzAJlqs4FoeRukZS
	 DG1ohsPrcI2mfUgokPOEqnH0cg9cqlxUBW2RPJD55P0jJLZALp6M8UTcOFSbc+wF8T
	 OXnHNwj6K86ImQGMysZtxnUT66f1Y3Pc4YcN1ZkDvflwDwcC2IvdryOfqixZdarTim
	 X4u5Vyy0LCsrDxvR1pSH1roQRbUIU+Ip7ycli3OR+g73FGm2qmDNJrpdQz+ZOvMzy5
	 P8Eh7vOdjeIzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A977FFA1FFC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689205368.28598.14308598273066814404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21633fc47af78add171b1ddb76657122b69f0a2e52ec49c70cf68a69158a8d3
Date: Wed, 22 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776892053
