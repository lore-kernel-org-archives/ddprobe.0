Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA0F21FF2E
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787989834; cv=none; b=qTf1gMJZA6sf/n7qRDcc5tCxYN7ln+Slc9HMBnOVEevSBZFN/bdQD0oJPgR8f8rWuyhXY6flYdJKeJN50BqO8Dx30Q3BNd+N46DtwpNh+l0ZNNHAS4eiDDKNM+qjNwG1N3mU5bf5q53hKomx+XnvKVW2zJYfLgirHUpTHe/HPj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787989834; c=relaxed/simple;
	bh=pba4vXZxNgvYffw6FZthWx+Ze5BROW0rAcNx518O2yo=;
	h=To:Subject:From:Message-Id:Date; b=FP06qp/DbfIIbx7sVbfQ/C5SM0YS4ybZCXZcJRCHWDx+aey5XTDBIRO6t5vRR9pbMFFLzbSrnpBGT9FVSgiagDlV0POckm0x9eZM+KoX0tynUTXOPQuHiG7MiKvKj9RRnoe8WC8Qo5KYk7i5db7qPmuJkCS8Qi+q3mv3bgsK5C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huK5zmkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huK5zmkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D147CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787989833;
	bh=pba4vXZxNgvYffw6FZthWx+Ze5BROW0rAcNx518O2yo=;
	h=To:Subject:From:Date:From;
	b=huK5zmkA1PabJGwxQJNIgw/58djFNkDVLxw25YJwnqJVdfSNafKwakurBJVEPWfeo
	 R43ICM6X7/2QE9uRoH8It3tRkZsU2wSM/jqyO6K3gH707ATD9qorudZ5yrmPlEtdYs
	 e49yQjFujQNzcVWEubRGS59u4u9cZcpJnscvq5xI6fi4LIvmIXGzyQZCrSj6PAaD5y
	 Cyx+wrvmYNFuGf+cAExOWDnKFZgJrHNzUvVt97YHU1KpBNZFQ21J7Wxj5FtQyKUE8b
	 bB8Zr73nQ/yNGGQjufD5w+ENNGHgWVMqNp30eNIMtGd/44TPko0LIyi+Lh7KQBMKSp
	 DEMC8+O90AYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD418C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798983368.18267.9776694233696147652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554fa0f1c9eacafdf5b024bf5444f3c8e757a05a97381538b18fb1fe0fbdc635
Date: Sat, 29 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787989833
