Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B212C236D
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757975995; cv=none; b=A9BoyZAe4AT9Wo8N+P/MD8ch7l2cFd1jWxW69Xsyg0W5Pgkx7TMwnAjQ6bUxdAOsTRi8XtXJ4NoP8zRgCLIeYmWE2ho0XPNfQx/DRxK41oYu4zNEy0dKd5723797mtLQblc+j8e0hMXeWYl7epTKfmcRaVoKaHuM9WYzO0Ur1fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757975995; c=relaxed/simple;
	bh=EgLEEV97G/CcmW9Ly2/Nd5NZDGAN+VYl096U3larN/U=;
	h=To:Subject:From:Message-Id:Date; b=SxiegGeLgawoMDlbQR3LUW94cqkdmQ4WYp0UOjGWqP7SWYdsb/jVFp1X3vP/TbHOtTopUFSZjjCGK+A4xVdMpn1ZOnTCt4DShPVJR1Smpz/N2MZ8L2g6p/rFqdmYg6o0TwfBf9T+yvluTOJHNO6ydBKX/USJPszCeuTwS9J/kIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ao9JI6+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ao9JI6+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECB4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757975993;
	bh=EgLEEV97G/CcmW9Ly2/Nd5NZDGAN+VYl096U3larN/U=;
	h=To:Subject:From:Date:From;
	b=Ao9JI6+Wc3j3gPHkaJdVHz7RCrAhyB4CpTrxwbOq7w0GmJfP6yaOtJmD1nKZZcHgP
	 U7BU2nNQnZrv2Nwt7+8vDG+grukzfiARLCblSLJc2WKeknvXhKFcyZs9AY4EVCyDYz
	 ki7glk1Eluwnpafz4iJr0Mi21GBRIHpC6sZvPl0W6SIOCrUGoetL7GXSJpuZCqNMqu
	 emf8Ow7j4cJNdgUDBvOCTA+pAIQjq5W65Lln7b/Xjh1w1IMOvqWx8XZwDfnqSPX+8S
	 hXO/ajsQUeGCEFee0lXKo1Sb6V2R2xBw5f5dvzKGH8nbnz6Y6AO//JLW48kA/tHgvu
	 xpSKrITre/YvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC4ECAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797599357.31394.1102332298398046489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b665615dad12b50cc6054bd3ff82ca2e5294155a2b44d3253cdcdacaf037dbe6
Date: Mon, 15 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757975993
