Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB8335A38C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777938455; cv=none; b=Dx+pepqAW6+lUhsNsh1X+Zkn+yfXIhCAbRZB99OAeQyp/sDWXvYNFQZqQgKWKN7jjyluLeJ8OpnWijTg0rwOKlVcaP3ZeCHJz5VT6FF+zvleBZ62SDzrVBKzLquNY7GSUW33dMAO6ZnAJsoFqgI3Dx7Z/p/3mLpNnxcfJaZa2Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777938455; c=relaxed/simple;
	bh=QBhC5JjbJC4UUxnECZys8SGt2WKGTjXZuan8ZMfkF68=;
	h=To:Subject:From:Message-Id:Date; b=EBXQdYcpoZaHlvHGO/uJ/vAS/a8n5h6hXpUV/j0q0pGqKUR3nLQSeWu/Z1leoRqiTwYuXFg2wCcq9ab5P+8fTYr2dhH/11WieafBGhaKaMHz4CSro6mwavWKixUR8omxWDcmxCvDXgfskmF+iXTJZtjYjzPzEe97O+EYpM+qhqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcwfyccN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcwfyccN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7360C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777938454;
	bh=QBhC5JjbJC4UUxnECZys8SGt2WKGTjXZuan8ZMfkF68=;
	h=To:Subject:From:Date:From;
	b=tcwfyccNaYs8nuL6rDrFiXFJlaBUQ7hr7qX5nwkzocSD90RDqwIloIdM2+QaAIiYq
	 GZ5bQU8YvRbc8z/W+eutkLXoNgKYxn7g9pSZlT6Up59Jtu8r0iVuD2Z4Ng269dDHLZ
	 i9TMRrIZK9dd6GOhagKvbFHtvFvhVXPhflt7zPVRNxojiipfOK5xv36DP50Lfpzyto
	 +o7jLVIIG9Miv1t284Ak3Zt7+S2enZBr7QWEzdYvZwllJTssXcTEpBncA+5AnhNEJg
	 kwd612uPfbhMsmDSDcYIG2RU4Z/v2VcIAcWDTTv3eClabvZKOJcvt1k2ZKf9mEaVnl
	 DzY7++rb1mGsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A7CD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793845368.28263.13575824576476356116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f1c75935764cf8dd2f65b25a0b775ca3b5b194e316dc8ad8b4ada76445b391
Date: Mon, 04 May 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777938453
