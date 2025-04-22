Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3875425CC5F
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745359194; cv=none; b=TH96p158yEgHqnpVyVrX7FV5SAeYx83PwNUCpN12BGEN+x494U7gVqNqMdcFEJLIlp2xd907vIOLAPGNXM2yH7wi2VhOlBivPibrdoX0b6WClLp8KBr7jklJC0OKEj0D/+9E0q9fwQgYsJwRZPLJl6M0gy4pTADCj1AFJ5qv9ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745359194; c=relaxed/simple;
	bh=lFKJjiFCIectdKcJalOw3/Qc8esI7nvVdjGm/+Rmhq0=;
	h=To:Subject:From:Message-Id:Date; b=Xo6VI3ktjmaon315xsl1rIXwLOe6P8EFRHptpsZeX4XJyNHKfqkzGdrGcyifclADXBu4uuIP5JyIwARmOvkcsiCpCG6OY2udSgiLGbGQJQiSOw57VK6pPNXpIYijIwv2oTpUTx0jo3pJCNyapDya91LS6WMsNPNrev76IuV/dRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbReVlbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbReVlbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD25C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745359193;
	bh=lFKJjiFCIectdKcJalOw3/Qc8esI7nvVdjGm/+Rmhq0=;
	h=To:Subject:From:Date:From;
	b=RbReVlboVGQzC4Fn80um6nlT+CWYStg8Tcsp94Qb4A5go65VE+lH2N3zEA0zwJaIL
	 526FQ78eW13PJnnncIGJ3rZLIAgnw3cMlboKeBY4AX24GeRYj5kgAo2TH1VB/MMOqI
	 Si44moIWo2eX1zS5bqJzX48QN+PNW5Fzd3SjTo1rUxvWDs3uQwUvoLh1lnBvCGKWF1
	 QL48Ixv9FoJFnr8at5JOMd8sl+wJw6n2cfqC0Q4kfk6brgiVnoqaKEy9BX9FtDhElD
	 SBLbT1jmYPtIirfGgygnSvWL3OGPpqDe8gIyfiUejRObp9NFRmdvOuF5H/hSuHO9xI
	 E3JEKXPM2uD5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B58AC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535919360.29085.16153616095712056062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09496793d1a131838a74d18b8c12fdffc57d9dddfe740d8c398b705002cc12a2
Date: Tue, 22 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745359193
