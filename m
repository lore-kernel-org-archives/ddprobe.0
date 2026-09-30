Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8BC40F74B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790804434; cv=none; b=nQDHqNy65E1V+fMa9YmbavXNOu5IfiPHCJhXK379hgxcyR/qmrNEZOwsGCs0FDsLvoD++zZ4+iVPjm3m6Ch2/SfwjazpU19cIO5h6wGGs5gCvTRfYUMbBp2WbJ0xxK7DwwDUWCLOwP5vOIlqtgs5YWCwXuFaiHjjrW0w4hdg0pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790804434; c=relaxed/simple;
	bh=Yv+QXdPHHSCE76OpuTV9dvz1cKl5ZQlwkkNKwRiwVvA=;
	h=To:Subject:From:Message-Id:Date; b=fP1f8z9raeBgixkV50ISIarCAg+dgdGlniB6C29Oo9Jy/+Rx2BkYSVWyMoxiToo7JBr9nQp4DBa/tfuZRG3JimwxpctI+NFlUUUaUU+qw69dLIk8lsORrH0Feua1WEWaAd2S9xE9EK0q9tsCP/X69DSy5YInzUVeTENenJzGjds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xgm+W2fh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xgm+W2fh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAE7C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790804433;
	bh=Yv+QXdPHHSCE76OpuTV9dvz1cKl5ZQlwkkNKwRiwVvA=;
	h=To:Subject:From:Date:From;
	b=Xgm+W2fho1o33A/caqhZFgLzkO3XrdKWQzx5TvNcexzXQUhNQFxK6tmdG4PfKuuuN
	 viPNY13ExNKOkdVVzq8zcN/XuudUJ1Csu2mR7ozh4jks4v9P9EZQMLivElriUYxwbE
	 PpkOmllaCMxGOy9aQSW4xHw5BW1GaWr3yTOaM2PgW7cDMBslX5kniw4cmbSSzatp66
	 9QVmd8D/tCgpjjtm5A/2NvBtDNraLP8LzBKErdcmppRCVuRwIX/BBDnaYyggzebL7K
	 Fj0VFtqxAd3BPGHZzKu7kgt+o26gJgnQa725uthM0LvUw2UTO6bWWP6m9uU2pcqXgq
	 kSlY+Yk65zHNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA568CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080443368.31930.3023452943810428872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179f70ad8eb789fadead1f69d9d6676dc54ecc6e8be88d171ca381b55ab040a3
Date: Wed, 30 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790804433
