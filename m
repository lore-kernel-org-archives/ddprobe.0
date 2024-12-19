Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F52224AF5
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734612354; cv=none; b=MGkt3JW8Qc9P19FUB+8en/3JcgIV1HS7PF7Msx872W2hTVGeGYqUZOy1qHw9axbWCtOXpFhUhnJtsBqNSAShgCDTzEMb+6OwQuchM6+br+bVJmgccy4PMCr2Aw7RDlbp0IBE0ASBdad10yMZYTDxB//djY0Ut/1Eg76QLUBZwKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734612354; c=relaxed/simple;
	bh=hCKZAN8ds0/aEYKud63aAfDzuBTbKURZg0OjgWadrD0=;
	h=To:Subject:From:Message-Id:Date; b=KWSUYPrIWPvw7B1f+KVqt1xL+iJT1FOCFsxjcs88aSK0xr9zRDyVjyJdz/xjULH77YCNqs4GXUkRwUd9lFICHSUFIih0UhC75KnxNF7UZBKKxLWGe3GWzXjIoPzhoJz4p06mKOrnwhpL5zeuNsgVU6sdkNVqYd5eKDDG3CXXFbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbJM/XHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbJM/XHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AA5C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734612353;
	bh=hCKZAN8ds0/aEYKud63aAfDzuBTbKURZg0OjgWadrD0=;
	h=To:Subject:From:Date:From;
	b=dbJM/XHcyWwCF6DNXSK6A0Jwxc+zSc4zby9tu7uMaF/6Dg1gDIozNnloXZsGhuE7q
	 kF3lEDEJyhoit/eFhw64ptRGcpxvoRR78qWQjVKO6Xk4ISkqbbwlIQqnB5gwycQIgo
	 5Fj1e34ArLjR3upy5l3DtxKJa377+n1zw3gep/Smuu/17tmxCive2CdPx0vDtf9eBu
	 a3SthpMpHgCsjQP0pu9TQMFSrZnr4fc3SLzrEUPblX29eFYgLruxWp/uroAyggdFHW
	 wPIlYbzbxSNCZ+sySoFkYLsICxICeaycWSDPKYFhLJnEtjVbLy67zFhntEgSVof393
	 0E43bthH2tMCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929ABE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173461235359.1489.12486109522945768754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4dead3a08ed5a5949585e6752138d6481942aded82d54ee48218fb75fbdda5d
Date: Thu, 19 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734612353
