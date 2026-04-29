Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8F238D686
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777448253; cv=none; b=W/m9fzt+bhWJ1ycJDdqLhQDoUJEQS7si7TIq88NCsf++uQEzu1VhVJMSz7ZR9tA52AsM3llTPuB0ApdG184McJMPRqcozYhI/g4TGyAvl3Sju3cQdMws66aNE/cTWjr0dBic/0kCUZBacy/FEUQw5Ph0/FdGWbfiJnV3lsyg9UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777448253; c=relaxed/simple;
	bh=hIQVZmyzNeP+HgIrOSBsM1XaIk6J4xm5JSl1/+DAozc=;
	h=To:Subject:From:Message-Id:Date; b=f7HKoKlCWxnV58ejVOB+j1RxrR17oIyfeN6IxG7nZWdSie4BrNFOPSWN+cluty0DGhkSA00E6lXtctR+cbV+NyeLYJLKavOrhOdGS8df9tZE4X2RtVNwrshnagv7dnlAWZcJaCQUxpPJUE18cPQYx6Y5XfztFyhy+wSOfxV3j+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRTRfXam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRTRfXam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3FAC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777448253;
	bh=hIQVZmyzNeP+HgIrOSBsM1XaIk6J4xm5JSl1/+DAozc=;
	h=To:Subject:From:Date:From;
	b=YRTRfXam8f88xGPf/UistBfdSQuV0+acp2qmTsUQL4HhZTmVAPOFMwpTYsGw7fQ9T
	 2Df+Qdb711EKSVeReLqU+s4oUFR7tVedeDROpdUM4oBbYiYxHhkoks/WTiuzsZbefr
	 0gbThdbaCGodWzWW5Dys3j/y1/8+TIyF5kCDw9n2leuJSCQDurg2SYqsLhR51r9Pwz
	 II+3HglmAT1oNMeh7xBdbKwUoQNOEgQGwZO8/bkzNlcIOoZQ03MThREC/6O+fgH1fk
	 woygCUeFwywnMdmlyi90laU9+eL6QsPV33wFhu94qyehJdWfukV3oVFCa7fnj9oqIl
	 sAw3VThBZ1mlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9252FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744825368.24104.7120381082995228080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8941ad4a38d4ea90c0ce3ad8105264787283f191e216ead5510272647f1d0fc3
Date: Wed, 29 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777448253
