Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6876A200C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719779063; cv=none; b=lDV+csQ3cUog4dwk3Z5YDja/qSGodFJHmHOB/lczGavoe+iHYxKgeY/cHoKLWUMYosNv+SlF63kCSK9RhroPKo/DKecLFJrUciQZGbd23v6HocqFatOZHXR4eQG3yA4+Yp53AGTQFX6JkNZYgTi+8J0NcsPcPDIicPulwOxCbqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719779063; c=relaxed/simple;
	bh=Oi6b81ScNnEjCkol+XWkE9GOd6UQ0EfIAFBjewZSY/k=;
	h=To:Subject:From:Message-Id:Date; b=uMArXA8yCUN7wfa7IxumtYwQNpsbK/fk37VJ+QPF2CXnEoD/CvLZlPr/FQNnfjmS1oduhO2m6r2fUbI8ODrKbLfTZc//7a/dMALQIEyqTlLknpevQDKQryAvlA67a9qqQJbrJAyBcM3f6shet4fJfh3z/YMa76Advulyyk6gyUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u69pHQyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u69pHQyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E39BFC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719779062;
	bh=Oi6b81ScNnEjCkol+XWkE9GOd6UQ0EfIAFBjewZSY/k=;
	h=To:Subject:From:Date:From;
	b=u69pHQyoL4yIF3j06mYARQCcjfVuxdb2oo6rdRkhTLJ+pmO8lVVnxgPiVEabijpKy
	 xiZW0QkMGzlriCe3slDaFOnsXaYqqPdREg9egSCFunFDBsQnaSMYNqIG799sZz09aU
	 seZqmGlN6Tf9Tda95gkk+4on/P5zxs9R+qQEJOnC2SXbxaMGYPBB1GGF7U/akvwOAM
	 nTsMFdhLOPrga+2txRzDRvIrCCKyCEhw4UeoXsMbdcRR457yJNina1zJ6adFr+4npe
	 HVhd5AOe6+osqJD9kHXuIJr2jp3PrDqnhLzwgKJYt0uepvuQ6kbqHwGMV/NkjXOO6n
	 sASMO08MPalng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9353C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977906280.24959.6153605851889999227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6831f4ad6212f2d536e1ed1e2bc8f7ec7d8a8db4c6db5c8b5565d76497469f
Date: Sun, 30 Jun 2024 20:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719779062
