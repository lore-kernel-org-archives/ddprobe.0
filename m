Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C929454CF5A
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788876036; cv=none; b=QCWgZaKCURa42lNo31OPFhEJcvxwX1q24cGXkZ/QBQQbQm53OV7tCoxefBjlo7Tzs8P+k/IdGaHXcO8Q4KaS03pz7oq+TmHF4BN/TIx3VSLmhtzKbbgXZu3RcFrNA2wzqYCsj3O1e8MhIUkmmzZcuBK5cLMSib0isXyTfbozRk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788876036; c=relaxed/simple;
	bh=g4Oat21g6YISGPEqGtsNJbpFyC/ooaKvNQoLJ5SN9us=;
	h=To:Subject:From:Message-Id:Date; b=PsCtpyBLAnqJu1CwUByk01JynOzZUhE4CAQAt943OoXfBYftFj/rEf6OZiikLELOezu5SeyVp0r4UXXLljplFlSg9i0OH+L8LZ5YIE9Pcumkg96kOax8PKThhaSAV5zZZkaT7LQx+5+SjmCXMwzTnavuRgDKN5RrzLwNnIjo8Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtSwzxd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtSwzxd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D437DC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788876033;
	bh=g4Oat21g6YISGPEqGtsNJbpFyC/ooaKvNQoLJ5SN9us=;
	h=To:Subject:From:Date:From;
	b=BtSwzxd9mMC45i2K4dkH86UaAwmYMwFABXiEH46IPLPVgcJl2SxWeedA+OlCKUwO9
	 FK4myybhZoiwNh9ZzYqbIv0Jm2sFl0vMO0brKtdOan9lfspNGAk5XunBHYKi4PfubM
	 2TPChuuSpc97h0L6noFezAOAx6/UpzZVVPh9V5QL1bIywJnJ697sGEiHqMAOiVA97A
	 6nii3fNUONunLQpxYU8Bl9EY11Sr/WixBcyGSy0z0HKn9b4M+9AldV4b1vAbxh57CS
	 0v+3Avnjn/84MLoKSda+I6o5PwqjK/WzLNj3vfDPBUYrjVGONNfN9QWf//vJ5EPc9Y
	 yAI3npK1FqewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0721C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887603371.4289.220637766155782105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c16fce26cf4bfa3e492733957560bc0fb654140511a3e3b8b5bb722191e548
Date: Tue, 08 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788876033
