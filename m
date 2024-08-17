Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E06BE68
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723920354; cv=none; b=S9qtSjJ161vtZixXYcN29pHieNYdCuPZIfnjG3jYHYE2r/F0p4JWJGojSWYUhBt1KMvB3zRPYHP0myUVgKMiRHI1eCPI5qzYft/w6mRBeR91KBwF4BGr+SxjSz3eamuWBRy66tpluydUGuiXUBc4MnBcC/awYO8+Ui29cSYA340=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723920354; c=relaxed/simple;
	bh=i4mcPfm9f/VLHA1Ln62jxOkJaRrsQag2XB0BJPPnF4o=;
	h=To:Subject:From:Message-Id:Date; b=X0IENWNzsEYuOCpaoh90oIilWTdQOCMtjXbW98I6S8+RJT9ZcQ21W7sX/q7Exqskk4+oHaek8Aia/dQWHbWIZdqczBmowCB3132EYupnD0e6DN+lF3RFm7h0xGpHMJyZAsHCTcKrKN9gsaML2AzSZUH+vD8ubrqXGDgqIZczOxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7Wmln0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7Wmln0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5752C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723920353;
	bh=i4mcPfm9f/VLHA1Ln62jxOkJaRrsQag2XB0BJPPnF4o=;
	h=To:Subject:From:Date:From;
	b=d7Wmln0rYDsmiPBX9uUaE21qzuWWn/KwRi2Hhdu2tKhrmoBX8i1YhlH341YicZ5Q3
	 zoI8PZXeY9rxw8R+ozQcA4fK1QK4eFbFIAoaYt1vhodDZJYfn512HZq2TJMrBN2vtc
	 X06bUdbb4IKJlGtkPu35uZVa85weKLxDu6r9rXxAMXuPVrsYh6P8NJ5wGHI0N6fUBp
	 Jq3XNwyEg8y8GLbz4sT+GrSfhvkPQGzDbKi8CX8UlZsp9BDqtwmK6a6aeuoKpevhzV
	 ceNkrNdrDKIufZEOHWZ4+X1b4TSM2fNjF756ZAnunaLHPXGw3pORnObdyYIxqRTr11
	 8DU7rXxN6ivUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B327C531DE
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172392035361.475.2647483469239666476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155aec4171d5ab978380759a5e42a854f8fd5840a56aa6188ac8e308586f6db2
Date: Sat, 17 Aug 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723920353
