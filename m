Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A6419CCF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 17:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718385503; cv=none; b=EBc1485QNoMN1qrbLY8K75T6ytJ1BGt+8etj4nptw+OrbH7l1RViNLljHxjZcMecwijCXYOiUJneRdZej7MdE9SPPI0MTXiXof9u3nF3rIuN/ePaU782gPvjLDsByguOjybYEnL9o4G1yyaXq7EPY/KXDLWhWL2joJ+DE3ZNUPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718385503; c=relaxed/simple;
	bh=Q7KC4VXdSEsaf3JK5Bq5a544EYPqPx4YzzMrK8fVF7c=;
	h=To:Subject:From:Message-Id:Date; b=RtROCOkAZiOU+ZplUZhPv6MuFgtw/bihw0M1VSGvzyTGQiPqCdk0Fec4YV89ZhaKZQA5UxG9A7PpjfbLXsiArGgiRbvOSTmFd2kjLWbaZ7FCdSdRWYgaDJhcORNXcqnX1DzmlyWeev4Jy70okJJpDZPqQU4Dx6MncKqJ7faBeuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTbxs+V2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTbxs+V2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEC9C4AF1A
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 17:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718385502;
	bh=Q7KC4VXdSEsaf3JK5Bq5a544EYPqPx4YzzMrK8fVF7c=;
	h=To:Subject:From:Date:From;
	b=KTbxs+V2C6i/tgNt61IU8/uRM203je4ygRS3jknB0z/i3SWRXoyTS3anlduxfyd5T
	 2VnvaBe4RLb7wRbqRTecDURrnTa+nzVIgsDJgsaJfw2ip+kXfPg/juH00bOKykXvad
	 fSv0jlq2146uRHCpp7oIkAgLqEWZLeNqVfJXsiWbSBR4viuXKLKmwvkl487x6DZsPg
	 b42HiQas+6f+9RgS8HXyLN3kS+8gJWnOxl3/VPdnu47njWhjwiVFnza9VQNIoV9bSY
	 x3u3GgGNR/TdZCTSImJvPBkoFR/JFGhDdL+k1sDuZcQS/PIcBAdvk2v02WiNsi1bXl
	 R+1WAAao8z9Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBFBC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 17:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838550276.27646.15280119739483692110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b29f61d7b711d938ffb6f05bbf575d08e01628052703e8cad1494af8ff238c4
Date: Fri, 14 Jun 2024 17:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718385502
