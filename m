Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468521448E3
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741294734; cv=none; b=ka4L267qFbZB2yMyyHhY3dAKhQyqrlSY/jIt5EEyBOakD6/Yqvfwu/rt+SEvuKjL3dSvFXm+PNRsP/Dt8wKAwhUqSjRThMoTheynA0aLjbx4TlhPbzNFG/XSw/iiANi98lvUQxIicyU885FEBBwSYDMc/adj6FycGh/XofG1XqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741294734; c=relaxed/simple;
	bh=rz4v+WrgkJkQisSKETdRHYdDyqmNl4+D1/ngpkxpCUU=;
	h=To:Subject:From:Message-Id:Date; b=nxteS+r1rBUhWsiBnejq5F1yK7EegMzpA6nwQcyLrfvmZntx4pR1ToWtLtv1EVd74mLRON1o4HoXO7LovIAYixFQQMkm6yIuqnUvzYNiwMZCKY03vl6rMvupgclieP1cZS56rG6fLW1tCee60Bu6T8rCbCn+/C6r8qha+jIBUoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmzuWCCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmzuWCCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAD5C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741294733;
	bh=rz4v+WrgkJkQisSKETdRHYdDyqmNl4+D1/ngpkxpCUU=;
	h=To:Subject:From:Date:From;
	b=hmzuWCCFFcthIRb6bkJJSemKmlHm/engxst7rEW7tV1I5YLRdsjqylx6bsK5AC6J+
	 kXnvRE3f55iiYLSCQ0ec72OtcnnmxCUKorJA84INn/O3U69FOkj0K5y7TrM89FeoUW
	 6tISHZ1ytvrc1V6/dvjWBFiHShEE9BriD6HHtRSegdFMB7GaJzsPA4uuQOOjX3wKKj
	 lUHY+h15cSJM3sqaASiDX9f/T7U9W4krlIvCEV/ey6i0TZUwasA2Cu27ownpnv3iuY
	 bwIpfo1P9mP42aDUz9jssTE1nyUKpOLHhLTc9bIRw57vBxojbi7HMjTsirTSELooNm
	 Y0b/bhIJ30/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98723C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174129473360.756.9920671992519595695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b3020ae036687034b2e87c14cb372007bdadb2b3b8e78aefd8aaac7618a4b3
Date: Thu, 06 Mar 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741294733
