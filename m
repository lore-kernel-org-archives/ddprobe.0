Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224362F0C7A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762808394; cv=none; b=a4F0BYRzkz5NRzSkfRaqyi19bm0nWBzQupCe6cVoBY2QjeqvL9wN8dX5ctxYwENNL/7CgWzP63ED8TAWBFUb52TkgUy/TzXZ7qdjmUgwREn9+i89Sdpk+MFVZcDRKftrj2XwYAnm87E1tA3c/41i0fivMAP/Qbs2SOPg7EIFTO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762808394; c=relaxed/simple;
	bh=LZeu5BKTIv4dsnSl1GiaPiOIPNptc1GRib+2SEpH/48=;
	h=To:Subject:From:Message-Id:Date; b=YQ9Co91bnwYMOZBY6OBofDij1CUie/YpvsnqHucbr0HAYHRRWUGk7AWZ5i8GGFw9rLpmIaZgROTxxcRhR9QCDYlrhiHlDYeEUsEW+Qm7kW0YhM3vIJqlxu8TrSP9xIlZ9OaLxoQCjLUpBm+1vnUdXJm+9yiL0Ex0/v9KGj3Oey0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/fDSiqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/fDSiqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B80EC113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762808393;
	bh=LZeu5BKTIv4dsnSl1GiaPiOIPNptc1GRib+2SEpH/48=;
	h=To:Subject:From:Date:From;
	b=B/fDSiqImmwh5nh6+KLsZ85ya6ET/AwCzp+80gcrodxreR8pbV9ZUF1f9PIOqe8/N
	 3zWey855vsV52dYu42Dsz1Vl0j3UUPsKBdyQwfLUH6BAqHuqLG4Jc1ae2o/HPxmi72
	 DD+RpKYmeJAxy2TSkdJWC1jLqAqZU4NvItc49i0j84yOQIjhLtugsAfsBDSMRUmHnr
	 o9noIfLY6bcmdxISplYbb3qVaGNhUWQQiicYnkSccmZiJB8eOaPZqIVo4GxHpil+pZ
	 wKq3wF17pDewhwoWVXCkGIvGtfsWOjt04hIL1yVsAQpYGXNPdRVFyw5XOO9La7zyz/
	 z1kNFQSghXaoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FECCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280839357.12699.6640564108835509944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb2c6b2baa5252ffe6cd0b592b166a15f6528d1737114c3f36e50d65bbded11
Date: Mon, 10 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762808393
