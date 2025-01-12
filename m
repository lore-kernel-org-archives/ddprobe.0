Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A0715278E
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736705154; cv=none; b=vGRsrjJaeAqABcUnf8g31T40sFKgfUsCaA4ELIqKoWB7etQD0AMA0ZWsNn5XgbjD3z7g2MgmJjzIA4GjuChO65ndtDriXWspCyzqImrVJp3PS8R3Nk7164MnuH9kq+1ce7lThe/cJbTOW/d1ObFu4I1HEHflODH/WOxbpaOiils=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736705154; c=relaxed/simple;
	bh=AE9g+vjRVz1EQNQZtlTqxyynxO7YTm6C25pJG2y2t6g=;
	h=To:Subject:From:Message-Id:Date; b=dxSmCdq7rm3Uvld4bgH0I0/JOwO+Dij977TQHR3RAc1Jb4xU9fivksl8G9jv9oBrClRR1rjDknrZbZV28qgHwyD3gpSmgyFn/+GJrtdphbXimZVFR+g0ptWL+Qd+amT5dZKt/U0KMGCocEEH+sPkwnY5aFNmfqqZijKN1pPsKQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuiR+FzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuiR+FzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17B4C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736705153;
	bh=AE9g+vjRVz1EQNQZtlTqxyynxO7YTm6C25pJG2y2t6g=;
	h=To:Subject:From:Date:From;
	b=RuiR+FzTAM7T2m/PqoPczYlSuvtXowRTWwf9Z65mBIFFAvPIhR9tGdOmagXNZhv9j
	 8EUe1EhLhPcheJ6QTFP7dByYWSmFmExepyDsB7fQv1FgCHPncVm5TLbJLSAz34pCvj
	 AL5mQ6/H0O6DvXlBWrPqKrw297ENUgTEKeyeBjdUMjnrjSP+fe2Fjs6vB+yTGQs2wA
	 PJ+jFv5R+QbF3jsltGG0qsfFOtDsdtSIGtZ0tRV6U4UclLp5V1n6wltYYUohRZXCx9
	 DR+26ZfpsjmVNUqxONuQmONq+ORkYutgTKuVJ6XupBxmHeBjtLjTLujgqEA8G2pJ3T
	 5wnGfBWCLwLpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB07E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173670515360.6158.2067461401740960864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a153a9d0f3adddffa91ce223adad163ad6b009206307227f732273ee767b1c9
Date: Sun, 12 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736705153
