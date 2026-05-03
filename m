Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244DD38836F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777825654; cv=none; b=FPwvBNwPWR6q+AgnurcPS9d/tfDVX8pIZlMp570Fb4cRKhGZ7d65tVcNzQ4d+Wo+7EzQKw9p/UdNm55PFgS/bunumjZ1vc19Jc4baX9d4L6aooMOPdiNEYYeikg/t/DSnHr1skH9xXGQmMZTgv99DIuxYzQfgdRYb0VSXPIzqF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777825654; c=relaxed/simple;
	bh=Na8YLZXHu8Lne8+ScVeyEWsHt8aH1JI1yiYBn6dcA6c=;
	h=To:Subject:From:Message-Id:Date; b=a4UMkyWiMWRPK0Gl+HWUme41rZR3sHicd/K201Wp5TO7UeJcnmrIaC2qaCem1DTkQ99+aVz7dJCF3NtuxsXte8EwluCDauqeIcqGz4CgVYFv5rsNppRD8OR4Ms6zvp3aEY2IUhNhVh559KW42PCgUSzERwCw2MW/flV+SlUJXnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIl9AQg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIl9AQg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAADC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777825653;
	bh=Na8YLZXHu8Lne8+ScVeyEWsHt8aH1JI1yiYBn6dcA6c=;
	h=To:Subject:From:Date:From;
	b=XIl9AQg/lpxBfcwYyMP2uVj5dJTZRVXfhlQ1ak2T56TgTBtNWMMV5JdLIPyrrpYkg
	 bv/sVtSgGob+lEhlR/y0b/4gvobtNARxC0yB9MY9MZpat0T2s/uOI4emocsdGen+qp
	 YcspNUY+aJ7NVd7mPmHtfjFpAm5Skij5hNFQs1mS//NvKch4rzwvlcYOrEu0Z8nuOM
	 QmwCjM8DmmHwD7Jon4qvBQ6HZuGQzdIxCRgXfo/n/cUsCsekG3vfdnJAtJz8zcBzTr
	 OaTvJrlZSzMveHPOzCoZOFm6tcihBmMD9TuPhJBJcKKgBi8a7/T8i5uzIFH7wc4Wv/
	 mhWXwz4oHS3Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6DCFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782565368.21853.7599961980106721573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1c97375b1809092194c3c506f0560b72447c4feaa164e953e2ec09d145b0e6
Date: Sun, 03 May 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777825653
