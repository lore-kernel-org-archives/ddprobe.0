Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B11427A916
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784376514; cv=none; b=jshSz+EOGnrAYdJ47rK0uoRb9VhOpRstGjWL4ylFFZ1EhQGl3KMYsDbI/UnTo5inRXH7X38lus2jzvQTkZcrbph/V+XEDbysmT33V74z4N06FpSwWQMEZJeM4AwqTektCGMk6tPdolT9ZhyQHb+cCh8q+LhO+qgJW8p6r1W0XcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784376514; c=relaxed/simple;
	bh=LosCRTmVAu1Kkdw+Hxb/7hBseu+FFuNCRuIz+L4DP7o=;
	h=To:Subject:From:Message-Id:Date; b=ckqq7QEZkgLJgIOFVj2B7Jw6fYn+jeOk34N4h2rfpE3VUMVgXp3F9OS11co6M4zUFHy1kFjPcRy9FFWTMe3UKqBqM3vlY/fANCW5ZUlnqo5XxkMEkYrsXROs2MI1ku7xXIDwWaX/Vq8qdOVlJ/irsnkP3jpZlcYXfLfkfR7+9BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sX3C2zop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sX3C2zop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0579C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784376513;
	bh=LosCRTmVAu1Kkdw+Hxb/7hBseu+FFuNCRuIz+L4DP7o=;
	h=To:Subject:From:Date:From;
	b=sX3C2zopvN7b0rc+d02iAtsfj3cIfysW3G3MlNbh3B8XcGxLsXCJrefriB706XIaP
	 FcWbG+FnLBWv3a2SudaZrFzuiXBqJanLvuXgtWF8cQU4vM6kTMJOrkWjRFR13gMNT2
	 PYcv3OeBDdGszA23CnyO5wdiycTfm+mKl5HKO8W62oqni0QTKyBzXAM6E0jalZtEbE
	 ZE6diBC3Lt3NpSfa21BPRszwj/DfGhA8EJ1X7j2BptRg/48Ey9PpgL0/6D2X0zlxS5
	 Q0ovRM4R8pivX4mlzD/8AaPqxVLjkBPVoIRCztpIay4PGXbzf5O8kUUw8IURzKYLeZ
	 ADh6MeaL1OBWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD14EC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437651367.29844.8397510837936301240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478580b9e89395d8f3c4e4739880e0f8ff355e7984ea6e10ef9064fffc49259d
Date: Sat, 18 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784376513
