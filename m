Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456C427603C
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785559834; cv=none; b=EuEHHcmT9qMHrAYP5koQxVd0MXeqTMJRAH09kaMjlceucbTwa1Eka4+Ik0rO5E7iyEAzANh9pt229fK6k83TJ0bWoAuHjYskoRpj7lQAHsSk79GrKLZP83kk51rZ/Qv2z8r1pjbtbL6nUS2gNAM2HUc9y+3UAdjJMX1jhfBTGPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785559834; c=relaxed/simple;
	bh=9i0WXO9SEl2w3Z2zdiNo3NcPtP6nvDPWW+tJE3XtPW4=;
	h=To:Subject:From:Message-Id:Date; b=lJETKN10NyH2awuEvcT6Qe2b+WnWZYZORRxGclHgUQJXbWwIZ+Xh0AxXYKu4V/eV6pKWccYx7d3OY15NJR+McozSVJtYFDVO2+s97If/W/CunxIyllWRuIHYvtaZBc+DckWsyF+rSMn0Uf7dVepWZmr8HZiySGavfe5Y0XwtLy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=podGKeWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="podGKeWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24C1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785559833;
	bh=9i0WXO9SEl2w3Z2zdiNo3NcPtP6nvDPWW+tJE3XtPW4=;
	h=To:Subject:From:Date:From;
	b=podGKeWNCjEGejB1LCF/7IGM5l/RR9yy/eCUYPdhc6O5/jtAuDf0fYjNoTVX6i1EO
	 o1BUVDElcZscChuk5IumLVYXgqRx4/9WCF3pSX1X++VBSfvES7jBjfS3v9B7amSGuF
	 10LxW+OKULQLliEp8ahBTOtawHPhub2KLPoQHsjdF5AKUuSid3jKsBiojsz3eK1BBA
	 oH8a22E2taXht+DnZ/OqfofGfpXjO15mqwHS039lTj9rUwcpXW+ZjSiDNAvF6IZTYd
	 BA07OAUGBm2t7t1oFbBOwTWn23cWRiBi7lBbFu6cMivjjjU2cHrgwSejj0aJtAAuKA
	 aCau5i0r3aR2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7E8C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555983368.29932.1490433528776681510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153328cf22e0601f54a8d48c5410aa847c394ed6c71387f15759a60e8a8a4ee1
Date: Sat, 01 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785559833
