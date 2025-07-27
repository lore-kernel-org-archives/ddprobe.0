Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D428DDA9
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753636194; cv=none; b=nm6HZm9xJNNj/4WcmnsaxN52FTGPgAHpxcgVjAjeNKdxOPbUvD6+UOXlJcB924RD1ff3teWQZ8+ve7fNePQsbNEZDjJnVCcMXAzvASa25kbl1BDIhqJ7Nbhcxc+LhWrA+DsWqAQcGmDGA0FhmuD+LKk+SaPkTnR2hxr3hVWiFhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753636194; c=relaxed/simple;
	bh=VfOkG/avhDtFUVpf7TJvGfYotvBH1zos0mqRf50IAsA=;
	h=To:Subject:From:Message-Id:Date; b=FCVm41NkytvNu0My7Zmh0TFWsAXpp4UJ1UgVAWqD/70ndjjdccXT2mjISInV52Z4tNPjZ6gMOqM9VBS2XSVeAoj8lyes1wg2y2F7hPMuF5Zqei4872lYvVXGfslJ9kEA9042KhzKx8UoyMiwkoScYXXagLO4Gx4MqjHrDPmry9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Md4BpNAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Md4BpNAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A5FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753636193;
	bh=VfOkG/avhDtFUVpf7TJvGfYotvBH1zos0mqRf50IAsA=;
	h=To:Subject:From:Date:From;
	b=Md4BpNAnTu7qPNSe72OanP9aoLk9NIZ88OTQeSLPWF9JVQQNfxfZjCZx9J0KHKwmO
	 RPmG7tVZNNM+v2iPj8EZm3keasGctSILsq+ZefGSYWfZhxKbk7nn5k6a0sr/xwtaVp
	 LoFodZde6UJemFK2ZmhQD0oxPgoRqo2MRqDiLXV+vAd+H7B4Wjh1o0Cs8X/eEYAANa
	 iBV8HefMUVpc5RaZbEzooh7J5U0ka4vspdrX+OfEDW9IACfZmuQQbKh2MULJppO019
	 TVXN//005cfOwSH4TOMqlSiOiKRxX2Y4cY1c5SsLXeXG/LQCeMUX1Hl/sNP+zbSZy+
	 UlyOkiWSBN3AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B37C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363619357.21430.11681721686228851544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ca27fab8f31b665f67cae57feb9cc57070c75cf27dcec47a3d8988cc807109
Date: Sun, 27 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753636193
