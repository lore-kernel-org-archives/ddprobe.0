Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE5F244685
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774922093; cv=none; b=Y3TEtzDShQYyyOPkFvcMTiqIpOaF3Xcx4febTFjLiItv8yBhlQ5qrwCNMgsojcUUBerX8s9eqCYFyBPfeRy8nEFHGpXQ62L0wQYksGpVA6td7aC2P/CVe4FQ2XPk7DH7H4/XqiUWsSh6anvoc7lgjb7n9pBvWDkwiKujhUexc4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774922093; c=relaxed/simple;
	bh=Z6HKYS1qUhaVZ2Vw9+v8OHELEyJ7ebtdKHo1yTfBaEs=;
	h=To:Subject:From:Message-Id:Date; b=jY0uHKZqIgg/UEjmwrSiEwceEMbhcOugsX19eCSHGoURY25aOWPnLf0hTb/3UnhaZYn1Y5bRjN3k13QvyLy0gSGIBtKX9g24DM8NNWf0hxTW6vVpG4/EFpDsAbipz9ygx51uOwMB5rDh0L0AXbDAHZ900Eiq1ka8wxhuqqJibW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjPVw5bV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjPVw5bV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F874C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774922093;
	bh=Z6HKYS1qUhaVZ2Vw9+v8OHELEyJ7ebtdKHo1yTfBaEs=;
	h=To:Subject:From:Date:From;
	b=DjPVw5bVAuDWfeba5tijBb5hQMYakjY3ucOaiEgwhiwcpHcKfiuppkntLBresL8w+
	 nKiBBtKZLoQnNbTxEfER0g7vVW56CA9xMQGvEYJ+hEwXfVnojvD64Ngg8HOAkgZg5M
	 Gm/W5nfFKAO1r76PmXd9GGBKzFd5vLInwkoVYdnS0Zm6zsx/lD5PtlNPhOC1oWejwl
	 YC3PfPJsRbrbzQRPVOo/XiltJ1I9CTuK38NGrRGx6oNL5wGSoXtbAUhS6jxdBzwmdY
	 BjT+LErcBrTxzH5uwq462Fc6yGzGfes0YsmQ7cFZR2994KaxvOZU0CEF8lmzbAxTgH
	 dmjF3S+uocpGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026D1061B2B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492209358.657.10755135038061193138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1d414c271f6b6e062d0d9b4c01ad5d6e61b29c4d9d4d3ba12452f6938043f8
Date: Tue, 31 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774922093
