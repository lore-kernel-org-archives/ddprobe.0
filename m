Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75CF2BAF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771980293; cv=none; b=s6PAgTt13210vM3AvJhGhCFqEKWnq6l4m5XKH2BceJzXszlp8CjQCkcqtYGI1i77Qk4QuBg5jEsAOPhd/y3282PfMAAjLwoYxvrlB6RwWWMFiWho0IlcYGBwjM4d4DbguMeTzS7dCI2AwFnce8/8bpaaLFSc0vx1CH2KzjWuvnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771980293; c=relaxed/simple;
	bh=KL82CN3FfOkFWXwVUI5XZIZgIQPZFCT0f1Gsr38NLJE=;
	h=To:Subject:From:Message-Id:Date; b=gifRFTcXHq77ad301yLq5U8Ei1zx6AImBfeL1HWtQ05/eJipXof0k7mBE/uUB4fZCIuKVPlyi02nB+Ni7w2tiTrcOLE6wLapCATtLnadQHbr2tAK8Hd+at4w5z6fUGImZaMiVe7x8ueO81jhIawiiEIAwpO5L4IyKZKqptM8H8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UF3jCy7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UF3jCy7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF345C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771980293;
	bh=KL82CN3FfOkFWXwVUI5XZIZgIQPZFCT0f1Gsr38NLJE=;
	h=To:Subject:From:Date:From;
	b=UF3jCy7dJWqPUGYLumx9kWr7P3b8vKrFa420e9ADLfsTpijChsvIOoSv2/GUyKtXK
	 Iwmm+ag455DozmzZDrOIoi0SOWHRlW6w3rhkzlsQYbjgnVja9OF2WDpbgvkFrk5YeO
	 oaO22Rf2e7dqbU4W0gblteSt5yHOqbIH5Yre5DcXxQXlsQXWk8X0pw5lwMWStSb2m7
	 GcJvlgLx+MlnOdF3sQl39k4C59OVvDObBnHoiJWDr33ebhGIzs/vYSj1p3ENLUjIvp
	 Tg2dcL9d55dNyfTG4t2bbspX9j2i2qDadwbpGEoV1EWy50GdmcpnQ5l7KXB7NDMjPt
	 5NDbHEbpgA0HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BD5F55434
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198029359.32012.16646541008784821910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c7bc0dc4ccc0583e5027cb006e194689035bc9c6c685e6fac83a88f9bd4f96
Date: Wed, 25 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771980293
