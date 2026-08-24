Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1A4380FDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787614834; cv=none; b=F8sE/IW9VRxjJaMMcItpA2XqsnZa7MBJsNN9vLlAp6LUklYQS0ldDUFj/7jWSSELPyyvJZOWJu0SpORDtPOnpy5blqisxIPBRojux9oSmVL5UVICoDBzww7VnlLoDkxTzL/m+m7eSVvBGC/F+H0+bVj3jgaPd9bxiPM5xlz8i08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787614834; c=relaxed/simple;
	bh=U96PhVzP10+3wN/PqqeXeXGT/7k/CfUHkYru5F+LSnc=;
	h=To:Subject:From:Message-Id:Date; b=CWxI/q+9Q/umLd/1clQmIbd3YcvTJ5kb8EiUuy2O4EXgNz3+2+WxW9Lz5K3KEceb2U3ypHQ7TDdl9X697q2iI3VLDKlat7Ocissi5TRgVKmxccMFnugJr0DpJ5HDagDg29yDQXmUE7KiG6cVBM+IH6zfl7+l86Xlk1II0n4Mq18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QivrFnCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QivrFnCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF351C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787614833;
	bh=U96PhVzP10+3wN/PqqeXeXGT/7k/CfUHkYru5F+LSnc=;
	h=To:Subject:From:Date:From;
	b=QivrFnCGDB6OrLJxUJLUFynUKD4YO+m/wWRf125jmf4pMZoDmX/zERa+OL1VGCn2o
	 7Z//Obgh6UeW5quiZ05jQ0IJYfggyACAEExzT0yhlLr5LGfIFM0m0JlK9rh64qv+UQ
	 kHb9oBMnFN9QAg79P6RY4KAGvC78Ceapu/dAAoFG4WdJ1sJdZXjDTQE8VCV+UoAhlq
	 iHD62bRjlraEt++aP90cRaVIyPj6XissmHhvRPV8p+jK/RmKF1gotpIq1K2tBn1bPe
	 Wvi/FxST+JB05uUzDIStAGVIqLsyBvzans6WIH1wY33rA2tz3KpSOg5yCULPFbrt7U
	 vGL/IPwYaUkCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C9C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761483369.13257.4430159270008846002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214979610b690dc5d9d010789197862342780f7e405069b6cff00863c3e14345
Date: Mon, 24 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787614833
