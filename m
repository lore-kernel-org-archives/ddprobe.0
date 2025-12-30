Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F062C22B8C5
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767089034; cv=none; b=PiWQPEqZQG3G0XZW0lGPLW1/VK2S+7Pr66do5LHKWXcRohVDJifkM+KXfOeluSILpG3+jFaYZ5suFNewBG9xWfEQSHqNorLi7Gko5LQRQaMEPHD0teAwLLtXVn20mT20d1/DK6DoiwvB5htIx19CDZv2NhOskmlPdXw4pSuAWcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767089034; c=relaxed/simple;
	bh=K51BtFYhdm/Z9PJsLJvT46lH2QWCaXvjjrP5Z1peTfc=;
	h=To:Subject:From:Message-Id:Date; b=QoSHR94CAGr7BdkOA74E/lG3qrQw6Tf2QmR/t6smyMXPnp0DBPi3lX3pykw3Qw18wGpGcPYfUOv2r62gyYmQBRy3nSV+gSU2a67/1Hu6ezIDb5b+lIeA+SkXFdCzYaxRQEWWwbL9IW0gPcTuwxXi576+jlG18Oes0CfeHmwCfZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRhYD8pI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRhYD8pI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D10C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767089033;
	bh=K51BtFYhdm/Z9PJsLJvT46lH2QWCaXvjjrP5Z1peTfc=;
	h=To:Subject:From:Date:From;
	b=kRhYD8pIVBLoIhxgAXLN7qmzVSmO7ZC8lQBilvI4YJipc/2F4GY4GWY3CXLjTQEri
	 pfNLju6AG7WdVVan+SQwW41yr9bjmkCq2UuiQ2b0lz1t/rHPs/mhVPHsn7l+/5t11u
	 VustEn3Zdope0758SyZzswiyGY+V7zoE81LXUyftyjTPqOljOKoTNcrWfAaRPX6MVI
	 biamDxpv/X+JNGNuUBfGyixv5ouljVCZsG97P/TunBQGsVzFLtslhjyq1bYIxfTbNx
	 0TI2QkfpHOUHNSdxKoI28pBQ0TY1ZQbaPpVi5vn3HBbLo6qQkOSLAdEt5sST4HSmT6
	 bweNEwhUBjKFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9027DE9413E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708903358.17234.16305067368081791991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2a6394e41a421d8e2da0df395226a7aea0cd01f8826752c120444649a0520d
Date: Tue, 30 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767089033
