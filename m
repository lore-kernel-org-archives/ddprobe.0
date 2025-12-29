Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0151A2032D
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767049434; cv=none; b=tZrdiEAuD8ROY41PunZWQBigkXnHVWeUasBH4dhMv1lQ0GqejCVhN25Fe5UvdwKYYjWyXqDEk3ygj5AsfXfGhn9oaKxGv6wVH61QwLZhGsPvkcQKripAmPBARLX8Kxps/UDprLVUy+terEjPN1Hv2sRjK37R0Tqf+5ybdcNMH4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767049434; c=relaxed/simple;
	bh=ANeQPflpOG4mqwxMyxBQZExEGnzQYLZQBpG16cyixmg=;
	h=To:Subject:From:Message-Id:Date; b=CcFRsspzOveMi6xPduz7iP7r9OKyusBIqPIjKJAI37dU/fnvIiqlY5AQqa/WgKInOmzh7p0A6ViblAWitVm3mmt0Cvz2Q6mqOAPa2B5wcGpHI5yzB4Fj+iBcyHIoe5xxvssjVAr9MBXcY++sBobfhNujSAG0S2t/qSP0JpLdZU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ymy6NgFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ymy6NgFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C75CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767049433;
	bh=ANeQPflpOG4mqwxMyxBQZExEGnzQYLZQBpG16cyixmg=;
	h=To:Subject:From:Date:From;
	b=Ymy6NgFgOS/l0cNOliXAmtetw4qf1yqpIwn0KQzmFSKE9q1SIaAFrdVkSyQ1wQvVQ
	 NPVSGFih3ZzCKEzrt5IFwA2TM61czYLZkaJ5vf+S0IxhjdcR4AAbMBDDiynclqyCVm
	 U4Bt54MxKgv+qG11LcTcXdJLNSe2+o1FIUiDT3eENArZUdwXUetLZ1aNUxNWgitJn8
	 r37wotIMmvCnpp/QHZN3vHtpOZvIF0LIF0Ia+aiIqA2rfJas5Hq1Vla6BdrVToYwBI
	 KS7lJP8ChSvsGEnHnRdk+XkaCUnQSXoWynmV/7SZAyS6to8EDJpNu4QZZXQ31nupQT
	 AxTP2DLD7MwgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DCE92FF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704943358.24224.5666475270305309730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648cac29e6f13f2512722f712bc7244f0381a9580d58f61acf62d67c712902e7
Date: Mon, 29 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767049433
