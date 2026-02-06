Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC54125B2
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770336234; cv=none; b=Qa6dtw7pD9OGsmyID3VpNQUkLpukZIu6Ea50n79U8RsrEmqlMqLFkISRk0TaTyoxEajNIbfEMmase2rRlv1j+rExUnP5dqVmdDO3nHoLHr8zWsd0Y3Bw8DhOXvxRXSRlPDWC+oqXjU03n/+76D144feYqN+YdLGWtmDwmt6kzdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770336234; c=relaxed/simple;
	bh=1W5rPaEY5HjJbqCJMvLKoF8Nj8HTqqsAcDBNlf3FY0k=;
	h=To:Subject:From:Message-Id:Date; b=nP0l1YhwTR+Kz53Y/5Vfm6BV8lcktsS+vxkXv04nPAcCPIJHh0G/fHFmhPPgveb5Q0T41Tfvtbc/XvV2i1A+xb0Wkb6on3KmsyX3zRDrK/aeQaO/GpARKKh1HQ1jxgurRDKoUgjU8coyf6R2UsHNIUue/6GxhaG2uYsnGnb2gys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISTYa0jc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISTYa0jc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC974C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770336233;
	bh=1W5rPaEY5HjJbqCJMvLKoF8Nj8HTqqsAcDBNlf3FY0k=;
	h=To:Subject:From:Date:From;
	b=ISTYa0jcJ8PFqD1kQeNKn1XyBxZPFchScCNnpP1qzFdSQkHU90Z966DWAetwA+L6i
	 qD8+Ra0kOojybOgOoPqZCTG5XOaV8lmL/dIB0NiukfTtXxqIAvxyqeV6u0Y4533kVF
	 DQdRIIASwqwEOtey3wYoQiyyMnUeMaEyq/2udTcEImpM018xW6PPYDeTzgtQ1lLhXM
	 ELCNIwzaDogIOQKiV4KG8y+Gg76xeiVAXFEpCef2g3F3kjljJFppnaUCtxpvS+hy8h
	 XM9fEwRh0uEtaDzkw+oC2UeS1P/+cGdcrvArg6q9HrmrjNywPRcbg5qBVvEyCF7B1L
	 rAENuDgkjMX5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A0DECD9AA
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033623359.11882.8066247055982690465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61dab8df340f7af7a1cca2a2401543a3c7e30527273c2ee03d67da55d8c4513
Date: Fri, 06 Feb 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770336233
