Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545592E7BD3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787087434; cv=none; b=Vg4kbkqDi4qcRhO5kJeJxe8BcdelmL+FNjr88ghROlEfN4SqIOJSdBXcdFFYhfSersvs8bCohW4RwZEKymQQhYnrwlTeLd78nPi2kaZE6KUOZDS3ykQ9Mkw7nY4YODLUDbd2B5BhtO+BeyXILRd3TFK6iP7memLncuFaOZW7xsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787087434; c=relaxed/simple;
	bh=P3UUcG7FXcpcuolyIZYqbXzn/nv7aHf3PeiYTa9HK8A=;
	h=To:Subject:From:Message-Id:Date; b=afb6aKKpn8k9DJ2cYjul+5wb84Zrah/Fw8/7Uz30xUM9zfrFw4KDjRGNB2h5b83iFFw5R6ES3VVNyaa73t5No97M/ZSoJ+8A5kHd0kaBrnwNh394e7YsnHJAv818I4qSM/NeX8JiaPZSlUshYHse05VSLuAZd+J+ZzIm8MCZA60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8gkTeSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8gkTeSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2675C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787087433;
	bh=P3UUcG7FXcpcuolyIZYqbXzn/nv7aHf3PeiYTa9HK8A=;
	h=To:Subject:From:Date:From;
	b=C8gkTeSQSULinwWaD3DZZX1moVFzs6WwTaaDV5HKMPDFfS7l+5Htf7aLO6KwP/e28
	 2T0I0NcYT9WT7kHdGm3M0zkHR0j2jI1k1Z83Y++8Ryl2bTad9YSXw8RVvLmfQTLF7w
	 bEgUee1tMKgnSufiGRIaFTGn0VoX5OTPHV0c/x24FwRBC2WhtmHo3gxt6E1ljL6SH0
	 5Fe/coWRmvytkndph2wHwF6IgmqlorUtdqcOd8Lr+ji6rl2DRgGKA4H3nw19jOSS7d
	 vm8MUVrxK8iijy4NcqIUGkz1Bc02LHKZCuhySbVvi1olmS/BNh4qIeR0oElrKkROnS
	 mEJscMJ7mXhQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D2C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708743369.20895.1970208595790349393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba7a47dd22915d20beda70165e909030919aec2de822d3a703c61f7177937fda
Date: Tue, 18 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787087433
