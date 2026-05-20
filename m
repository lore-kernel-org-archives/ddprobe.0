Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A4135F610
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779319834; cv=none; b=R/geMEUPH01BMnlaMIUsKKZWPK1LpIN/N8F4oKsSrryFSBFmr3Ce2Ud9oc0G0KDEw57cZx0L16LhDmWpYkjmCiGgwflO5or59+84eaWkRwT+DENdKfdMFI4VOUqAX+r/G21GPUDNbGkSGcc7smUBkUOmzFY9Z+tOXswgE6nYKYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779319834; c=relaxed/simple;
	bh=9FDJHNuJxkBrQyOPQWAbOlkro/wfy4V2FLjSCbHGxCY=;
	h=To:Subject:From:Message-Id:Date; b=toa3LO+L3ynjexGPXL5MqdaTpsP5UBPbf1YmjqJA+O+VMT2nCpGzgnXLbbG72/8Tc9FcopxIYhq0Z+skmG0AZh4ZUDqdq6Q+ieuGWRJvP/3ifL/th56izRnYZerDitE+ywF6lIVrphcrguGi6gaaMOhgxhmvYpdJ/AuCakuq48E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nt9+JP/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nt9+JP/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC82FC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779319833;
	bh=9FDJHNuJxkBrQyOPQWAbOlkro/wfy4V2FLjSCbHGxCY=;
	h=To:Subject:From:Date:From;
	b=nt9+JP/yEufOA4KyLQfhTEXMHmNxMpw+FsXkgTm+pQsV8LNdAgsdvexDdBdcL4xDU
	 r6R6HZu3QEBrmCMw1y0+O8dNBluBFM8nmG2hMTALVgntNLcRRUlNBWIdQgUURsUs5h
	 PKRtidQKO1vbKyATpLlhFfhLYuRl9/hnzM8/+nj7xVDBeyac3NkrZWeQTq14cRZ0Cn
	 5exx0VWS584teapNVCehlz1LOAkxtm7oqtjfpqQYIPY9vnKyOozKRM0bNSdyySdNJs
	 9duvVyhDJjB/s3SDWRpLhuehMwMGqmb/yxucKovdDOv4ReZ11QDRmUs/fJgPsGrbLw
	 EIH1MoGh2MO4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE346CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931983370.15645.7148034063434511904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14a13dd67736d5d7b30a1765d9c9c4b6e224f175808b95f45945a980b92ca0f
Date: Wed, 20 May 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779319833
