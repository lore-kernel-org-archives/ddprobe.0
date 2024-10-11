Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3922030A
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728639354; cv=none; b=OvsdCQOYDYoQkeQHeF11ChYQPXsTDdKG5zTEhF3QmGmxvJuNvsw+LuLzMoRbrjcVQVsWfxbaBJ20Xyd6T2y2g5vjfGl8NcQ6TPR4RpAr2AaNSLmXzwwYEOjCOK9qKODQiDMCiqDyr2CqNsPTr2AKRLrgi0syRDKhRUH3a5s3+vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728639354; c=relaxed/simple;
	bh=AhdmSiuuotNEIYYk3k3o6/oHiApSfdUUGZObBZKiKNU=;
	h=To:Subject:From:Message-Id:Date; b=uJX9KOoDRHchYxJlNXIgFK8PA2CHjoOfxAtEYE/KKmgmWAhQ33TStQQUPsx2UhmiRnJzfxs/kPa9mO4C7bCi5bKZixqT3I3ByHefZfwqTESQDQ7YRqGNNO2t8jSsQO3qtDXU4RksWvYsBQROkjnhAaP1Z6WyckNYm1uKXwZkPMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdAT4m/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdAT4m/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A61C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728639353;
	bh=AhdmSiuuotNEIYYk3k3o6/oHiApSfdUUGZObBZKiKNU=;
	h=To:Subject:From:Date:From;
	b=PdAT4m/n6az9RPdPEX3Jissv0B2PN+I6GCUdzxWEc735A6oW9oEuadOUwYlOMua+S
	 PHsN2qZfU9hebwAY+9GZ5nqFnFQ6+Q9MRJ5j9jMbEHp7PsQ/c441wLZwcXndL8LpW6
	 UeUB8Ta2s2HDMo3ov6f2zo40NCabon6okmTDG4c2ptkGqxYX0yBzpJ/SQqc8qgD08L
	 h+CxjV16MDU+P0X9QirQ4RwoE3ZnvAq8VC80sMC9MZWLV6g5bvvnnJFYgkbMEjvh2T
	 OvTs9lc/0gDrlNoUVPy2gUX3fgQNPVF1lkJ4dNQSn/LbUIHy6obuZ2zRh4TbEe6TmD
	 zc0dVs/SqXd3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9926BCFD2FD
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172863935361.9539.18127712064253098027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ebee276a7eb676d4dcbb4e86681fd5cc0501e20a3576451400346f8fb2645b8
Date: Fri, 11 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728639353
