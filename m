Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526352CCC0
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744994994; cv=none; b=Jb+hFpjQ/0c6HPtvVxLWGs2TX1eNn9r+KOj5j5XjkDbsCO0Idd0U+PR6S5wv9b3PBBcKsd+6b2R9Wf8/lb/X5XQpnn6mdKy+czXQt5faGYAIEqpHtBxJBozH6l/njIe2JK566k0DAN9Bt/UR4XIw4NPbZynWts0VsWjbNs6uHVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744994994; c=relaxed/simple;
	bh=gcWqQ6vcNATou48QooFC5pbdVfLFhdQrwMZ71AN0XJU=;
	h=To:Subject:From:Message-Id:Date; b=Jh6IddBIswxV6mAzMwX5Ezxrxg/XfqmPJPi4M3SjitOG0VAuLlyjeaqYFIRxMfc/uGPtcdrFrLFZbMk1qxS3BMyipsGts7blX3115XBIs7n/v/zmrtSa8rAvlc2wjxBluvp6KOguS2SU1SUqEZSwKt/gwZdFKyFUShNJofjlIa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjojpQSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjojpQSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81A4C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744994993;
	bh=gcWqQ6vcNATou48QooFC5pbdVfLFhdQrwMZ71AN0XJU=;
	h=To:Subject:From:Date:From;
	b=QjojpQSkoSxu+EMCGnkW7lfxB2d2k3MMqMvTUVxA6udh6Ygl4roJ2azPH13vdvB/q
	 OaWq5YVXJ8sqUdo8vOxpVGUmrD1xRSqp8IQV01hk6vzEU2JtGlURlZ/Zr3vg/Q95DR
	 z2CJ1sIKomPi01jHqDHCDFpKGs/t0O2UoTkCyki4jpCmOHZ2O1H6K5/gmil8I+hFZK
	 V77nmW4aHwJxdjBj3baHBAxKaH3HBFc0Zq+RYplZcygyD4W++uVckMcEPje7m14FiY
	 kOHib43GjtjgZ2ynMy7tQ+be82YB3w+F7Ef04B5/wBOAwQV9sO57PWHMKE9nlM6NrC
	 wshZfwBTx91kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EF5C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499499361.1235.2244852450054940179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22de267b69f48fa3494d474c27759f5050dca925a4d56654e5ce9de26f2574b
Date: Fri, 18 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744994993
