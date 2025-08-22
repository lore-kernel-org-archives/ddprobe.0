Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1993F1DE89B
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755892194; cv=none; b=uoEGWpcNtZJy6xC1yerzbYOb0Xb3xK8b7ZqF+O/5EX0TfI9DDuNKMxEuZQFm1HB8LAweiWc8b30+Z95okNEORMd3RA0v7oLPFFtWeXpdZ0YL/8vmJo5Qi8L7F+dy54wso0Eb30/SP08mYDddinXrAlEB/im3Io9b9xQ4GGWg2ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755892194; c=relaxed/simple;
	bh=oaRYp0jB6B9LRoNWAeTNE0iXoRyGFZtiaYjoLmepglA=;
	h=To:Subject:From:Message-Id:Date; b=iA0mJDJedreJIYXoqy81eUB3zp/3U6iVKN3CsO5VEBP+L/oWd3jW+fXq4KOI9aO0JoMaTpt5CwF8upbdB97GRrOCKklqN/IHE0OmRlOsUIZ6fzFNHUGeQUJ9uoaBIzNWIGjTbp0/ZXcsJtvfbnMPrH4NckyDkLAj9V2DNi0agFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFsSqQz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFsSqQz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A7CC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755892193;
	bh=oaRYp0jB6B9LRoNWAeTNE0iXoRyGFZtiaYjoLmepglA=;
	h=To:Subject:From:Date:From;
	b=gFsSqQz/o5mA9VpdoaPjLaNJeA2S65dr+r/jjZ0kgd+TnDn1RsY79HP2Knw+bCVHU
	 S1nmAfePjVjC+xrspzebYDvGRsz8hW3x2W7O2SWXfhy0EncpGtDk9lj3EnHPptgjd8
	 y2HKW/XtMEl+Z0eQpIRmb+62hI6mkl5n2uFk+Hkob/FGUEPqeKSg2cqP7WZcuLx1Lm
	 D9LMm2tvuiU4l60Cow/xc2Ts0Ax/kFkFlWs5R5GYhrDGSxV/DAzPWY5lJsEJF254Ft
	 0DZEmeQ5ZlmC1nC8K2Gw4mQ9oGvqhVohCDPcszVUxva3n2Oy7y9WjN1kcn1KIXrgqq
	 iGM6zi3ahQ1hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E48DCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589219357.8607.17251982479363879327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101ce8fe98134829e557e43e6d529c318cbd43d06a94aa56c00f6ad0e85a1064
Date: Fri, 22 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755892193
