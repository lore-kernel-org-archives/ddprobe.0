Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2835E3D561
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775241934; cv=none; b=PAsTx9CLIFx6xMHeq4P/zOdyZcYIBNGFklIZsQKf6RkV0/mvHBguBbI1iU4SpneiFfTb7rxkRYmm9gLKJcrLtkbRyCYt0IpWhPefo/iolEinG+68RhBgsveI5ATMPLDW6FRGPwH0s0Cok0aY5/OH5Zv8hGRsFkTzdqrn35tI8PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775241934; c=relaxed/simple;
	bh=USzI+Ij7dkPhskA3oKsqviRcj+SfVuemdXFN/1vked8=;
	h=To:Subject:From:Message-Id:Date; b=kNWQfulRse2SjrLZsdzzAZq/hHDUsqJh9OGzbxi2FJBSh9fC7j9OLrp98gqRdl9H7tVWcL6Q2bcTrb4z/uy7MmnCE2W+W6zf63mQzKRKpYHFXY5x+3uxNgzCvBRbSdeh96Mk0HXmcw0eU7/l7W2GQ+AaJ1uLcwQJP4DHeANueBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZhC8zi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZhC8zi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7860C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775241933;
	bh=USzI+Ij7dkPhskA3oKsqviRcj+SfVuemdXFN/1vked8=;
	h=To:Subject:From:Date:From;
	b=DZhC8zi+8jSSyWUAead+gpM1AzDmPghb5PSH8sMlPDaymyPnTIdrhDUze7eK0ocZ0
	 nEVNiovnREqmhZTTCo2JNYu4+rwGXwsEdxTRzGSHpiPZs6AES+6Tmr+q2c1BTcbh54
	 s6T0wqZvw7Z6tmgt9c7uTloppHmxuEk8ZTKQVOKwZn/tqcMGMJHxYG61qTqQJaEA3b
	 TpjUwv4pIOvu7qVT53hSZAXPyAeRWRyuQpB/Mm2gx89WDtgKj0QuXBnZhmCw4RY+LT
	 4Gk8uY15IBCSj38mXru2W2Rc6hMT2dj5bJL2+qZi+MOsE/7vYtLKHL4lRNfl/84ffk
	 /73BZzxN03E9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9624D730AD
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524193368.18393.7083983989201580051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75109eb9f90650dbd2c64ce0e2e3244417e50530b3d8d432a33bac896797319
Date: Fri, 03 Apr 2026 18:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775241933
