Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F3D352C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786653635; cv=none; b=glY6G20ILC5CRmCv76pHukNfmyqWNCvCchPK0S42nYDZWHke/kJ0/yeHfn0N+FNjOKorDebiPwYXF6b57gDB4JX/VLZEmuduL+ET6ON6JKNnNjstKjJa/xmnvyRoMPLVJ76SlLseSAZIfuTqCC9Cv2NQXKHUQOuQheWOrEKfM+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786653635; c=relaxed/simple;
	bh=Qb8DBmXxFEuYBpb19CBDow61EjyxVQ1aCWC6JlQSiMg=;
	h=To:Subject:From:Message-Id:Date; b=E4mf4l5y496sC5cxrlJfMT2Qrtu6mKTdWF/J36VEfy15SGQPu63OP8VtVQ9XO2LJfEv94tr4Q57xWJlQ3kN7MDiVirKOiAsF7lV/CZPXLAhMDcOmWEyrKGEkmOF49JeQcgNBiJ2YNPzF+SVbxbQJv/iF4czRwzlZg55bqwCfJyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7sir9hS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7sir9hS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CEACC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786653634;
	bh=Qb8DBmXxFEuYBpb19CBDow61EjyxVQ1aCWC6JlQSiMg=;
	h=To:Subject:From:Date:From;
	b=p7sir9hSXOhng1d0A3ihOPN23y5aEn9bnRg7PnIES7hb3y5oivlJDmyTeo5MwL1YA
	 g9CbZPmO/FCCuuK/Lo4rTTdTNIsKEHNAA47NGx8Qhq0Lg1VoId8OF9u5QmqDnL/lDB
	 txWNMMI6bx8w5wCMPNfsLp4FuB81yd9QFJhrj18nEyzIWLvW9D/1rhlBqH+cjC9KjK
	 SbzVgS2CtU3PJ2uCmgN3uGsWC44+LTmCvGlKf94lGwrH765bkziikvgB4ZgEAYlJMU
	 Shyzm8SJCRxXP05N6nw+5wkJiMQC1fNUaFXjyJoxfyhz+oogE6VvOJWVyCBVWOiEAi
	 CnXldSqdnLUBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D147AC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665363380.4813.6153788008141962533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3dde04e37745b5b530c356d7ed470dd261d60132b4474a5da60bb780c37e7a
Date: Thu, 13 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786653633
