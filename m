Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4D53659E8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779429154; cv=none; b=e48hG/fKs2wo/Z49iLojMEG+bK+6ltUp/RPVlAEum/ij6yvquUYWbdt34CFIFk91UcFH7nS+tZcuEYxkP610oFEOzAKq0N1IZrUmwoSPdAZISo9xBHJjqCMg34gveIzUjR6hG4U6dLGiCONDJCMHJCWKyXzz4AkT1JZMHVc+to4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779429154; c=relaxed/simple;
	bh=7KfCRX+pmE61ychfB6r2eIbTDMi7wFosN/T3O22OGVg=;
	h=To:Subject:From:Message-Id:Date; b=UxxxoNquqXOjoUKozQCfryeYmpff+wqOfM5l89lQcFTAgJMaVEgDzgLjIZXzcOGr36oxOyMV6KgLfW3gzXx1vwFfhXV7DDC0TRDvLozvc0WOapcxECAYwpAlxB5foc4KtFIpVHs2sskO+3ceuW773feiwtNOinwFjRy76RNr/Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmrALsco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmrALsco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D3AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779429153;
	bh=7KfCRX+pmE61ychfB6r2eIbTDMi7wFosN/T3O22OGVg=;
	h=To:Subject:From:Date:From;
	b=jmrALscodeaxDXFRnsBL+A1qa89e/TWvX1+/lJLuT+A8BgP9MfKKyKbi46QZnV6Yv
	 Lxyn1xgV+JBTMhEIE/iNasLSYS1L4XQyjhl+91yIoPBuAG7NBlOV02bqWaCrC2es7r
	 aubY6TdQ27608fgJDgxIh4QbTuBSKHJ86C5G3cUd+pCMXt1yuFTlrn6JIM7LnvcynX
	 TSo9sCAZSAgapXujfkdESa0AgyVmLCMJ+cv4uLw65FJmQrZuQnv34RcAbVa40QplA0
	 fwgEpOhO245iXv4gL1p0fgb+ruXGu1aBnmE+mBat/XkCMDJWPTjZ06fKK3fqnc01yN
	 dPEvAoJdPLuIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB23CCD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942915368.11658.13623617501066740335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052d3fb1277e89bdecc8a982a55be5593a4ffb454a5e101757a82c1e7bde2aca
Date: Fri, 22 May 2026 05:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779429153
