Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334B71C84B2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748410794; cv=none; b=UFgPRA4VcTo64yRuIv2n/HzPcu8a6qjIJXvI+F6C62V7yRJFf6blAaSyuTJ9d5anzgMfdS1qG7pZfGSCXwz7hGrcM0HiTrXt3KsBmvSLM5UaIAm9+ynwIJvYgs8SSiX/8KVh9V42RKqtU08prmYZLOt2hARl6ic+i+awfZ7bXWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748410794; c=relaxed/simple;
	bh=4tuSBKls3ZlhKK+QTnJhGJQQo5SiRh0kv5qfyCvYiOQ=;
	h=To:Subject:From:Message-Id:Date; b=aYw4WTlXhKaTYut5FFajMw+aDRVCmTjUx4xGiVShyiFnZm4oMrBrbn1biJq5faT8PqBmrIFaxH3saJHV7jCUM87IQN0l6diD0lxlTYYGjpmv70pSmfmHE9eWqTSGeJDWNbY6daCpYCLj0lhSytBrqlTxvFfmNn3cw2SzRW4J7As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrANfz4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrANfz4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DD7C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748410793;
	bh=4tuSBKls3ZlhKK+QTnJhGJQQo5SiRh0kv5qfyCvYiOQ=;
	h=To:Subject:From:Date:From;
	b=NrANfz4eGikiqkUsJkJCnnPkk2pEthI0IRjGUqLFzoPsPLcvtDO/VlO2fQ71gn/Tl
	 iw9H28AOco9BPO8m8FxEvMbRYjl1Y/llxPAG+1Md7iFPSL+AuvFChR3EAiXf9S35RC
	 LV+XTfTvFDuhZdZHDnWYYLbEd31sNwoKj0OvVIkolmv1OBPPFIWARRV5oaosLVn2Qy
	 CiS2NSvj6HZXQJMSZCd645morGZC224UFgIaNJiIlmsuorDCotzZ4cXtyFuIPT1tR2
	 O2D+V15I8rARQ3JXgmZHGd8A4t9uOPJijnpA9UHXyWzzmMiRDKn6pi2f9iTpy06o/M
	 zao2OEg4yfdeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91025C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841079358.5067.452573683518505171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9f77210cb2d48ce30838055f86289d7f0e6b71e1777c01b9a2e44d930f9fb3
Date: Wed, 28 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748410793
