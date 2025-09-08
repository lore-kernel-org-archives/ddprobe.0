Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9FD30FF02
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757348394; cv=none; b=iZ4BJcF/Io7hSKJ8aMXgBmBkCHoTXTv0NZNzXHsLek2fvGIV5K5203Uf3HmzUfoLUfCbAtbnhq8xU87a6blXFLS/StYrRTLJ+7dwCX8SZReDK8EwRHGgCj4/flqvERKo6XObloURt9pIasHQOYLzHrBYG+fZ+XIKhXEZ9Utmy/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757348394; c=relaxed/simple;
	bh=xLSzYJAfYhAVCqeqK1FJTFdGzaUJe249+3T4Vw0fE0Y=;
	h=To:Subject:From:Message-Id:Date; b=sKoZI4tbbIZuAtx4tDAVKF68XVkwGOJ9gKMc+wxP+vm5j5zehFhyJwcCmuAJf2PGJ56zPcLBS1m3gQOXwGW95ttq+TOkjU+7FdrgJ0CoL8bU0PyJZVgNmzJdBlU43gYtPHxLXSEULxMi25PavsCEDkLSoriYJ8Ap6O+m677oiHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFT+oeHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFT+oeHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E55FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757348393;
	bh=xLSzYJAfYhAVCqeqK1FJTFdGzaUJe249+3T4Vw0fE0Y=;
	h=To:Subject:From:Date:From;
	b=YFT+oeHooH9u5pFiQrNQG//t6P5aAfrVyhQYmG1lnwSPOs+F8YVLB7FV4ctcJ+L+P
	 ndcNfAfDQeZ8X4otvTVEDlM8MCzPzQWFLgbc70L10jhO0bnJ6U5rRopSj4Z1Z1x3Ko
	 CO11AabkTPEHtuJKR9R0AWAiNIdqKgDkZGYg/UDcKUCqWMnh548bSWRJeMfLEODc39
	 aXsAsjdbNp2PVjY4NfX6DMSJt+wRKaB3W1mlIXzcH4Uo+/k/fgN23DfaBDTopB8Aov
	 lj142BwCUxIB7yWcQ0OiSvH6ctYdan+GQMMJJ2lVJCJpUHvuOYRnZ+oXgtblbp80tT
	 EBL3wWcOhmzfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A3CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734839357.16349.8095511754164032779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197d4d3011672ecb51cbe2c9bb198e779f75fc03de9ffa8d39f36953c29dee05
Date: Mon, 08 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757348393
