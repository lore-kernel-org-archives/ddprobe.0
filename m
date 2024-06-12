Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E36916EC13
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 17:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718213303; cv=none; b=ptAN9bKVwhmC80EHWW5jTl+q7RVAQB5i9ngnHUBx5cL2iahEWwViPaz/NYlyQZYi1ePT3sHejIAt78pHvPhjJ5MSBrQMljekYBOVYGHtAqN3mmFRq3sADwh/mCuOO7JpiRBV9f6HM8kqjPyzUPkGJM0xLANDwurzNkakKHLJuEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718213303; c=relaxed/simple;
	bh=Ph3QcgLD15JCt4pELw3WAScU/HiU9S5LHVp6q/rzD2Q=;
	h=To:Subject:From:Message-Id:Date; b=VDaP1YXkII/0PH7HlE0U3uLDzZr6V/W/kAdLQFK4LnB5TMa+laGdsBw46HjEvkT1i6Tuscbq3GPBN3Oe75Y4iJSOj7wktgjnfSHaft/XPS4Z0O107adjQ5s17i+XJECpvm+PR69yZi2Gk9MuX/FWqaEwBRFGe4cI4lbtwDlZjJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4X4bcQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4X4bcQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFCC9C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 17:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718213302;
	bh=Ph3QcgLD15JCt4pELw3WAScU/HiU9S5LHVp6q/rzD2Q=;
	h=To:Subject:From:Date:From;
	b=V4X4bcQF7C7SgbJGDaaK8Ld8pAj6wWQ7XH7NOu9yqXnKa+slD/SHEnsPzIEaqBUMh
	 2r17lb8+RISiWj4d/ynXuxNgrAB/w3UuogrlEURV5YdXcQuRZLbFA8pNwwPwKPToqu
	 BcVJdTZHhqXkbyGXTlLx7WzGfjJjuPXk7xiUq1Y5A4Os63bqTT/jSG6bqSMNnffvSL
	 OXq2qoYHO2jcKj5iLN6thgNMc3yUGCauwt8yhdaDzXyj4Yc5IPyselJ4KlYvC03b3e
	 Xbxx/bR/voXHNyWQg4012/fFbStyJSutygpu8DZe6H5F+xOtIFdmdLpRyAcxRUfXFB
	 ym5H2Cjt6T/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE9AAC27C77
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 17:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171821330283.29260.17279971699147443105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 553c7c3ab6029409366e780b9b2b604881df5f30316acb60261f0d39970a25be
Date: Wed, 12 Jun 2024 17:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718213302
