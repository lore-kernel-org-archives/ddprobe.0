Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBD61C4A36
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733948753; cv=none; b=JbzUgJgdUBsMlIMy1Ep4XufoPjE/vAeWmuqu1BniEMUZVOvS8AuqJhivZuEiRFguZkdlUuCd97yJstOeakazmuyZaRE3Z086yfS9X+rbFnE1YuxoGp/f+OBRoi+Jj4QTAvU8lrbmSxWjXKw0CfLX2MDePZZK/430/rOuWbS6aRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733948753; c=relaxed/simple;
	bh=c78dj9ViDuuSHVHfHsuusQZ7Kpi02RlhlR2RKQVU59Q=;
	h=To:Subject:From:Message-Id:Date; b=uVffqd9kW/L3gxZd8rYzp8i9kMJrjsVJyrbzMZ6V+YYDOrNB7q/Z09Iq0z8Rz5W+2ArkdgIG0ERSqH2IH0NpULGL8o8mWi0ih3bIniNywKFkIGBoyQMKkdLh4B6GvYl9oNNqVp6XcfhESBLeVqHsvgZHpy57GlTFhnaKsqfo/3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TL3rNZGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TL3rNZGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B253EC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733948753;
	bh=c78dj9ViDuuSHVHfHsuusQZ7Kpi02RlhlR2RKQVU59Q=;
	h=To:Subject:From:Date:From;
	b=TL3rNZGtxMnHBnPwAs/N/rRO70Y2NHQzSzcD2saz2h1t4vUkBQ64UdezlBDVfjjxA
	 vWcLB8C08d5gDndZbQLwax/qUqoeeSNyfn0KdkJpp7BGyZU+Rc1MRM9LJJCI5MTau7
	 Fr9ViAEJgzC2I6llaWy8fZmHOCc+uSrXzd+5UKtJOJcyeNKVHBe2HTApzSsCvlWIi3
	 g2EwAfLhUUAbqKikrz/wBQUZ/+VS0jLPdZhVz1yzRkXqhyEbJiXEJRP0CSbTfJAiOZ
	 EjKiGZX5jZqPna2AiQv0TwwMBeEyDnWBrhRsgLwekGytUnTkpifA9crIiboS21TpfU
	 nzv9/wB1MD4NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7ECE77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173394875362.22466.6418594582529158153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b798ef88f6f336c875b73822173ecc20fa21519ae3ab84caf4d0a36b7a62c159
Date: Wed, 11 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733948753
