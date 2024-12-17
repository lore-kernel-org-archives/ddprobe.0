Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4417C8C0B
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734398754; cv=none; b=jWz+eoI/liYJ9RTfOGIZ11YwDerVOn9lRzHLQA2Z/JfEhTcdNJ6k5D1cmF59ehgNTp2FSk7j8w3sOcI2CAlLHSiyr7TqnDWZuFIdrRaIZYX6cPg23vByKv2GOOOvKMpN76vhyoIiHEmINL0xwXm0zbQN60FTnN+C/u0Fk7GqXy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734398754; c=relaxed/simple;
	bh=A9Ec8QQE+IPmTcpqJN7M9Ur+2yoZ0qHbdTsdAveuuBk=;
	h=To:Subject:From:Message-Id:Date; b=QG8fpVnGZ+wFf6V0mrBSbtddMViXsTplATDy7a5e09/Wu5QhSY8rZS56sVt+J8USvJwuyMv8WK/pyuq1wh6PYS+suH7cP1THIvkNSSpEaGkmuebd3DvwxLLXz781wZqpG3IxZC2pWFDMJpsg8mBiULQQGOrSb6FmbM7vT61YAUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+/96LEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+/96LEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DFBC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734398753;
	bh=A9Ec8QQE+IPmTcpqJN7M9Ur+2yoZ0qHbdTsdAveuuBk=;
	h=To:Subject:From:Date:From;
	b=E+/96LEl2FU6sVp0iaTP7rWS+bN0V+XdipmazmhsKJIaWrDKAvMJoLeF06hxfPKf4
	 xDckpiRHJgddPU5PRdq7tThqedXheFCfBD0buUuoNcx7jFktRfRzK/lvLlrM5FnHCe
	 V5Cz/pASp91iBtmrWEYGKMEJswRMoUaSLZR312PqYNxaSK2BQ99GFF/KOf0TEHSnjJ
	 Qr8V7twRlMWTgGn+na9Ou6moH8/XQhYePQiB8w03R25c8tql9CZFS6iPuO08Uk3fmx
	 p0s2A3Y3BXdo1dlWvmnHKyWNNRnDk36ApQL4wYhNPD9u+LS2SRb33l22q0RV7Qst1c
	 2oLEEGY22g+Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F5AE7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173439875366.12746.8029469434884773823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b7e0a2391d87e7e2e2a1fd2703add70c2904f15b1bacd98d4cd8aaa887a6c2
Date: Tue, 17 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734398753
