Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C271362
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721350554; cv=none; b=s3BXMonhpvlfGmg+uoSXgSgcyvFLuU9P6i/z7apbxrZbVnw+7oirQ3JyiQ+uhCsJAdQugC3JubhteM4k3/puVuwdqiID7OvKOOh5gPeJAH8HPaHe4j7YaI+mp5J7r8vYx3wZiO9lKDTqSOfj6skugUJdQuXXZnBtA3zHY+1eS1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721350554; c=relaxed/simple;
	bh=XpRBOrzGWiBEgIWpor0ua0PipQEnPGmZgHOZ+wuCbSw=;
	h=To:Subject:From:Message-Id:Date; b=pyHOX1hDoTA26crjZSrOg1Kpcuj/SMxGpiwNWPtmZ2oRKw4a2BirRE8H6GLahDYSnzG2oVynmZPCa6a82ZysZ3JoC6R9RdYUc74Id+vaBqhZAXKofKIvXTdGoUhAKL4R22cadVbZWZjePHxCeu3yFc+RVOBtqgGB0U84Kv480KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dy1Rozsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy1Rozsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EB6C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721350553;
	bh=XpRBOrzGWiBEgIWpor0ua0PipQEnPGmZgHOZ+wuCbSw=;
	h=To:Subject:From:Date:From;
	b=dy1RozsdUMRTqI1vvydZZlPSD3n+lFHNjrhjvOTpydbpv83vTZqFxtjn+kZ6KIoth
	 Bimm3jgwEBDhLg67vivU+HxmgsuTWvaFTotLTNJGTI1hn98tr5DqnEyCCUkbz7cLDk
	 TB89UO0K7ubsMICqkUq1/3O2pVn5Sn8YKj8xo/B/PGKDlMc6P0nDtvH9GJBdy6llzn
	 JrlKsCtJXr7ao/wSyaADXCj5keqpw20YpwfLsxwDgIezq1+FQ6llE6GJqzMh3K1T2R
	 1AtuwtlDwsepXJOwgktRz/DenAGzg8hbBqakbF+3bZrduQ+vefQz9ukcw6BiJmzaDd
	 ntjHsH4qe+npw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FFCC3DA61
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172135055368.8731.10563441698741864641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21496581cc980c019d38a8d872cafba226a869f6b712dfd4d9e7dca4e24b2b34
Date: Fri, 19 Jul 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721350553
