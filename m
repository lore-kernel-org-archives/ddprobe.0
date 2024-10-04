Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF9129422
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728046554; cv=none; b=EhzuGVd8u4xQuQHx+WrR3GYdj6ta/ILUq3y3M8k5crEglj/1T7DcYtNIwql7oUyq76QO+a3zb7Xa6Yi590BalLYa29T/bl40pLJk3TiVON6LqZ1XcX821spn51+DcrytLkOZbu6tLifmd3iJNQ48gPC8Sj9VG5xd1x2kB89GBKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728046554; c=relaxed/simple;
	bh=qEt1EaKxjjoTMe2fojgMLG0T0ksE2E5eDTHHFtzQr2c=;
	h=To:Subject:From:Message-Id:Date; b=fgJTS3a/ZmCt/92FLO66c0FU+5FuXuyqVap+oNt5Nq6uvBGbL7J+0dx2yGVVQDRQLnDBOE4uHUmEp9se99xfVmtcW1Shl0q6i/qI3JI4BVBqBU20PFu/saFjV/lGpCTDrrP5YTyxhEfO1KLJkwCV+sPBrFFo75vijMqb92auHjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqHkIeOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqHkIeOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C8FC4FDF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728046553;
	bh=qEt1EaKxjjoTMe2fojgMLG0T0ksE2E5eDTHHFtzQr2c=;
	h=To:Subject:From:Date:From;
	b=rqHkIeOy5xxBbd2NFm4zTJx7Q9kzkmy0w9ZNud7BYPF6/GI5dcRDvOIRpkHnvpFWn
	 hYEeU4phndFhbCzH0waaD9e3b/fPpOgMP7D6il7P4DrSiv3CJEz0Q3KxZhxJBDzvjE
	 a1bcEuKqcP3WoNjRk3Np7Pp2sCzcCfYj04C0zK5+j88tMmSXV3jEdERlv3pDbTPXF3
	 76NMPB2h3JOeE1YUWwF24chNl+G7Z5tilbBCLp+qc6ZiGu4hoaFyC2W4HAfb7TnQ/3
	 kKwYzXQFy0ijkKKzuvSNuf/XQtDaJc8cqCqDFANJIcswnE7HNSTCR23jIdto84beAi
	 9J4NrrU2SgdVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A2CFA775
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804655358.21850.10902332505601695052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03e569a6f8f7be838d2dd4e7e024cc11f18caf62f20cde170dc036840e05470
Date: Fri, 04 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728046553
