Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8502153D2
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758280794; cv=none; b=ASM02mrFBIAZ60qW4La8LOKO0oUAA6jv7rp8TBvuMCyQSLx7kNhBn7bOCUOCvV134Oq89eQvqRw9brOLmH1rpwi3o4RdzHf/NLDHH4xr3al7SpJZv5GpaBjrAAkSzsvyyu0KlYOY5mw5y/SMSumyV6IDsBsqwamcNOZhfmqv+YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758280794; c=relaxed/simple;
	bh=wIUE+8VB3+JrEV+13+m93N+2YxwteKh6IpcNpo78Byk=;
	h=To:Subject:From:Message-Id:Date; b=CtJagwISgdzj8UuKp2/Nzr2+fj2QZ64LZl2VZS7UCq01NeeL2FnKt1tgn8foycx6J7BMlgVbNrNEvu2rNe+78Msh5nWNRUTnZXTLaHRLY65MxqqiWI4XSlg1h1drHertUb3DqcBM0sYXCXIt2L0Ks8EyWDBUKUyX7Oin9Gtk040=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOUcfAq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOUcfAq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F0CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758280793;
	bh=wIUE+8VB3+JrEV+13+m93N+2YxwteKh6IpcNpo78Byk=;
	h=To:Subject:From:Date:From;
	b=XOUcfAq+guv0CXCw34y7iKJOxpFCa6ivZVfk1y94bWhXqwCYBCCqfBaK5cN/Rgjsn
	 3uEtPBAeVqLyJzQL/Nozt3V4wqVNn/bkNx+HRlJZ2UETb98kEUY93aH4IytON7TOc8
	 MRRjxM8XOt6vhelg7lzLPVeGM40Y65TrBcm6KsPHBUXJ3iPhooY2CJeeaSlMMmS2Jw
	 1X3laUhXdhSG3xMTskUyVyu+kvV1/jsdDzL62wYYeb65rzt5uS0ZCfN6oF+zUfDg7S
	 yxQEkwi6NAbbN5WQ58c9EIqyaxecbZv7ojy1yDJ+2AtCqmqNpVma/PH652wzrVhh34
	 4HGbdMqJX+9ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A93CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828079358.12361.2166950143163586480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12d888f5e6e3ec6427e91c97a3a4ff7f5fb9aacadb4e08122f68633c3fec2bf
Date: Fri, 19 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758280793
