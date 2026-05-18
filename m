Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6C43DA7C2
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779085234; cv=none; b=jwSbLRwHCHVxnwDtw2E0EIB/a2q40RK7gU3HnOZ/8mMZkCVxDNrW9P5tzjzdEWn1uoTla60BDRT52B87If84SBVAlqw9yP+xtXUlkAx6Ylb+6HdtFXkDDpzAQFrKPjq9e9IjVo0rfk4W0iF52GSMcs+s2l1xqitEikOr7x7JXxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779085234; c=relaxed/simple;
	bh=XFKu+NULN7juOfQa+ttXCPPRervhCEWEJtvYX/tCUjA=;
	h=To:Subject:From:Message-Id:Date; b=YEYNJRPYmbUoSQgrhj4NeSCUKBlPLommKB4OJmpuWAPfG11c7mtMVzVnSZOBqv2DYAnQWTKDray7qitakWj+QUGFKzOOVKyNb5CxNXsJFykXdIngbMVbbkFXgWBe1Zdyca3du/oDS1HYQ3QY/6eloEGv+45gbRM2hmIbcjz5pGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZH6a6V85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZH6a6V85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2F1C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779085233;
	bh=XFKu+NULN7juOfQa+ttXCPPRervhCEWEJtvYX/tCUjA=;
	h=To:Subject:From:Date:From;
	b=ZH6a6V85enlxLo6CaRGiGMw6i+BGOFbZxe5hnO44EBR3YOLDSp5rs19/qyh7y54d6
	 8MFnxtlSg553v/UWJa3bi67VRldLT+Tfx2rO+UKsLXioy7Q1+KyFpRxMMEZmv7LK/9
	 g33haup3Ou7SWOh83QAxrpvuory8py7k8C/kgilDYzlp+xaEgWHvuebsI7u4nOL9O4
	 RO/fhTPkkSb/h4CQet7rxqNpq0IrL2wWUXXsBhLBWYs5fGXIVLxWW1fqGjN/aA8MDC
	 4/1yLfPeiDsi/Y9lqqw6xNCU4vpVWEcfCHTBkUaf87kUWEc/q884QZad1dI2ONbGwt
	 NJvkz7JFBQxXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F31CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908523368.26910.556688457440223246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624dcbb009d95c5b23bfd4388843670cf27bb28c9d637b605132d86ea4c4de8e
Date: Mon, 18 May 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779085233
