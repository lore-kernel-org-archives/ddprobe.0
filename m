Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA5431E85A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785088834; cv=none; b=RNULGEbJBNl0qOAVYpIZM8kmS8VYkguFpI7AMU4gHqAGfn1X/l2rTIQktNdn2JqFc1WnWZKoS+zFoU2Qmkgohwelc26fE+50f2heyN4bCPkBvIiGwWL2H6g+3/XUHgCSlMZry9SGoJR3CdmEBML2J0XrUMAT6lyV0kTLriZBs8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785088834; c=relaxed/simple;
	bh=hk75CLGFpW0BrGy+vuN93SDoFm5Y0lL3SvrDTrrVDzI=;
	h=To:Subject:From:Message-Id:Date; b=E6WZPr32BnxeRWXdFVhdHq9rTD24rPGR4th5x9zL9rb2RbKU6ZIDqZEe9A98HH1OYDVBKB/L/0lACTAUFThlQw2maTjcEhQYBBmG9LJzkbw9JlZav3yvZt5iAAYJWTeWxJczzdSZOoghMuT3v4bCVEZYKtLgL5BXzOPhpOcB5OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHPZj73O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHPZj73O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09B4C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785088833;
	bh=hk75CLGFpW0BrGy+vuN93SDoFm5Y0lL3SvrDTrrVDzI=;
	h=To:Subject:From:Date:From;
	b=PHPZj73OJCdcGoyyFMTs6ghCodSPWMUzkwr8LdWa1TNiXKoukGBlL+upB5bPVh7pU
	 saLFLWkAfJK8mhAANU22P3BetEUnoL2PReCgo61aFexk7IUYNaTiWIh54sbfvtnGS/
	 gvW3W8EbSyI4qTR6n5EBXcn7cZHIiC69UaTy9k/53yZLkvVvCS38z+Zr1DTEs40jqy
	 8MDqUsSYJFUYNoYX8ZBQOFbEZiZTcl265t+1oZ011Ac2GEhsEE0XjjkVGOyQ8hJ5Q9
	 PHOgeQ28Tu9cEBoyRaI8/DwhDkrwYxhBVVApAxxn3EWMhdrCfXRL5KaDQu05B7kr7i
	 RIfibbeQtqntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB820C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508883368.17765.3969114272624777239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0660b94c60ec1cf9ef7fe9828424507dbac2847f0ebe124ad1af2a35ee13770
Date: Sun, 26 Jul 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785088833
