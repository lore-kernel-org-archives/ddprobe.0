Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0EAA2D
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734799554; cv=none; b=rpX3A4zCZISE564wygFI9/zxvP819lfOq5OkkkZgxa2KFXBTDvoW6121NwRH2SvuIxY0udV+X2+1ZwKiFKlPGc6Ftrpe8Dz36MPt+Ox+jqJuElKpMeO6SKzjTskVX9CBo76xZAyr3ep59PJja2rG7IuHYT/NTzz7lA3JdN53Su8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734799554; c=relaxed/simple;
	bh=3dfOt99cfUwWxmAeHBog4mzqt4rT+ebK5xv5MmMC8Zk=;
	h=To:Subject:From:Message-Id:Date; b=Xqe2YSfAVZQnnJ2wvydIEmyQ7/BaZRqyY6qpN28ir83uT4uGkr+N0mL9Aqs9eIHdk+LE8bO2HAqZt4yMvglgcP7YHLrJzIrgzkwTryy3vVkubwLFrtnZzxYyw4lTzTkxbg0qvBuwhaCprVakXxFpGOkTP7AEX7CB5K6fpbFTxyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcx99+BN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcx99+BN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9842C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734799553;
	bh=3dfOt99cfUwWxmAeHBog4mzqt4rT+ebK5xv5MmMC8Zk=;
	h=To:Subject:From:Date:From;
	b=dcx99+BNY/zne8+DWFe1QYn5J0RFu+MiVbg/+x/E4tp0mwUyMECoRHwAe0RouHoRh
	 RxHWjcbkoJmZTZN9tMqqJ/jqn6SF3W7MwuVEjHAZVTyNPQ85WT7ljfjuByzqcXCjqD
	 c1FkAdNeb0Ukzviu1QafAVe6O2Rl+bzJ58ezqY64FhrgMeNUPbJ8Gwtm3L7c/bUe+P
	 l9OQNc7FcUU2SQ/pJCPPM33yVqk6I1q1HN8kjKC2UGNnkKjkT4pP4xzVSmn/M1SPuN
	 GWlmqS4dtDbMNpZwCAaZ20t3h7bp9zH8S5nd8eQrpZaUWcGS9iamC+ZOumuXg2yH09
	 p6d23PlKl/YiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDEDE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173479955362.19869.8717176180009593597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee810d54aac1adcd8fce2c14ead875b4e549b7fcda4b7910ffcee277213514f8
Date: Sat, 21 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734799553
