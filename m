Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C2A264FBA
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744204794; cv=none; b=Wcdmj0+WAr6+SlnARftRBSTCf0bLyvrkjN0x0OuNsKXri05yH0BjidIUR66clyNNxyx5DrXDzvzz8U4ZFkMKkUPXde/kaCi7olWFV/Lm784FMGHB7XTiT1JrwDvQs2PWElN0VhYlNKR1qOOuG5B9Qae7bY+9q678hYJN832vhPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744204794; c=relaxed/simple;
	bh=LewgxyKTEm+gjmRYYNJwsH1Soo8rIrI9E6YeqGcuup4=;
	h=To:Subject:From:Message-Id:Date; b=bXxU4xhtoAxG31TIL8uXrl0B6nAtDcdDHv0XTCMvkGmSYp4kNbSGEKqV+GAv7UejLPuf0YNr3c9MJsLdEyw7CU9CCC9GxS9JGbHt7Tg6G0Nk/GNEy+KDLnplNtn8UoWKMnNGJfT5GaQI2DgIoEL6SvqZVhL6k+1kWtEE3LUG6Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGgltriK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGgltriK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED3AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744204793;
	bh=LewgxyKTEm+gjmRYYNJwsH1Soo8rIrI9E6YeqGcuup4=;
	h=To:Subject:From:Date:From;
	b=gGgltriKZzq2Er+ezUwoJm+Akl0ONsLy5oxqLBrmI2/WRtA/KgvNE6c25Op3PSbqv
	 UqqS5yAoBU1jGsWRoSsR92Fiv8Qq6WaUXfFR1poj5mIPHoOWJwGjhCrAPg+7dxMUVm
	 dkW/xjCp0hLTAdw6mSZgJKCAowo0/9kD7VnVs7KRvmlgcN+bgrX5OzHGXbIiukWDZG
	 GNJ0rCx1/JKQI+6lt/wuRXawRPOKGPr5QhJsWiK2PjJKUD1xglGDoh6SbmEucVVy+t
	 bPnLvVpwRolJ7ShhK2Mtq9G56x4kYtWJ1Ek7i2kn0oLjezGnA58RCZD785wk7UiNQ/
	 hbBVlmi/RV8sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7510C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420479367.12297.17425493336972130718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4783ff51842f20f23f518c3c0ec188b7bc1b299a8f0bfd1ea4f7e8a17ab4fc2
Date: Wed, 09 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744204793
