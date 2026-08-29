Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4757E187346
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788042034; cv=none; b=J+y+n9a1FcXnxJ+7XSToWEWabzQC4vCPtln4VczOLkO477k6YA/SKZeD4xepG0lsA2YEbzaX6FLOM/hdaSFFd5vwxvL+yUnLSZ60MWp0nAajFh+w5Ibk9EbmiqgjfIubaj6pq6QC4PTu6FwaQNLNVoOmuG6p5zDP+/1fAmn1C3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788042034; c=relaxed/simple;
	bh=oIfPT9VNc1qZEpWJsrBi0uaHcsHxIP+RFkWk3U3AODk=;
	h=To:Subject:From:Message-Id:Date; b=Lkplr3el+rDBtRNfHgmyDr1HB+N6ykaHY+PAblHEle1X3jr/5dMW28f4NR035gr3neNnhpn8FXNSRUJ2dR2OBKAsHzKp5guQHUFnfr1zQC3UP8AwJNex314g4eptJnEiyyIkrdzMyNApKNG6yC5qaR278+wUE4fDGkcUSyZxmfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlwNAJPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlwNAJPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B0DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788042033;
	bh=oIfPT9VNc1qZEpWJsrBi0uaHcsHxIP+RFkWk3U3AODk=;
	h=To:Subject:From:Date:From;
	b=QlwNAJPfSZtmfQ0CoBswSbGGU++t4zzWxZPxyFV+/Umk7WD3QUmz1NwWRqKykVJWo
	 LNDNTptCc+ydUR9pXd0lHmLiJElNuowrhGDmqbsLzn5xj4B05JPkALk0j8Q4xw4JQP
	 cBkacr4N5PkRiwfYjZXxb4pcPerADKCR8D1d5onj5mj/MjAcngQHABMaAi+VEa1t+S
	 JMVClxRooETZ44bs9sM97+EKj4a3S9U5R+20VZYUQz2fXG7LygbjDITfk8CN1MYNid
	 eJvFNxZ2168evfJucZR5o2x8JQISDg1WvrNVHvDk+Yso4AGv7wQvMBhgjWxgGOAjvs
	 WnSocUwqTvvtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CA5C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804203368.30265.18377053383297777055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77134af9c703bd6ce46ffb126fb69e2972aef4de5465171918538656eed14d3f
Date: Sat, 29 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788042033
