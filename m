Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430D627E07E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785382234; cv=none; b=HpzWuxyVTRpvl8dgxhgSrvzgmB1s89kVopTq1X8Fx6xTPc/6jeYtpAyW0D9/BkZbaFxUfwH/9otXq6VGVhUeGxfAMyIGTxVXQrfGljO8ln7Vx+rj/3RO0KV+QJsZoEpkkXgSpz0Y/lUUppnRPdAN65EE3jkf4o6M+puQ3yNBcxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785382234; c=relaxed/simple;
	bh=I7DaRNma01kxINsUwwmrVefuKH8LoNonBA6fZ1g99XE=;
	h=To:Subject:From:Message-Id:Date; b=ELm98MrKpXpaIN45PXswXCrxHKosoF1rDMzENvHKZKILgkBqYI5ChrnXAFwauL/P1LWu5AIftwh0WkSaY0/opdBktRhfO4a3O7Kfe3F0cE1QgUoR2+6nyiUUHNySATXTk1vI2EsRVsxoy6I43L3qfz5/78Qx7FiMxPX04A/tsbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWA3eq1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWA3eq1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD6FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785382233;
	bh=I7DaRNma01kxINsUwwmrVefuKH8LoNonBA6fZ1g99XE=;
	h=To:Subject:From:Date:From;
	b=KWA3eq1asV6GCJ6XA+AtFW1p9g2Z5Q+b/Kh6fuQ6wUiKdpVyfKTwwqV32WJdt5K68
	 8c9fED+VYi4GvNaCIiKD3Ki8TtCWiFt9AvJAcGGELfBgks9a8weN3wdQkCT9sHFQVw
	 i93LtHYNPaa58fi3T+kherByOYkx+qvEBbiPTYz0ZWMhBbwl1rFrAbCs/K40CZSpiK
	 gFwoCmViLjyDw8ewYeFSigGfNl93FbkwGFQeLsnfTDOmZ4lYJRqOC8xyod8mlDlPcS
	 RtSkKHoHcvWZvVBxsBFgK9R2fUaG2SSdOZptP5Dnw2boG1cEMAoIxGKHVNK5eSrbm0
	 VSKL3+VNcrsKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9665C54FCD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538223368.13395.8016307738554491007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3494a928a0f4f2f7c254b02f85af2c6a28b3e274c3eba4ccae6ed6425e025b5d
Date: Thu, 30 Jul 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785382233
