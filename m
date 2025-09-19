Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7859319604
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758295793; cv=none; b=kf/m5FQxXlK+jfJyJLwlY4c2Shw9j85qAaxQ1Daq/xRoSfLtg0H/DKrzGokdjOcTZtwfzZom9DSIhtwjF/vkJjDUB8IYhOWZF/fe2PYowvkYtPCMg9K7NdaEu6HJqPPT7nQAGrAQVgAUQgh4/67HO4D624now6buYl0c10mwq98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758295793; c=relaxed/simple;
	bh=6l/B2aOcdsiUK2KmAKZqf0SUpfeW9uc9NDxqEqtOnUI=;
	h=To:Subject:From:Message-Id:Date; b=BA12FZ0kAdS8wWRa8xcaffalMN4FLrtx2oiqaKLP54nW/MO36O3NoY6AvMYAHyUN2ePS6ksYtr23sstUuVLTErKdfCQXrVg0B7QVugQMXiEDqQAk9MiNezPqSurUQ2tgY2gjK8hJIUKAtBbFuNdmziZHD4M4mo0PiygjrutJyxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK9reYYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK9reYYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EC5C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758295793;
	bh=6l/B2aOcdsiUK2KmAKZqf0SUpfeW9uc9NDxqEqtOnUI=;
	h=To:Subject:From:Date:From;
	b=CK9reYYqHZXuTDRYV9NlW7PfgvpCO6by/geXjo1ytXzrZe6thrSYapXmxAOKguwFc
	 9y1E4z7vmcWGN3Ue4/rMgmbdbwOvO5+faJd9c7HCE0Ipdikdun6PsB1XsHCHpfkMSw
	 4vu2dpWz8wA92Ir1UItHz7Tx6JO0bNYzxBjV1Sbz+bviGIDpX1eAyJGtCUTHpjVdVQ
	 AE9Aeyqpsw5vN35nwuIkRfxpMHgxvYcJKoWKDXoEPEj1f5xVe2i/vlvkQ6E2uPJTPJ
	 lqupy4MuuUfALR8QE527mrzC75IFIFcc/+JPQeOgDi1eX5TdcWaowlSb0ss8oXgw4p
	 EjEo/dfNz+KfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9121ECAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829579358.31778.3137899628215789966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ce3a0d8da2977374f065290f64c1cd69eb8c83829d3d44e7ec9f578c82a945
Date: Fri, 19 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758295793
