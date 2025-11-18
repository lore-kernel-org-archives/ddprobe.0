Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3681308F13
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763453514; cv=none; b=gCI4AIAS4l8dKSwsR6g7uKtpbcHOu8ODv3iQ6gNP7uNbBviuNbW4KUcyzKFKbMgFcWmCY+svE7XTqDDHEkQFv41B65MNjf2O4FmFGmTjKPL2gxolAN8kfOyz1ihhab1BbOt8Q9J5Q7DI1639HPiBEdhpgq6N9rAanSAPdKavSY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763453514; c=relaxed/simple;
	bh=KeYDDcn2TiRFqyJ2PfWRVNIjOxSiZEvQFiGQXOzuxTo=;
	h=To:Subject:From:Message-Id:Date; b=rVkzg8Z+JQvsOAW2tAh+nHy61u28kEZYzLK6bSfJ16Y6htETCfDVeKBfP1A60vT5Bo1j/Q7Z9ftQhhTx/j4HKjlg1SvZ32T4Y8EkNi1GAXX/zdjyMtNfJlSI3nsg6ViDRIJ6zXjiTw8UD7mlK7mbsmOEO33N1UTznOlsq5dZosw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiXcTS9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiXcTS9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9FC9C19424
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763453514;
	bh=KeYDDcn2TiRFqyJ2PfWRVNIjOxSiZEvQFiGQXOzuxTo=;
	h=To:Subject:From:Date:From;
	b=MiXcTS9CfL47OlmSWeP4fwLoq3RO9A7aYktdQXnrDRb6n3o9WXlKFk1BI2X1xFGdw
	 lXnhDUDzzc0ciLtkpOojn5qohjpaCUuBz4+UShvflLFF3LbQfaBiSDX5NJAOnHyvUf
	 7NNxp67A574Y4aaNt6Hxm+wrVgVLruQIZbH+lXQjGwU42v+71e4lgmXpwktvooVTtJ
	 mYv95IoUJQfbIcU/hniWna60lIEV4UfzLYfGL6PovWf01oMRgAeqrWIbjd3eZ/ejDW
	 DfXn+Vh7AszTHnRCSTIE0MGGkiZk3ego6X5PqphKi0cI/MTW81MVTANKZ65CsFV088
	 YfSs1CGeJEAQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93989CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345351358.9569.10476697388013385206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fcc1e137399e741f12d3396fe45b21848d4d29bc86cde6a2fa874ab9dc2021
Date: Tue, 18 Nov 2025 08:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763453513
