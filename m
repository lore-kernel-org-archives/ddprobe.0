Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177602D6E4F
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759828194; cv=none; b=sOxR4Zukryt08ZUfVRSf+n6cOCpFspCzu2DNbPiFJ3W3+1FkKykYi9chEwgWQehQqw1Klikng5VQd+OqUghlVip6TC133chKz3ZUq03vel/z0XNhhfaIpW/HPcjHXOz2IYhv3lepg16qMreC14goUEcbgA+MJBrWHQNQy4JOzTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759828194; c=relaxed/simple;
	bh=hSdm5uLiFLVDfev5E7W33nAwT6a63kZuaxA4KLoZsoI=;
	h=To:Subject:From:Message-Id:Date; b=Ws7ziDFtUws2ncaA7d2KyX7Zmrb9SGHdZ3QZYJlCRaoVWJAEmcz54nnG4NMXvV6hP+mR+M3QbB2Y9nXG7tkEucGfed9fdBp7fxBVKi1urKaB96uR8A0Mr1sWtd+O4vF22/yC2qpy7ob3BpBV52l9+kFhMDQXaOFfXhK8KnLPlAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKTL0CNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKTL0CNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57FFC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759828193;
	bh=hSdm5uLiFLVDfev5E7W33nAwT6a63kZuaxA4KLoZsoI=;
	h=To:Subject:From:Date:From;
	b=YKTL0CNUcqUOoU+3GoVPol7sMhRlOyIBNNaBl5w+n+vqiBYyJV8+yhp4RKX5H0dV6
	 gkQ12nMY8iTJnZD/1x7GxRDFu7pVPcYI5rcI691dNoE8blvxdV8gmQE3esLvcSt3hn
	 c1fwErFYS6LNDgzbkeMzXjacIaV+oFF8fTBRWwxXMtkz5yj3tgE6SPkEwqdInwmsyG
	 gcIjT/xWbhdshCU3ASZuvltzq1Si862dp3X6iyJfKKG1RUd+N2B8zXnVshIPjYlLbt
	 0W5x3mZwOtmQfbgCmZjrKlZ5L4Z1dJY20yKhYbqedAVhMiOJdgS7fZJWAdHMX/aRYR
	 KvzF0OXpUtm+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90675CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982819358.25288.1374753220164917471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e51a8b9b463b164a11d7c00c1b08858ac3903ecd0be3b38f17830b0093bde12
Date: Tue, 07 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759828193
