Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3276417721
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718125103; cv=none; b=LNLjoSrgT0OfqAbzWr8DOHG6UAoZW3T72630dCK08hjTvnCtgTgN/CyBcNIxCiA1X4pw640+j5UJlL2OLJ4OSzeLX8wn/+lPeKMnN7MIhEYhBvmHhZuwEjNS17gwHBYYs8rIP0scSq0kX4hxTJZB7zZszkyycWz1PdeWcQDEZfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718125103; c=relaxed/simple;
	bh=5CsxuhjbllMVl1f7dKKFqWr/8EjVPPVbaakDP6NA1Ls=;
	h=To:Subject:From:Message-Id:Date; b=DzHihxOZ6ekjtckNR+qPtnaXe+pSzSVPrAVslhnxos2mUdGWJDYbqfVILylXHBpW+CKCTbSbJzKwwwBSv++BaICmNlTVPWkdPmHQSte0R92Cf3/V1pSmulhpuXaDA421qAuT6Zm2Y7f4ZwuE/zk42ZAyT0CoX7Q4q40HJNpp3Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0o/+4sL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0o/+4sL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD3EC32789
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718125102;
	bh=5CsxuhjbllMVl1f7dKKFqWr/8EjVPPVbaakDP6NA1Ls=;
	h=To:Subject:From:Date:From;
	b=X0o/+4sLw8XPMtlgybd/XPqmC+8o1qjrz0C+4fqd5wAiVekF4Oac2yFClr2Rf3Rj9
	 fSByQ3QJ25tbFH0wTksggXlSxQTD25jcWfRSKVwN76+xyjtnlwfrUkGfYfeKPxu0FA
	 5r/AUNZ5JgKYCFYseaXFTRmzA/AhhAx40ay0NIhnVaZVNkeBwUkQkNYdS+U3deqwZx
	 NItmSN+JwE+sc9v/i7f5KkYoYdhj0OKCvYBia/LX5VJrdP+z7qCFm5FDZXR16MjAue
	 B79xp3ide24nL4uri9LWi94d6SfFUys35NnNe0rHB4uHDWFD5q34zEm7vm87vJzf0l
	 J/q7E6zE8WreA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB872C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171812510276.5654.13832884663389266462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795c3dc03529d550339e5e62bad3515ba1236259f03cc70f2b05d8a8ad1d5164
Date: Tue, 11 Jun 2024 16:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718125102
