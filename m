Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005433358DB
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772168094; cv=none; b=e8FpOwnkSeWMgfUHpK1sUiuchYESAcN61AWGr/Xio5gtxPcj8lZpKblLLylBHL4OEcergkB/PXfW/WOFTL6/l75GuzHzNzkF0szP8ktnQQUv+kvhT5S8ZkibPazdFJaIyIIrYnpgBGHeLIgGaKy7MtowJ72HyARfEQjqdsXi50c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772168094; c=relaxed/simple;
	bh=hrDSM1LdAQKVEpT8Vly/V28bLBV+1dR8rAsFEhGcFm4=;
	h=To:Subject:From:Message-Id:Date; b=q6PgARhkvKZsOpGga1VBR0oDbzLIHlkl+Xg75oCODKdGsOEbA95LoApD8DYs61ZKcaPw1MOHMlMviZlJqHkN5baW8ia+TieKLdvUgDCZcei4VdLwpXO6hWQ0O/5q4GOztMjmYHAnp6GzCteNkGhL9eGtDaDIK+Lvj15jDiuYtss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lp3HCI4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lp3HCI4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0DDC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772168093;
	bh=hrDSM1LdAQKVEpT8Vly/V28bLBV+1dR8rAsFEhGcFm4=;
	h=To:Subject:From:Date:From;
	b=Lp3HCI4V6fV1RdDGxPx6ibollLsQyCm5JnnZVTfW/0SH8gDjZuk0qRD60spK5Jj6o
	 einqQ1h7yqDnn9GuJbPTvWTGpyZEYHRY1UWYmcedeEgh+V/Ugiw7eMqJ9U2ifOf3Na
	 A6y7RK/SasaNkgk7tK3cLKWmrTvxJmZGr1vp3zbnm3Bk2MMaPVfNuADg9cowkmbI6W
	 7xTFFNvqYTzEs1anIABrjgFjSIQ4+nl2siELjzYqeMOAjO6k0eRhcsM0lNBbNSH+7x
	 lwXOH7Jd9AugrjLZeJeiwlv2K719Tl/eQMVj3bw5stF7nfQea5fx9gWZ8zX9dHdf53
	 E4NlJEAxF6Jig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F976FD9E34
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216809358.3363.3964921851363429226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb739034508a9e606477cd1a816036b093a49c2be3599ccf9e0662000d27472
Date: Fri, 27 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772168093
