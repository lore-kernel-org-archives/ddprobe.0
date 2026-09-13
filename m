Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B78B2C3261
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789300234; cv=none; b=rhsgReiDg/4YeNgWEr8sJgYWJvZLuIdFr/FztpbDw7kjepdOZSwEcZbD+8O29jvYqya4IpjUwkv2lJiHI0ZRDp/YLmJVdqcuRBMwPwYeGxt/9V46rxObPtvYBQbdW5IDNpQAnI8g2KHrYrRlsCfswnA2l8uuPZQ48HkAGjQh+FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789300234; c=relaxed/simple;
	bh=ymB2PAOIQtpLHvA2ZbT2MfDDn7bMYoMopu3dTmZ6gNY=;
	h=To:Subject:From:Message-Id:Date; b=VyMgqT7Svvv7wiJz4yq8z+iegpxBpMCo3oHoej+OQafgNuY93JlMkjWb9EPg16nmjq/DrrrRX5lHXnLEwxa2pu4yS8yH1o4qMTYiHN/ZtpCqXrJ+QSNTvwCDU/AcDBXwDZ6KvpXqPPidxqVqELkx9tbz+VaSuhlBnfMj1bEU+ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXplEJg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXplEJg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CEBC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789300233;
	bh=ymB2PAOIQtpLHvA2ZbT2MfDDn7bMYoMopu3dTmZ6gNY=;
	h=To:Subject:From:Date:From;
	b=pXplEJg4etM/AUT0tT+EjO3p4WDad/wYZyDx7oDzIhJKg5QniOGQGdDJGqqg1vHFs
	 wMY+qoEkVhXCReK/BKLMQiDcDfRr1APvYcCOD0y3O+QaWh+fx3m4OKlDKUOCHsRsz8
	 wuDYMppIEd5Rnd3XMUxEny/eOzBeIUOMRsYQJ+R9c/edspQNnNf5XJ4YV1251JGGgh
	 SLp186T3i295kx2xtC123BowuubBxc0TRlAUBPRyOz3iGFlX5YPs7BSb+lcACibQu1
	 6nPBt6htam8gxkw74hiZC0y5ar93vuWu3axMfirO6QLas593Si3UvCzLfeFAg8f4Sy
	 vHclHumC07o3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF90FC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930023368.31072.3247919178983465354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08930ec7468eed5631cab0253fe3e4c5b5504811094569a54ce95039ace268d
Date: Sun, 13 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789300233
