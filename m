Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2002C2236EE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763239254; cv=none; b=MJW0Em3n1fJ0wgbZpMsu5aKXHCtNgJd4YmLb1HZxyodDMCL3+1iCJYWdd43i2EeHsfiMd0HYgYK+ck9xq90g1YkiEE3eg7FP+kLiNRTvVp/aYuzJexp8d6i3/UsiCMy4+x+B0sJPMmUUJcwHzsoRaZmDuhD+9tHcnltyWH839ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763239254; c=relaxed/simple;
	bh=usELaUces2y4UAmNwcBkdPC5q2hTAfZ1QzUIMGDApEg=;
	h=To:Subject:From:Message-Id:Date; b=dQINU82WVE3qednuW9+O2mQNHWfMtnYDRw7PCTelgpYqtEheoF3xsYJfzy2oMnF4Aqmb5kSIh9nRqp5hg1LLXXrdIWiDlNjX51BuNdGirk3t5cMVzDB5fDzaJFWVsEDqC6p+ZSjXC7Cuji9uVvKKqSY2Pb/wL4gdNS9euJdC9pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOyoBx+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOyoBx+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B1CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763239253;
	bh=usELaUces2y4UAmNwcBkdPC5q2hTAfZ1QzUIMGDApEg=;
	h=To:Subject:From:Date:From;
	b=LOyoBx+walgFtEMYel9HT9AnQzYfni7DQJ2Y/38DtKEQQ44Uka/OqrnqXNNAKkR2U
	 y9HyYEh9WMahoZOPX1DyvgZr4MRaEJSc7CVVyqNe196ibD/gbuQtRkYdcVPtj4JMRS
	 bK5Vds20XaCnU5GeuSbYqy6Ve3CtjJc7HAVmNcozzHam2FNDh32eVwzGqhwrtkkR5E
	 5jVMtrmWvyPAAM1bM/bjyNuFA4MQ2TRrJUhYBO5q0gU/A1Zc4dEjQ1SVRbEN+ELGkK
	 KbV3pgOflq9HNI3JIl9Re4JlpzKpNkLBThSruZCV2M4gCj21lRGaWdLg1LBG98Vg+C
	 j1KSP8hJH4wrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97306CEBF84
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323925358.31469.9089306423237574238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89351a7797bad6245e8e798451b4357b3ea18f4acbced43543f0919c071c4e37
Date: Sat, 15 Nov 2025 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763239253
