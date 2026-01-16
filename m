Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126482701BB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768559034; cv=none; b=WLYDm4bklm66BFBhUJ8fWteiWxwYL9XxuUaxwwIkWFIl2QNBPnVVfQ/Wm9v6vWci0DpH/rgYK8Q9bXW8ivHWMdMR1EYgkJAt44EaDI8TV1+0viuBEmKSxHiBiPclITOXTAd/6DxcWLkF6r93vDHsmAtakRn+e+HT9Sy/AjeJYlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768559034; c=relaxed/simple;
	bh=WlOTsaivJcXGx3o0Ao+daY8pusG4cL2yWYrS+p9sshI=;
	h=To:Subject:From:Message-Id:Date; b=r+LpEf7gTJi5wOfcqUGQtJm53mfoCNfjMSP1JeGWYd6+mVYPhjRJB2bBSHSbsGTP1Hj+zU+QCTAeFEZyu3bgRVrYF1CdRix9TBBYF84gPZKRHwMHsGpfcyq+CUOJqLXsXXxT8eBn9kDHJDGJ7Dl8CY3Vo430oSw2lzch9pTYUU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHlSy0U/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHlSy0U/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFBBC19422
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768559033;
	bh=WlOTsaivJcXGx3o0Ao+daY8pusG4cL2yWYrS+p9sshI=;
	h=To:Subject:From:Date:From;
	b=eHlSy0U/D8rAS3pKx7iV1UJ29Ccmpf3zX2/g3C7/KeUKaBhXHCm7MgVUzfPNQT+3z
	 OynqsjG4z1Fk0O6V7IjJx1tExQ8EtZua3o/dAANWy2Gtoa65jAztyg/dkINEe68Jj5
	 UPVKNRJZwuhYZTJWbyAxGRLyNule5j1y/DxaBySTLJ5oGUQHAQjXuXMTFvABUcmVvz
	 Yb4HsDriWNQRhzqZjUfqoX31FQiyjYFBK9GHkxl53dw7t0jeza7ScRHKBtcbIX6uYl
	 0uKT5oVyXR1d2g0t167kgsRTmpVvLY5E1hADLZukiZc/cqNv8l12PRQweqHw3LtQb8
	 QWgHiboItTZ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC42D4660C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855903358.11948.16741518122318660040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba6c2d2f20a8a490c0479bc659472c0da7f125c32a02c5d330c32f921f68787
Date: Fri, 16 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768559033
