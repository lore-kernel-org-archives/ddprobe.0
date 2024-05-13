Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FCD1DA24
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715634743; cv=none; b=PgEtisFdQfrbXVfldDiKIRjwmYFs9bQHinK6NTwrqeqmY4MvEMu/2Tw5JlrUwEIBAN6cIqTCuvX8jlJPA3jM8Ef3oVIXPInd5kUB9VkU3rQuC2wnCZpIc25FPIv79P1aBoTzJFw4Zj0fDVRUVUglH75VrUCfwMAFvBQuRxuqf+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715634743; c=relaxed/simple;
	bh=Gqta704ZPNxsKuOGDEfBkInWAahivCJ63jO+ElC5shc=;
	h=To:Subject:From:Message-Id:Date; b=AjxoGKxLPAJ8ElKO8+6Ut/YPfuIk+nDTNXiT2aEworKs4hKohkPxKsS3HEFjljKPZchCYp5Z/UNsYgcpvPz2IzOuIYWYqUgw070R4ydF9D1ENAjCt6bTYWdIUeqCSRD5smf6CttMdnRMo/E7xDpqxGDk50I1vxxzfPVKXM/uIRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2szM8kh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2szM8kh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB754C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715634742;
	bh=Gqta704ZPNxsKuOGDEfBkInWAahivCJ63jO+ElC5shc=;
	h=To:Subject:From:Date:From;
	b=q2szM8khE4JjWnujSp4m7hg6H7iMe2ET7hAX6qmrTeDgXGX/6TV9/DQGevZ2fc+0m
	 HhLwr85VVU6dhVXujYXKTzerLb61FmdPVWATbai5PE2YZPhlB1DuOdMkkh/nj7v8Sp
	 PhMt5PDJVWJ2lCkbwlMjUkOR9FhtGklC4G3Q+mTHsKa33s6wHnXrNHiwgNkWvqDrEN
	 71PCHVQCpHPvxrbTDuLxV1BQIFj4wYu03G6996KlZNTqupYjgqZeUqvmDQsDtDh4M6
	 qjPk7S5nBQ6umQe8HM11PC4RWZBZVlt5LhIhiFPjJ19Sd+Zql+RZ9SUth9/vEyCwWo
	 YPCPpGo3P4Cbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8121C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171563474278.1425.5363528481115657329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21f366198c0eba1fc3e66ef195881da1a200659ef07d26908635d7269662638
Date: Mon, 13 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715634742
