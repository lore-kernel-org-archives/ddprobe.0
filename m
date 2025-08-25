Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6EC23C8C5
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756102794; cv=none; b=qbh0Ce9lTjlheczWToRCR5Hdw436v89FYMwGkYSDeJfGxGGgm/JDULTg1LVZSG+UtV6QVU4DGRluM9a8uRuvR9uG52z+1p7Lh+MRKF3s60QVmrP1cL/nrD5xBNlnxhZmsD7O6xyTn5T2QVRNWTe3oEUR8iZ35FG3wbCaaCBmtc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756102794; c=relaxed/simple;
	bh=eYOMd9k4hnYdth+mw16DTpOOYVzI7qf4QG9MTBs+RKY=;
	h=To:Subject:From:Message-Id:Date; b=CR80x4EDSzbpQ1u7+zGDwlziYM7OJZmsdfGzwaDQAdp2MSz4u+PreXtxLJI/tCBNuxAKtc90geovMEg3OipK4SV33wSMoh3ALQT6qy02adW5AmFswYoC/sILRxoYrOR4nnAqvfGHfh2YI//766M5HrxKmRzGLjrpcc+JDqczI7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvzUrrSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvzUrrSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A574BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756102793;
	bh=eYOMd9k4hnYdth+mw16DTpOOYVzI7qf4QG9MTBs+RKY=;
	h=To:Subject:From:Date:From;
	b=OvzUrrSg+keY3GpXRpAeaBsSochUwvVlQncDKSweh6qgEP1AncNyNxaBITga5ySfw
	 RW8ww7odYg2EnJnlTvodZ/abmd83+O3gvweOZyxXqYPwXUaqdu3dAgbOAnI80qBVhw
	 ALsnvHwcT7ko3bUuEsqrM9CpR1Y3xBhjU/JwVh5iZaaLawk/zaqQRRoN3rz5GiCgfh
	 5g7sZ8vgr4xwEpWEDeohoN26M81WTib3dEafz2gVJqWjbYSZaCYuboZazZML7pNreu
	 PMzfaIYmHarIWsLv89rl8w2tzDizciWNdwyNYYDIbNSjhuTJ9q4gYIrPs7eOKvaoKF
	 kuAr9Jkpjx9HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD2CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610279357.18873.3868092816336045594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b7ba4d32249a42b956f91ac6c103282aa5f77cb9abdc0ff21446b9182d28a1
Date: Mon, 25 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756102793
