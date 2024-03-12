Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D4369D0A
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710241697; cv=none; b=i6c3Avtxkvh+86GZyxetiFRkjY6rmsyXNA9xvC6w592u+iA+V08cq0pzVVW3T67aGGk4cFzuNSTp7n3CcJMVMXZsktk6A2lLE2YKsRMvBoTp64NhPZXEvXXVQKxMIiP2ZRpBXVvbMEWtvqOY3Y/hbzpVEwkE0BMBzEPYIyhlD/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710241697; c=relaxed/simple;
	bh=jws0R4RQqNvZlWU132D6qnwVAZ1WoRol+O4yzBnMEVw=;
	h=To:Subject:From:Message-Id:Date; b=kMG42tOOroVZS9NukFQ1GWhtanq0ukFWOdRT3Orr/ACXYD8uJtOXQcJWQfaESl+wDihlwAr9kbVJ4k6nubde/3s10USZekM/bWxnCXFIIvzZT0ojCBHpOIuhnCGx6U/hrQD7dcynJrsIP3mpkR2OruEFCxf5Kx2zzi2kiSljtIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3s126um; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3s126um"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 865AFC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710241696;
	bh=jws0R4RQqNvZlWU132D6qnwVAZ1WoRol+O4yzBnMEVw=;
	h=To:Subject:From:Date:From;
	b=e3s126um0N0rFomIBjt7HGfjzPhGi5Ue9JQ8R6smczP+NdV93tM77e16jkYF7IUAc
	 jB4rYA+W5C1Jv9dBSOTLB8/KC2Izz3Jj+Bm2avOBTbHV4K5u4wtMfDoZaGnCm1Gafm
	 KN7ZScprmHW9XmQSARo2PTbHElF3c4ceOAJvcDGHpYUFmQLGNagnPEeDS7z4uJLqir
	 T6ZaTdE8s8VJgVXVTxHSCmhMbD8ThraHMVhDupXbsO32aw94X6EqBDJgXhWPxGeS/t
	 sjON+z4ErAJjTwEQsoSiifBcXyHZPWWzS1wy96RthKtX3qiwRiM495ZdKNtY1Unw4V
	 8cOdAMPC/YOTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 693F3C54E58
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171024169642.1905.15737496149906577377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ee36e118fabea7b0f723fb28683ec59bdf68484cbf61da885b4ac919cdd718
Date: Tue, 12 Mar 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710241696
