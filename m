Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAC26217D
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712801896; cv=none; b=SY1uyta/RLRLdKbzmH54Z6NHg3SAnvx1WYraPf4lXasi7RBrAwNLIh5TGG6FmWkbIyCh8j1dTdQVXRowUsXkwhfMECVD0xorps032PQLg2SGsIBlP4fqU5X/pbf9XlREEHOWtfBFrBatgaann4Dqc6NENjBBtTqG9NKUM2bJnRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712801896; c=relaxed/simple;
	bh=8+TwHbfCgAF3CU20A4ZSSd92m6ddZZQeaIAI/lffjAk=;
	h=To:Subject:From:Message-Id:Date; b=MGK8I0sLglS0J1uCC7ERaE9IeOyaxnjFglC2oMjIblZeQ/SoSqlXXjuhiKFkvCktc6psk64cd3AAuSvhwOn9bsC4MhDnyLl5epijafHaXG3LA4ThpZ1S5s5h/NwEvfPEu6Xebz8Bmb7MMmMKRKCc4zEan/z1f35Dc3cSrTZgeFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uox8BJJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uox8BJJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDA3C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712801896;
	bh=8+TwHbfCgAF3CU20A4ZSSd92m6ddZZQeaIAI/lffjAk=;
	h=To:Subject:From:Date:From;
	b=uox8BJJ9asdbyiENt9QlS6CTQmQCSSoTdvQ5sDUpntXRWUhZ09VBTsrOiEPglVXBz
	 EITs+2iWmcD87MAybq3IiBASFvPSdAPkDx9A0jkc8uXfkCzJX0BVgRdK59UfCDuac7
	 LCIQoDAu2DmujlvdXgqBwXnRTbw5DYMDzGq71CoxWc5hK1GIVFnW/aS0pMYmd5pWnY
	 P4xZNgRMl9ED2Yath+k4cEZWaYqN2QrFZlN//IYbBskjbdOHn/sKcSHIiKfXfk9H0T
	 59HuRoEIkFbpDlr/Sqj4p0G/sOJhRWQXwqkf4Q+DEvdSJ2HoKMqy6JMft9IYV/Tr8s
	 lb6TFqJEkDS9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B98CD11C2
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171280189640.25792.433681795265717351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d549d8d86471818e5aa60c011f44374bfd1698bb74709d8ae08b1bfd54322f4
Date: Thu, 11 Apr 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712801896
