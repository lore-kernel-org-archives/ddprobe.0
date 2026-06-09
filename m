Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E91417745
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780963474; cv=none; b=M5gx7vXFyyGat2Ij3f0kkM7L9Jc+rfsVflTrRodhXWjMgWYxg6yJA8wN6qhvLsYgEN4SOLhPF6sdBU8gli7dMQd5iWgqbmFEwzjuwkYoSCbH2nhj8vpRwhxqepA5O39XMuP9V9VxzuRkTw/4vZcv/MBdDaPBA6i3pJvqRo+cRiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780963474; c=relaxed/simple;
	bh=Hf5YF060r5IsRV70KyyW4IHOi47IE30EzFTOaxt1bjw=;
	h=To:Subject:From:Message-Id:Date; b=RAmwaD136z0eKymw3uFqLKz5SUMiT1wKsqNho5hUxX3JkK4cLiDFkhFzpJJMuZwPVoLzQDQZQ/9TmuX+v2v7JpDccvpi6eGipEsm2JQ6/0ShiwasbJOeV8PkI1IMzZCTktniSv+KpO7y/fzVFbgZHImleueqj/vY+CXAUrI+P7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTEPp1w0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTEPp1w0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0852C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780963473;
	bh=Hf5YF060r5IsRV70KyyW4IHOi47IE30EzFTOaxt1bjw=;
	h=To:Subject:From:Date:From;
	b=QTEPp1w0nGSRv1ArOltDZ3qQXoMO+dyc+Eaz4GUYl8BadI6deZlXs7YiobeoaFnF7
	 lYD6+Syh88SQVa+fOpFja21dowVxrYjmu6E6LqO5roSv+UUyxUKsjUlDzjWO3vCptU
	 APPnty5uZ+SFOLEX2oUPusZULB+Mz00pYkKGWMxXSg35br6rq6HrTIQazNfKtkQkvc
	 zpr79KZR0N8uuUjdr9R8nQeGnmPB7NyBNvovabsdSdbUzmeJR00VdI3Gp2RfUuEJ9k
	 3KxuQJZojMvIaFqTXNX8bqKR1AEa+u2vcsYx0t5/EcNh6vWTm24n+513Lct7x7vwWv
	 /1aiJaiT5k8Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3360CD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096347369.9326.16507351207033942372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75d4e8a913c70b68992a875455d6ad60d66a0b3c39cf6d6c0696e999a3725e1
Date: Tue, 09 Jun 2026 00:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780963473
