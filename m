Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2437E363097
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776772054; cv=none; b=M6h/nUAuNwcQ9G17HZG8645PhPF8xSKGpzoTI1xkSLEYUShEEEXhXWQp32rkaWgnjpqWG/IR23/pQeA2iyyyh3dC9podHwG3ViP9qx2Z9q+5noAOcFIX3DQpkeHQ6fhn6gRGZJj3lmWTVOkiRL9SnYbetcZmDC4mtrfWHIgxytc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776772054; c=relaxed/simple;
	bh=Ad7dPBDFaLqKWM2ZHf8j+fkq6fwcUC+JRb+0OxrXQYk=;
	h=To:Subject:From:Message-Id:Date; b=abG+8e1ljrZyjniSboe7s8nsUPRk9cD3YE7bgdS8J3zHbLa7jiNPzs/e4NjqG+ugWMN/IlOYbzN3aTuFX7O+aZAOxdWkX+gkgPa8zJ4vXwrZpuyGCHUIBwPbl2D/qdDGDyXfhqm65u0h74gq8moj5lxNcv0chJ5hKUkv3es08PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ufk43H5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ufk43H5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0EBC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776772053;
	bh=Ad7dPBDFaLqKWM2ZHf8j+fkq6fwcUC+JRb+0OxrXQYk=;
	h=To:Subject:From:Date:From;
	b=Ufk43H5IdQ1ibz72NlFQIblLsfa5NRIEx4iCMFtvpJBgoYuHdDifsRcfuunaPL5VU
	 8Q77yzi64d3wK2A1nYHyYg89lyBXpcvqPtTZ5jXk03H10fIkTLGY6YK9B7QeNoFWxP
	 +zyr1JseNrCprSDNeOePTCceHQFcK4br/94VNTkAq38LoFWSvg+KMZGiqN230XBkv1
	 5BOhpsjMTAgL3iVtVH4D/wSkp9c1NuKZMSWh5pdKrEEkV6JirbUkNbSWwndMoqE6Om
	 YadkcI993YZlSJ2pASjLgwiCklpOsqvoPc4kzJS9h5dvD0y3QOl+2CDZ3zVHWJp0MU
	 y0NVOTSbDcKQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD7DF327D9
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677205369.6466.8834821204423051620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074f883cf471794c690d682ac9a5230d21e62a021e6d74f51b1ef020f16e9d4e
Date: Tue, 21 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776772053
