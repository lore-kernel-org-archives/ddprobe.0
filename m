Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EC447AF4D
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782851914; cv=none; b=ZbLjM2MW93IH7s8M/mdsR7v7useg/Ub9MOhVTztbJVNLXHbsISozbfWjW82dXR7HwwMIBvTJl5UM2MIYpv0T+Su5LT43FUlOXMIB2Ftjl3qY7pNYVrqIpePDi5SlwkVd2xSinNqwqcrYkBCGk1kNvcmbwdLOP3v4ZYZwqnO2ID0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782851914; c=relaxed/simple;
	bh=rQ9mDlnezmZCZbMmzm6BoOcLHFYJmWFJguueY2M1W1I=;
	h=To:Subject:From:Message-Id:Date; b=GrYi3lHtyDm0jz2P2nXoVzQvghKwnq2J/CZa48M82DSASBPxYBIiVcuHlYdQxPyHc4YPiDQFE5aQP5ZT843Lhjq5QGhg5R5svHo1urMLJw3YYA8ELNQxje6PeNWPqvams8K879O8dShnroLIC6N1UjNsaEhuUC3qoAsrPIpF5Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mL6QHVpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mL6QHVpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB08FC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782851913;
	bh=rQ9mDlnezmZCZbMmzm6BoOcLHFYJmWFJguueY2M1W1I=;
	h=To:Subject:From:Date:From;
	b=mL6QHVpfVeZzM41RpkageEcBOFSzPpovhMbvhEhkD+vbvoa6X3Z3mM5yfF1/5AiTi
	 2zZEUxm/bRpbZ41c3dal6jxxVVgqEjyitsavS4+IbaMss5nuB+Xbi40l7WrUH96Vo1
	 NmwonSaghBKwM0Mp7XevdMF4kJipQKUeCEsNOTwf9Cx8VUgg1ntB1xlZ415aljsQCK
	 szcz0S311y5clW1Uw0BokO7mvA7OGXqaGbcJ+bSJGsvt4rxubRsR1z2hL+uNfHjoYD
	 fTRXOf9wkW5HjWYbA9jMDxMBoVDuy0yfYAVinUI2VDhnlVLysd5vUBF0CwRSlnmXFk
	 A7z7fwTUYjXeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC82C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285191368.18618.6518729000219728980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1877228af706bb840d63295b95212c42f38b84cc2de9ad4858bc9ab8a62eb377
Date: Tue, 30 Jun 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782851913
