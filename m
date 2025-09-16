Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4F329ACEE
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758014994; cv=none; b=bUrduWd9GSLV/bNZQKjBCPbC9lWvL6Sc8mazZ0f5nCUAwcvQVpUpc4lhv+5/Nhf4JGUBhOqlzIxXeKFhGpPqQS3JdfmgMoKl0qMxM9BQnKvOTU1wX05CLLSBu0ky7DCLmbYa33NCKGKE2j4eYPazaW9iw/yjRe1aDcH07Dy4mCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758014994; c=relaxed/simple;
	bh=VA5HV2QUgSjtofxeHReLXatnyn8eXRnCefvefzubXWY=;
	h=To:Subject:From:Message-Id:Date; b=aE07u+J4r5jEOBKwxkK3abg62LImhNadTNHB2RaD/kfXce6XA7l2ZwROvV9MiOWdwxLrT2SQZrz/weEAvEVYpJU37VGkjKyZsktiOuODEg9Lz3s+n1NARJePlwwrtZytuOCrqy5jc0bda57l62M27CIsyqq/JNA4bjxd+05NY1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KA3ABHkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KA3ABHkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3379C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758014993;
	bh=VA5HV2QUgSjtofxeHReLXatnyn8eXRnCefvefzubXWY=;
	h=To:Subject:From:Date:From;
	b=KA3ABHkIg+c1F8f6YtnMIVU60nWlNR/ens2lmezurXuCMLIsjVJJ0Gi1JBTPw5c64
	 mtNFeXkinQ0P2xo8oX35cQ60AjDX40Ym4uY4T18HvvmEKezQc+1kS0VWxYHtQwfOfd
	 kj1BhUCaQHlb9NJPbLREyCzjWuRjdtuMpiEnaIL66YxVjhI1iVU58WmmnX0UymyXB3
	 a4vohEuuQVQrqHldRpT4G3rXfSILIMaMNGGkNGRa8aMBedVyj9TXxqrugSzWvVSw/l
	 cBgHZAwx+QnTG2wHnl6iN+2rxTt0ftCGHtgDdWE25KXRtRkZfW/jC4oKyKysSWd0Co
	 2Tb1zvx+nStdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F91CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801499358.9303.2611794121240255642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4acbac706fec5fb6d543e18f8bf437d777de61b0c44f5d531e811660382fd0c
Date: Tue, 16 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758014993
