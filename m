Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C8842E427
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791553834; cv=none; b=jZNtOuNC9G2Il1n80vDHrfYo6Cewgi8qDZlDkxZpWPOla5mVMO/XjhteMIZV+hsed+7GvDzyXQAoQtBWOQ1mOaZd1FM/cY5erHimbQV8l/LHVldLpjGU7GDc2VHG02Ww1nzo1788/3BB9u7UdtPdaU5pLTjRVdC04cyLJQCSatM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791553834; c=relaxed/simple;
	bh=l58sWx0P8KdLKo4vAJHbEwRqMPFHwshJDY1TfBDZTnM=;
	h=To:Subject:From:Message-Id:Date; b=t6MPJPlYduBwXM/LUH4xzWdt6DK06IoTCAgmuflZTZeywk8NPWS7t49g9iolZnJ7dwC+7M37hihafvzgWAUlQ5lTwmOGtUt99xmj4MBSGMI8clQmlWS7w0WHGSCMc8Vm7/bFEQ+dGWvp6csvVyU0H1xzfXBXIz01p/pM1Wzi9bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbUGXMHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbUGXMHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11FBC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791553833;
	bh=l58sWx0P8KdLKo4vAJHbEwRqMPFHwshJDY1TfBDZTnM=;
	h=To:Subject:From:Date:From;
	b=dbUGXMHgDIpB8pGoLHwSNa9xpjjjIR96S+G5Sdvg2tWl2nJoFXG/xng4UiL2MmpM/
	 D+t34lJk61g9s67xmIZefhhV+LlED/gUZAs31gFWEETEbqsNY0QPtuTORa/RRpv9GY
	 zWX72V0QyTee9s1jrDyab06Fv4dQ5WhaCwrD9hqABPnmEg7t8jbJ1g7JRk1CONbCyS
	 NBZq8N8vH13FTG4Ko7VzVgOtnzIOofSDUCqu1NesJz5M3wmPaoLYD3TCTus54KhBea
	 BtOdzdVoY6eQ7hMADSHX9qCzueagzPOFsBM2BoufUr/kvNbktOh2xP2BeDlkIDNe2x
	 OiUucV2kgnnWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC1ACA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155383368.20159.1788444002359464077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b765df8e0da1054271de20d6c16d811241ec34235fb1798948d6020e2edea216
Date: Fri, 09 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791553833
