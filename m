Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6379F379C5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779427354; cv=none; b=awT35YFV8FWZKlcYPHZWlNd/iXt9hHx1dHhDP101gCVC0K97EJH7QAYj8R958+f6gAOx1KMoRqZmW9W67qX7sRQYO0rqiYkjJbXqpywTenkKVRHeNzeLBWIReRrhqGaQkRaQbr4U25vrts2qqNLYxEeIV/LflVrxoXZRbCBs/Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779427354; c=relaxed/simple;
	bh=M7cbrHrtXI0BqvQLjKTmHgvHYoozNWyGJHjKqqwD5gs=;
	h=To:Subject:From:Message-Id:Date; b=GbLM88EjCGOgQ8dtDA37+5I9EsDGSRZ/Mq4mHmI+H/Eoe5M9+0Qvrns/peQUD3V39lTFotKo+B0e770BWZIDnocqoW1xYm6JoC1hvdntrAixPWI2N2H9wITzBUozTVy5FRXsASaiNSoAFmv82AjYZE4AkxkBlljCKa8J7ZZ6/dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4hkVs9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4hkVs9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E45C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779427353;
	bh=M7cbrHrtXI0BqvQLjKTmHgvHYoozNWyGJHjKqqwD5gs=;
	h=To:Subject:From:Date:From;
	b=O4hkVs9u6U0GoaWoFfHpGQSLOJu2ArvUWAtpjIpaGCTOfdNEVXjqLjssaRFYdiX/X
	 hZKp2OE5Aag9hvL9tqKdthfOIAOH6aZ5n2zfyzgplKHqG5tyu/gYWIeZk3T8Ohz99q
	 o/CbhVyHyAqtTbggQsiglbugfB1cjXQKsnZyRtqMr/D47O096WEqJdJfvyZYMzZEQA
	 pwouAoMxduQcyVdmLFKSIzWw5u3JMwBd4oMGVh6vTDTsXeV8ANq86UZwThRaNnSTRO
	 uju1NkP6nzZjUWgabHH4E8rQ70P7YBOUNKLyoB/hA7Da2Qe4ml5RRXDAIXIJ9xkKmn
	 bIsYBgVw0B2eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A993BCD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942735368.26852.7214225825984032776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90498eef2bad14a7b0d422fb63083afd739d483e44e430e00c2c03e5ca2c8407
Date: Fri, 22 May 2026 05:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779427353
