Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3340F14F70
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746334194; cv=none; b=Hm78WV9tyjXimgljB+R78tXNAcHN80wODsYnVSyp6zXCVdvozUi80mfOC1J1a0jm3LMFn9jw3ezjylXT5xmFRrW7Rdx5nNPzNlsTDtuYH86wfjNaBaV1fSIt+nkTCIqv1h4ixOpZAEeyUJATzhkZNuvfCxuvO23XGZtFJfUcgUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746334194; c=relaxed/simple;
	bh=tJOg4FDkAMGUd+q83B/4rQUA+Wdhbn2/nW9RyigYi/s=;
	h=To:Subject:From:Message-Id:Date; b=aHP5fWCJEhnEk8enrgDxdvwM77MsrLxE5JLSdlajz4UCIA/8azbYR/UKrQrOUJ0HtltBBBnN98Af4n+KzmaPeAqOp7z3Gn3U/drD38sB3f0/hqATq7Kf7oz2c5ANKzwmR56WVFMuAXCzTXtopx0EVVSZ92iJzn4Nlir/w9WJhII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/m4T1YF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/m4T1YF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58E7C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746334193;
	bh=tJOg4FDkAMGUd+q83B/4rQUA+Wdhbn2/nW9RyigYi/s=;
	h=To:Subject:From:Date:From;
	b=m/m4T1YFfXI6UBaUh7Dr9ABO/Y1JKwTGXgDDu76m9o16Dbh4a4Xsf0X9M2BMDO3Gp
	 Fsym9ILkmUTEW5KEVqJ7cm0K/h5NmnKFEKyyHcKCDdj/jZtuOvDEKAL2J6QnSGGc7S
	 lmn9HgW2xyYFBbwAPfW0XpNmbVkDEENg4Z85I9NibLEMLYz+V7pLgReMNOVdGCTZmC
	 Nbx/pJ98BsY3Pti05ewsHQKTITU/8Z2CiP2/iuI30RumEtEIUfQwaIK3eJGnSHhHJG
	 9Ndl3InxeBvJapE+W/iPm5MaSLTKGdWrUdTRs/2rYv0RGetLVB+i+geA4WxwiGsUIF
	 0o4Sp2xtu+LqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059BC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633419357.14946.15203056654899357357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51518532e7c68df34a8e1bae2fb0235fbe24626fcb9a192b27c2d2ae1a9d314a
Date: Sun, 04 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746334193
