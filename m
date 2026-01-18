Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FA51AF0AF
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768705434; cv=none; b=QFX0m3Iw7UGUeUXS2d50QC+VveSSTXLVF7mQ6fBv7+mOz0eNs/KMoatxpDPFb1rB5tGu8+uL23ty4pfu8sTuCByZOhVtwTowl3Wog5bn/FC7kcyHVMBHZOQuhWjf0oTMk6dJGhfvRMekQRjVp8/vvXAgDTs/BSmvb/v7Di3uyRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768705434; c=relaxed/simple;
	bh=ti2vWn9R9w/VZAcwehfR9dWJTVZ9o+aZaUZVhx1bLuY=;
	h=To:Subject:From:Message-Id:Date; b=ea/OkBn9jxngy+2j1eY/BPIxcX3mWkOvQGgbc4G4eW3l8hXq2dM+fBHdW1D3idLIh8D4mSlIamtRCnPcVDM5HDdGc9IWxJpJHsILflB7CY8R0SNc0GEGQyWSiy90Pjftd/o8zUMi27r6ZZyRRET03n/M0xHvTULQC0QLXSFrxMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxEQTuHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxEQTuHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2119C19422
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768705433;
	bh=ti2vWn9R9w/VZAcwehfR9dWJTVZ9o+aZaUZVhx1bLuY=;
	h=To:Subject:From:Date:From;
	b=nxEQTuHOS344iyXurXz7os9DOIaeVIbUJRAW/a5dGahdCI5hE+noujXkAQWWanYEp
	 pFGspzTwVBkM98THAR7Wl24n1c38RAvRw0W7oTXoVvm4koWG1QvmCjSgZ3130uo0Ja
	 Q0Q0+OqwLmQNZFsRsZQ9QqYWTHeuu53yB/iJ4TlaMmCMrEpCkRtqJKnVTEMt5+EPdf
	 mA20dkqNTw/ZyjKQkVnZ9b+bE5YIGZe+UZueFEkVlx2Hk8UJBwYUJoP/VTH5aYW+o2
	 J0x+a9DtwZ7w1Drioa4xQNzv6Ord7tUnBHlae3lGTj92t360+PjjvXLQhdW/uP70aj
	 1ml2mggJhZaRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9CECA5FEC
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870543361.14571.11022995740808990439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32236f20d9961f1db400fc9fb322e1149d475d88d6121bd8431af759d66cf5e2
Date: Sun, 18 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768705433
