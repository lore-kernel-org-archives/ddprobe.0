Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9D282D66
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732737354; cv=none; b=cQv2dJE4fTpuE9zvX7UfMGnMnw4uzUDceG8MJMEfMNGlQ9yoGfvG+la4k609r1hYQP+JfY4pryBnd4TcJYZiDirx+98VrA6I7um/S6WdAYW+rJiGpO9BBHBdGhqwkDj6cWFkMqNFikrXYmv179q7b8Lh4Ueh+v56e8ziHbcWvyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732737354; c=relaxed/simple;
	bh=k/+ofXrnAmcdI2IdgUl3Kub5EWbeDneFsaLX70KAskE=;
	h=To:Subject:From:Message-Id:Date; b=sR/MBdUQK5YA0AtNlBYxMStYyIiXDjNoJ13a4oqxPQncAZjuQYPCeQ9Yirx4UtwceNO78ceKLOFMgH/FXkzPnZ1YJc+QokUxRHlpVcsgy99e5ujs4MhSdkcpaMkVw7nkpxeaFM3Jie3uNnUrILb88xwEAc0oKGcnX5VCeUzxwnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1dEE1Lg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1dEE1Lg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEC5C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732737353;
	bh=k/+ofXrnAmcdI2IdgUl3Kub5EWbeDneFsaLX70KAskE=;
	h=To:Subject:From:Date:From;
	b=m1dEE1LgXaCLhZi1TaNNS7TPzo82xr8YACmrBoG7jeei0O3LCMqoj5DZd45qMDPoc
	 YIKHPnJMz5MpfcW/9EZmYhAp+9I0YiFclmOGl/gMWr/BRcRm8BWjb7rEU92ph6Ej+v
	 pp7x+O8wQQpUhBLYon6Du5NZMO9Wpp6zVuYnjHtu11EK8M0FzHxwrH82RcHiVDB/fw
	 0pwLyKV8maUA8dTX9v8CMr/h6pAao9JwlS+P5jTNs0zWd95oei3gqCj0BcKMZCrb8X
	 xmoIuLFIIsFHYP6YMzD//c39kn/GvTd/ClK03ZePRkrdGlxbePMiPEdr7jPUQns0pA
	 LhmC94i1ByDLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA44D6D233
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173273735357.8344.16094942905277354117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368fd2a5000bb6cf8bf03ff379eb29714843f60ae33fcc8153e57a0359c665c7
Date: Wed, 27 Nov 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732737353
