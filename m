Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A187081A
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759107594; cv=none; b=hwtMkDvTx0sIDDnNYG9E5/zJwbB8pUoTX69AX8ZsMMhJarjgZRRjDwlQdUuTwFFhfiLm+jeAOe6d+E0FOP4+/nTSmT0yEZBGqPJvUqLgV5cmDvrbF4+XoiKjuz3w5nVMRBMVaUqr07SHq5NOwpgB0I9bukFwXgAv1R3LZ0lfD8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759107594; c=relaxed/simple;
	bh=JZUYOu70GVHrje3BrwVjhf45sd2+3uBhLcdVYd+3EKk=;
	h=To:Subject:From:Message-Id:Date; b=Ykh4FDDoDuWNjg1xTVS9GL7u/dye4LmmGXyW0oV13oYjSWk0HQKWVEZ8f/m+LvLptD9nrMF1Ata4ZleMP7KrFoU1SxJqPE1bqbqOqqCsRhAmu8F+7rL9sk3eZJtgYPpwnrhee9I96+Gw1OJEknifOr8vozjbJKPKpTvGksDTwr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXa3Spnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXa3Spnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE35C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759107593;
	bh=JZUYOu70GVHrje3BrwVjhf45sd2+3uBhLcdVYd+3EKk=;
	h=To:Subject:From:Date:From;
	b=KXa3Spnr+1hISM2mJN222S3UJcmhJLVBdMpFE4IScyo0rcHzjmYUZQOLktS+15AIw
	 vtB2lqIP3BEum2fZNGANJ7QOwzmiKu75HW+3P0M6disCI9zG+bSIi3SRbUX79zl0TO
	 a+Q0OY1DRnRIgTOg7a4q6tAh0OlQidRw6t8NUdQJ4d6eUcmP6XCZJBiQcaFCE+IzME
	 8PZk60CMjbJaiu7tGOVsWnNNGYqLqEbH8cqtbLjB/NPsTTpf5PfcRB9P8jNl/Mw54i
	 bMzF5RobbpW71iEhzkznkrk1IcE9jjCLnsNHReJVavn7xWmwgz5coXhtH2tHvABY0x
	 jP7DRj+0IYMgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F027CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910759357.16408.5573607067562331377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28109cc31e440573b03bee4773e86f84e03482048f1f7d04df64039847be922d
Date: Mon, 29 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759107593
