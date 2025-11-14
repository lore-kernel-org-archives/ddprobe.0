Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3878E2DF6E6
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763100594; cv=none; b=ckBQZsvPqT6PfbXOh+SyQhLg+Ek+nxXIIzTE4su3xLfWjxPXP64L+DW3lRZMp0VWdVY2FUgctKWITbhJvwHPfixsE1L3LyjTdL0slnynTyTRFHvWyi5Xy2fKHO+qKz3Bwd55mHv5hOnwrt8EaDrEzPEd8dbKFSaVUGSBvTBFhRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763100594; c=relaxed/simple;
	bh=L29owc+xlqL9maW27QWcjIxk7zsYC52ZWmq4xtVJrEA=;
	h=To:Subject:From:Message-Id:Date; b=jHewo1cqgHZfXb3djIpyye/Lo+BTw8dypwYpFZGiNxHeLqMEaaDgss2MvrTU7r9NRZhG1oIdOPpSk/VUsbY9wRSws0jD9RdUaOq3n19rb0DlgnO34V/bhOFCMidOWg8t8DxvZDBv3BRf/uhz47TtDd6rgi6scDp3FjTgGipAT0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4YS+LjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4YS+LjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55D8C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763100593;
	bh=L29owc+xlqL9maW27QWcjIxk7zsYC52ZWmq4xtVJrEA=;
	h=To:Subject:From:Date:From;
	b=h4YS+LjFxrlW4c83Vsrc5AG409VX3a3lWUH2ZhF6/ad/BMsQoc9W79YOzR6G5Omqr
	 YVuurte41rysIdFkNBjkuAT8gTf0jKitd9O4qiKeS9tGFhScr7Z9iRJAGxZcAiWLZ+
	 bB42VKj9xyd5s7DCkiS0LL+rwnthJmkIr0i2R7AlqawSCkwIqGG9H3GHEUZdiCon8U
	 KTyRr4QnDokMF7RS0MImjIo4gHN0sgskhZokX/E0wdqWwJ4m/41UBhagVerj+xaEVd
	 8gP+ezlPWgEdaS0UCeMj3IsioFBvenigLgokzx3JnvBYLii929BRz98dEw1+M/1GHr
	 0aqxMAsNSYo2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CBDCDE006
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310059365.26837.10616153857694208724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1e2b266798810ce768b0708536b4417ba71ad7a8b2afb6f370df03924ac147
Date: Fri, 14 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763100593
