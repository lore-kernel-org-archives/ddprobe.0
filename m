Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3002A19A288
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778740834; cv=none; b=V4mo/GRuzDNoteNyV0iRtWwBSp9l5HMJWJm4Ol5EibduACpODxaWNMZQHvIkFrGPMCAHYCjFLh/6ut9JbwzrOBeAmYtLkt205BgAYbwvI1Q5eRD6KT8s7Uyx/vDW0934HoB7CYjcx2PN2CgaRL90wR+tmigSFvtuembGmIUdLLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778740834; c=relaxed/simple;
	bh=ZTgJh6RH1yOnMilPCumExQP+AjcQIvqsfaW6S5+3+aM=;
	h=To:Subject:From:Message-Id:Date; b=mdoD8noMdAWi+z2L8ck/jyRqxKj7MKqWTeju9fYbOJv7fEHVWGXSLJi5NiQG+ctGWD7R13IJV2yhMREdjeqxSCbd84GQmehQ0tE7ybRAerhvpLl1QvvXdZDbyCrIusaP/fL+KEoWPNHPsdHqY+iEZQ8BSkIK/7QBaJRjvPsydh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhqfdxJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhqfdxJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6BFC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778740833;
	bh=ZTgJh6RH1yOnMilPCumExQP+AjcQIvqsfaW6S5+3+aM=;
	h=To:Subject:From:Date:From;
	b=BhqfdxJdjsoKoMmb0SyK800JIEsD09OjttEIpr0Z0dWuiV/WTaR/+feVcnpbjcPHx
	 MbZ5vevW+S6DV3DDRvHOVWhTwa3JWMZGjH1C7FGTyKfgwRd4PfLoZT+eNyvNt/iW9V
	 8K6nST/EiPp63Z+uew4bo4UgWfKx8WP5BbQsmbHYay2nIHRVhAtvmSvdHB4ox8Lt9D
	 Grs81OgQBVai8RSvXwXFH8SNyAc0RFubbjoqPqXZvqnMVQnGBa8SVMt6mCmYHrcRpY
	 G7ZloOSPvJXQyFZRoeaRjlmO4qxoWjFUmj0ZcVwysqa1CP/sZNG8ZOMfyaKxH1saeF
	 EmIRKE9/WclKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB316CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874083369.4001.12978049241785375767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73544db03d51a7c791e09a030e6de7056a312acc4ebc9c81d430680239e9a57
Date: Thu, 14 May 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778740833
