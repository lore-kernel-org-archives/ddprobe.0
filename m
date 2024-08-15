Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DE41448EB
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723698954; cv=none; b=nFJO5iEs8ktqLLh548uut5kDlAits5Un8HVzI5d9aHJftvlDUuC9EawPO0SjSmHTgImX/+/s3dijd8wR2uuxbOT2I5zUiMPiacd4ilz7m2y1fvxqMcrdxTo+XHEXL11LFcsY3rkgeoivcPf8wW97x+26GNbrtlops7iNCQ672HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723698954; c=relaxed/simple;
	bh=9V/JZAqef79IFKznOdt1QICR5/qGv70swTdc5BfoW4A=;
	h=To:Subject:From:Message-Id:Date; b=cymnbaeBsXZPiaBW6Jhi3DkjEVBGVkHXQbqX15Di5A9VYl9m2ee1F/ElLSfHl6C4WQBQFB81ziLvrUgsqZJ8o8r1RT0rCzcvJCM9v9YJZexyrK+mgw5UGHDEgIn/6xu7zDyq5mhnU7KuU9icbQ35FEvCRVT4KgKrcXFWKfqrcE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVW44vbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVW44vbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F8AC4AF0C
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723698953;
	bh=9V/JZAqef79IFKznOdt1QICR5/qGv70swTdc5BfoW4A=;
	h=To:Subject:From:Date:From;
	b=gVW44vbFO0COxOwJttjHqgxSoyjg6dYZ6W/gMwpKyr32k909ka3YTyKBOrv6j51Xj
	 Xi8Rt4nXHlQc2anUDCYyFzjCD/B6Fco7Bcrs7WFPMa9V5/FvRBg60zFDX1Ta26fPU1
	 MZ6TlbLKO8uXDXX5FGS7pqxT90ac0MYXFQCv0ctkiXFvcFfn/SFh6o+CLxVMzIFt4D
	 /K1f2632wiQMvWBRAA0NFMwAhMkIJnC4lTCAWZkKV5DtKha45chbW+TSHv45fi/9/U
	 KWJHbSYt4eNQ0YILSgtlVlbKXMAazR2tmE7gZxeFPXIcMtxfLkq+crDPipBnUCIfGM
	 A7cEo/qFZttPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FDFC3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172369895362.29181.12748883126930772441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87cf2c1881b108494ab6fa416af3062d918b9ff0cac6ec7451508ef817cdac07
Date: Thu, 15 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723698953
