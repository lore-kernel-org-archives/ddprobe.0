Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10ED031F99D
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783550314; cv=none; b=OVYuoi3pODGDJURQmF8oNIAATH94pMvx+Dg0OEKLosmP3V7YkZyC3Kr5D2/DVD7WmcFRX/vlo9sWgUIhS/rNzJalUYt/yOsXIgCMIUzm/rBoYYVL5E+6GNghZIpX6DGzB2+UJoCBFbU2ZSxC3zwa1xMEhnG7xsJX4ZM9hGzrz5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783550314; c=relaxed/simple;
	bh=JptB9QORRZaGx+qqCvxgVsu2GdggTnuPqFkXFKeaGgE=;
	h=To:Subject:From:Message-Id:Date; b=GbI6WIUFe+5wB3a5NztyEpHiGpZlKXK8J4zlUcUHT4Aj/yOZUR3kVA3I+TUOmnXEJWbTiVdcbnu94lciQKe3tYQLstATsMBk/DL9hBPLN0DFanCFB2gdzEuiaFs8XQVB9YvhU4T6ygF2iMQPsbciBIH9AtG5QTkYHWd0r4nDtmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mU5MM1iS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mU5MM1iS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACEBC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783550313;
	bh=JptB9QORRZaGx+qqCvxgVsu2GdggTnuPqFkXFKeaGgE=;
	h=To:Subject:From:Date:From;
	b=mU5MM1iS0eWvyyJZSS8Ba6Z+7TEfWI64UbfslG7nZ9h7r+jxbt7E7uFgilUwcnh0J
	 hT5Y4K2WXXNePGhg9xrVkOGUOu/LAL+nQdP3/ygti9LIKWu1VmSzIoBDTqQEDCuOfl
	 cQ4T+3KmUnWWtNewc8s0o255A/EjHuyMBbfCQ6zOruDtvpmm/Itz+4ygSdyX/wiSZJ
	 NXMSr9hDJx76yodbE9YIPF20GiygsoZDO8WNc+ebLginxcz6OGMTJE9Kb36wyKspZW
	 EVjEkQbYlLuqty9WKo7KtgYjrMv2xmSptyWjPrztqBjnFVS6CSirws5RL9GXL9wn49
	 rXNoheBbojLkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8761C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355031368.19960.7342650978604526523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b216af16da0d7fbe9ab3fd6b007485e1c7d3d13028ad20abf10a61256f2530da
Date: Wed, 08 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783550313
