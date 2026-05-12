Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00237309F09
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778579434; cv=none; b=L3KezC0Uw+Gyk7BXDYApdbfNHvxdXanH0IIva6LgvF+IrNBF9OnIuliOs5ygk2ZRWM4kemQgqN1xPwYVlWz0pYrnDjEYsRYN+hwJ7haRTXe9LIBQItoRjPqwexKHXW7bhTtlCeMaUl2fs9/hr/Hbko8rMtEFmiIn7LxQef3IsNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778579434; c=relaxed/simple;
	bh=WevwFKcByy68DVR18ykmPI+K5Al97QVMvCCiJjxD+jk=;
	h=To:Subject:From:Message-Id:Date; b=cWoe5nMgg8nZKYsnuyWtiBTaa0srMeYdS/LrwuHHahCyYyDjHLjb6t15pJrh1oBQXj4I7x1vO2vRUvKFHkZLwuBFu11V+4ztGzN+jftaPt7PcYIwl8hAW9TLBZMYwkv8NyX23Yt/Z4ZPw04aOFD2+QYHxWNbiTWMbeue6VP1L7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfJx1Tgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfJx1Tgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2C8C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778579433;
	bh=WevwFKcByy68DVR18ykmPI+K5Al97QVMvCCiJjxD+jk=;
	h=To:Subject:From:Date:From;
	b=mfJx1TgkPhtd2O5P+iTLYnDShII67ngO9CXqZVsMi3hZYZWJPBek8fc8f5hYoAwzm
	 IcfEUKfsZstQU98Uqk1znW1IW8lhLnm+Fax1a2tILkwHT7O6TyNpk23L2KS5oOylC7
	 tRtaxWfoAF40hJa7GG4BizgX8sLVcm4J4Slec92pCRoRZvpE2NVxR+xAOjiAVt+G6U
	 EyznmsKuuLnDQXy+uQeS4WtXlYuc4Uksot+7wfY3AfrKVciymbi4iRT/BLImDqKVcx
	 BNWD1l7sbt1cKOIFBrGhjDoGGUCDebWpqExFRYtVaj8+0102bOMGeGkQ4PD1JHdvUE
	 SFgA0ZjabAUkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA843CD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857943368.30645.3904880109571343901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273c7fd8857e921207925e95e2ed594bf10b9d38d0d6a6ad655aafb0dd9456cb
Date: Tue, 12 May 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778579433
