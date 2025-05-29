Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA83A55
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748513994; cv=none; b=uXbne2vs1hPL4AThV8gp/Twt4MkSzr1NdVEprPCPkhP5XGeNK80TYM3Ctbsm8EW0nKsE9YB+00ClHEqHXtmQRZnYcJVt8E/BUEQKweJkFYXGxYo7EzFiu+1YUrhXH6sZ/dVTHIz1zNOG9GF6ZLJP6/yhRkgEhjoPgCbHOLR70nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748513994; c=relaxed/simple;
	bh=mMqN4HTTQa6sVRK1/ygF+Tt7JyZXn1Xft0Iw0OLKhW4=;
	h=To:Subject:From:Message-Id:Date; b=ElXcpcGRdPE7X818+qsbeCPUNFb1bFiB9iVUAUDJhik29X3FBUExQ9pdd/h0DQc7/hcUhK6R+5ub28ZIRaFUFGXvKlwofZXE4gNRn1xwP3jrFWVKow/mGpwMlNp8AjHxSKNQ+HHIsh+hT3kgdMlWvzfYvwaMfuU/S4Hrk7Ut9Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jo2zysAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jo2zysAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F594C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748513993;
	bh=mMqN4HTTQa6sVRK1/ygF+Tt7JyZXn1Xft0Iw0OLKhW4=;
	h=To:Subject:From:Date:From;
	b=Jo2zysAHiD+wZoihCJFwqAUnLiX+Ow7qqm6EP1//YplPfV4IOMIPLXTC0E8AD9Mlf
	 uRTh/TbXHccXBtBjTfvWuYeDOOllUBG6B2dsj0uJFV5g7Dx1ziyqb+qZ9W3CKbiiSf
	 FK2uJtljjgraY0cVK+k6AFYTD1q4By1Oqvzucw92kfzWt9r15ruXJnRByDucSWLGHf
	 A2lDeeYgyh92eqQaAVd4yJTNoHh+kgs2thRVEyBxLFFkzDBeobZJPDkL/DYIrfGfqS
	 WEdtrxIGQT4dgeBLZna/Zgz50l2eIXudeimgKLfnkiPy5jHV3qA3wGMG1smjeEcz+d
	 RwLwYJwTUVhPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E269C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851399357.5701.2463259667432300513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4288e4428c7551a353e9b5ffe2394da439cc9eea9f994b06fbccffc4de2544c
Date: Thu, 29 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748513993
