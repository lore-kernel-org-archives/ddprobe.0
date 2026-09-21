Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93561435514
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789987235; cv=none; b=dH8yT5lzuTkCTNn9JQMIa9lSIbaqmKjM6oOEP/yKnkiPHVVBQGGmYnJA+OomrfTiYsGJHYsxPpIEcKvTJrBBAHyOnYgtGvI2PPDWlYIbvoDxj6yQCkwodElIMMHOvxUBmaugDW5yC893CKxWro5mwWe7pgm6WegU9ZjVwhsON+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789987235; c=relaxed/simple;
	bh=Ae9FU0UeaZCCo5hYPZOLO24L6HEXOCo2jg3hdfhO/Y0=;
	h=To:Subject:From:Message-Id:Date; b=X7mPxkAuxm6i5eGlMRVXO5CCG4x3NVeUo2jF3eyVwt56ztDUq4ds5xKAGk8Oc9MHHVoeYsdhHK9T+YWh8eP5mErsz+2HOdRH7T9S3HzdMG0RfW6nxSHFaAzvOnCAmZ4S5kRai4X66z42QYvoS6b3A43qzcc2LgpbeuPo/kNQgPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r40y6Q/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r40y6Q/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5533C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789987233;
	bh=Ae9FU0UeaZCCo5hYPZOLO24L6HEXOCo2jg3hdfhO/Y0=;
	h=To:Subject:From:Date:From;
	b=r40y6Q/1b9AL63YzoxPSqlDGURtrYaxgUN0Ue0OwkWGg/+CsefVLh7rcA/KbqilNQ
	 AsBeZNVLeOc9r2unGUnVKV/8RISaTMwTmoONSKZgYtgbOh7GyAIGa9TL73P8Zb9RxZ
	 Au0nFioSHI+0YSvOR+XcIta5CevpwYRxAEXNfcWibdnWE8PLFF1nNZl//2VtzKmPGB
	 QTXtZRCtHM6fsJca2g2+3WIl5j6z26IBhGkgXL2mrBs0n3b+ircEUH1vAkTNJFn83U
	 4mtdby9/0hFS7OfKfN987+MBIVXNSGNKd2mzIuCfEZF58vMWS/kYVPKL/LY3M6BQp8
	 DsqliG0a5gLGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FD3C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998723371.12837.3487366144336689712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473c7b617915741f755fc36f5be24450792dd204d9ddae7878d56e3f9871c3fb
Date: Mon, 21 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789987233
