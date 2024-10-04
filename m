Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BFF2E83F
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728076554; cv=none; b=i5qPb3RkIHKwxm+OiwyOeU2eW3wWeVijqaNwHN0TdorzOc/Pb6BAsOGAJFv/N8zZWd+u0wRs/jv4GKsjojDFT0M5TCiFpgQRwthCK2mBnR7Wvla16KWeXEmSZaOTmq2wMj+jwPcXrCwJIe7PB5jCxsbWz3SzQUc9CkH2m1bvqpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728076554; c=relaxed/simple;
	bh=472OHLQ41iuTv0UDgdGJoNtOAdIf/7EWNjndXRw4E10=;
	h=To:Subject:From:Message-Id:Date; b=XPMKvhO3vkcuHJA5JF6BmUYEPmVx142bbreuUIbIk10+kDSNkL/MOisJcSxP4h/cPKCe0zwnYbFR5OIDtVVWBrkl40hztZQB51Ah/cfYZ36JBz5gcb5VbgKlDWGtog6Kr9UIfuLQZej67Lg1N1Rie+gRByZ8cqONz33of7Mn1wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEPvkOJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEPvkOJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C0EC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728076553;
	bh=472OHLQ41iuTv0UDgdGJoNtOAdIf/7EWNjndXRw4E10=;
	h=To:Subject:From:Date:From;
	b=UEPvkOJlcDADAu8g+ayL/mjcJNwuAuRp3k7WBFZZK66ze8cpqnqh5SswCfz9K0AID
	 gkC+/LQwStsj9AfvNTbQL+O3Nm88Rc41CapYyejZ+el/eczgO3k1sXlgR+UhyGflpU
	 JeXuZTs22Db5PCL9MnHWfaL8AGVCcRbc0a1xTtspUMFFGHXArz0f9dSvdvTEs4QtCM
	 iVBv2YcIFIDOt6b1hD/XfnfDwCuvr/y9/4SjnWsT4ncLx/n4bcsbStE+UUeyPaq8//
	 CRYEuwvmqIibzw7dG/iTwaQYgIp1Uvczv0H4rc5qPK709+az3J3D69v6VCMcGeruy0
	 /fmXKTyDyZKzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AD2CF885B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807655367.20871.11286357494650428238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a68d7731a23ce99b8b2bcbfa2f270aced65901faaab2655b6b03fe9b2f405f
Date: Fri, 04 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728076553
