Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C74B4A1D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737747954; cv=none; b=DnIYn1/DHBpbym6acSGMvf2Fu/p4wFdOYSTL0cFoctReNojM/s+QA8kyxtazXKNMAY073wceuR7wXPkuj037udcGqMD03QvtecBBlJXEXtDFSAMdCk/SIT3epkTT29Fwl3zYgimDl4L8lEK5LSSp+r5zBqBQrB7LSJ9lLqfX8AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737747954; c=relaxed/simple;
	bh=YBBInQUrdx0k1nzVpG+qccD6YmQXbkRZwUlj0s+MhT0=;
	h=To:Subject:From:Message-Id:Date; b=qbs4YFBU/HnhppuFTLsSJe3HsPC7deCymYmnJtbr4/OwWkHDdXMTXFu8+hCXfjRHLSdkeB+GvJLW33F9An0Wqr0BclCYkusO/Ao5HuC6kaaDrQOHDgnjZCKrsPgcbT0PnWgArHlyFKvfJ1OYD0++mSRITipNAJIMUu1icPUV/5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Odi051qY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Odi051qY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1295C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737747953;
	bh=YBBInQUrdx0k1nzVpG+qccD6YmQXbkRZwUlj0s+MhT0=;
	h=To:Subject:From:Date:From;
	b=Odi051qYkv3S1e719D4cLgjJrat4eEsrXfePOeXsrHtzD0b0isc9w4hJwZbitjrNT
	 SNxp4BXwHEvxC1fzhsnMrs0+5lrW7vhybC98oMEV33gA0Ot0yxopAEVDXXLnVgp/qu
	 eOY7pu6bKfKIOJuvkBWPqpvs6s6kLt0E6BSr9XGQYtZ6Vakf65dKlSh58LoBJCqYsX
	 TKHs7tYvqwSgP1gA1gvLKC12GND+BAFknxkZlWGz09dwCaWyACjHohnK6GoVXgE83A
	 aJVJtUg4OQRYQ966InzXrYNCl0DfNFw1kCY2EBDkrRtnjq4FIauUWirnuldM8J7obG
	 YrQ7rZXzBk5bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A4FC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173774795358.22722.15054069216516358011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932a0407a214c9ef6b3d94cb38ee566697140edb76245035c40b565f69e67b9c
Date: Fri, 24 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737747953
