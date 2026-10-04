Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBF01A6839
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791085834; cv=none; b=JeIWROD1RtBtSdkQ9hZMCHRNiCvgzaxjYNssy2p3wOLyDtdoNpy61jQ9g4yXHbROKClXnSFLNl1Xftr8yDEqW41yI296pXLXrprRIasfVoa7bl7ArYRoLL6anfmtUpklRbfQe1WmYljCZWnvheDHx/LAVA7J5VQL7AsFzepJXqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791085834; c=relaxed/simple;
	bh=Lm3cfVKFkQGGSrnSKcalH6U8BriIMSRrVn7NocPkJxY=;
	h=To:Subject:From:Message-Id:Date; b=MgutjY6XaqsYasyY8R9sSQlY6tKMflgqAdW/C8AtxDpdyEmSPNsHq7B9J4F9D8+aCY7L4U4tUWTIzEgqb6cqxQJTtazNGpz2JYl35kjQfd477XumFbl34OjcW2lDTRPXZ9zADOUGAM6VAvSo79gPA3WCsK0XSvRgrFF8f7Kpj8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/4N2sJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/4N2sJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF66FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791085833;
	bh=Lm3cfVKFkQGGSrnSKcalH6U8BriIMSRrVn7NocPkJxY=;
	h=To:Subject:From:Date:From;
	b=K/4N2sJUOjnuUwu4OvHA/RavjgB1kfpkDPUnreHc1VumVM/Vks0+TuCNK1eUU1IDS
	 6a205lIEpo2fRqFQdxywqpCjgAVch0qKDRJcvb8ceFMEfNuviBtbrPDsSMcmaQ41us
	 zJNMHmPal2CTU24Bnb1J1chOjSwXvKPRBRnIajmGSzfN5yNknLHqcw1E9zwKgVWzgS
	 Low9TgK0OaYlpE87iLvgCHe0bR6rWV59RrQ2Opuf/VGbghAZw1YX5DgH3S4Ffev/at
	 ozAP1nr0kts2CDv4cI1vldXFCnyzX0xT2TMA8oAzbeR1Jf6dcWdfzQAK+d9EdqhmEj
	 LC4lQmUL9rqVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAA8CA5FE4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108583369.2425.1841815085135742362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7c7eb475f0ec9aad9771ecfce2ada84b1b334b521d9cbcdab2066579441673
Date: Sun, 04 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791085833
