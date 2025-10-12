Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE13A26463B
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760309997; cv=none; b=CJLMkEovOnTEmB9Rlg2kFo1sJ/AqQf5fqF2xgpMHMgprCcjLa2vpHJH1dNzdF2RWC7hnkCkHLfESSFVBAoKDnKAKj0RnPBuZ7CvUqY7PdhaXoY7bAX01eUmgtlcjjbwRgr9ZbE4vm9EdMO1+XAW9rgIRATJqqxFWoGvltOHvVrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760309997; c=relaxed/simple;
	bh=mhxwu6iO6or9d1PMOSYhlwHMHcezkqbyBDSDsSGlRX4=;
	h=To:Subject:From:Message-Id:Date; b=orS2C+iES0/xnH2T7+/2l66gJq0ZC0gBABArVcQ6+VeZTar3y2Ts06gbUAs4VHs1MQLOoz3Rzhw4O6MBWFvreHdo538oU+QXrRdz3v7dLDpQno9Dp8XYVMl/6QbKZ8wGzvI0Qsdr3TQXiz3nAKaTJ6DxaLHeltJuGekBaxdYWtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0/8b8ju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0/8b8ju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0D2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760309993;
	bh=mhxwu6iO6or9d1PMOSYhlwHMHcezkqbyBDSDsSGlRX4=;
	h=To:Subject:From:Date:From;
	b=F0/8b8juyb33NpU2ob0KwehGMf/HtsaS578JxnB5jOrv3ZOdBS2gYhIqKq/mNr3N/
	 6RzpGX7ju1cEn1WDhXF2NPPMaKph2YFKLQ6js+UfExX/I4zq+n1tib2T++qrBchD+/
	 jky3IbaPkjpZ+8w0XBthsyVkz4y4iFy2PO8cajg6kIQ1vvO8Z2DCFuPtoTn1WzhX5q
	 rLwJfSn0iL8ovrl24OO40b3uoPjZZgLqaRDkDU/yAHOfyceU5LtlF5j0hOwojfikP/
	 SkBVvpvBdikYfXJXy4gkCpTqrtYw3wZzol30Fn+SYZJ3xbLgW7jvcLYcdI0fkmEnqm
	 TPg+6a1f82cAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E8ECCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030999357.17112.14408745279413917302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bbad46801bf682c5e57e61d7bb095064518c100271fe710ff4aefa3ab672966
Date: Sun, 12 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760309993
