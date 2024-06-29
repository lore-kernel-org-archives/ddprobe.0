Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6164B42076
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719669863; cv=none; b=njXVXneM74eUINjRtS+eJA0P0MnyyKrJtYM/LcVxlxsCJJ1DV1f5RQETu5hcCOkRAvScW2J9hLjT7xfewkfqxhYzU6Tu1fu/o1kQ/LaUS7S/l9zM9FYGMJJVImIkh5wezgZ6SNiE/thezrPzrgso48OsP5BUmpLHtyiELhawA/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719669863; c=relaxed/simple;
	bh=aNQpkN8sT2HNydfuJyHnML0+FEYPuq42ihCloKimwrA=;
	h=To:Subject:From:Message-Id:Date; b=t3ky9yFEfl4LBZFjyhSWkp4ghkDpGhKQPuSyniM9Ih2P99sDHrD/blMU1NkRPvUHR2TjvhAtezKA4dwAvp75/RQbtKqhLm9aUz5+NBvnoOHrQ/dF49d+qxXteocgpdwjvKg/ZOv7eEbZ5l0z9VTSsZ2kqNaf++VW6kidJptmMGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/NqeI3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/NqeI3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3E8C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719669862;
	bh=aNQpkN8sT2HNydfuJyHnML0+FEYPuq42ihCloKimwrA=;
	h=To:Subject:From:Date:From;
	b=g/NqeI3Bcz4okNgqiyl9R7oHbHkPy1wE+yz26WIdl4UXX+f7hYk6pN1nQsW2cF1Jf
	 TEhBUInglave+8VEBbpY0jOpseky2G+WhYwVC2bWkpSozZtb55wbgFh5iMLhACIi/a
	 1uwkySAr+ZakpfAYsi/Y96nKE+Mh0L1+d4iCdv1+NQD6DcTp2mH2irqnf++enPIcHk
	 HKMV1d1t3yulA4NTRNiAnBd9MlKrSajrlG/mrXa56duHGY7m2JC3BRFA6AGz2c5sW/
	 iRWdS5fVK6vsjumyahlYJGwZ1eLvrRWvfV3dDRtorFX6pTCPaUiMKj/D5yLvzRBzfd
	 Zu2twnJVrpO/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83C6C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966986278.523.2923752214159932162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 996bae51c6f197fd17b3a150f6219cc9ef7170a5cb24d91eb5915cc48a5d4591
Date: Sat, 29 Jun 2024 14:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719669862
