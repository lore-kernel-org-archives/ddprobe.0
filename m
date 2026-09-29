Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E573451BB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790697034; cv=none; b=Z/K8LJVvwnFFCOui23IRDaR5DJf6Pamlpje827F8yBd4aTJ/pHgHmS4zdGjCN/eJ79w4mVLchFUNVPA1KDL2yReD3IY16TpZEQg5ZYz0NDFdOifxPiaR7Oz4+x+OoduvXkeviSZNBJUQ1tjgre2xsqtL1b5a/fFodCaiYBvlqSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790697034; c=relaxed/simple;
	bh=BAQgVpYuEmI4Fa1RXtSOTTJxvIFKBcOiOsLghPTVIlY=;
	h=To:Subject:From:Message-Id:Date; b=HLP1m5CIaQN9KQhMNiI/nMrZcdyfy2lkW6O0klJ18RrKQAxsAQ/HY9qNItLYxanc88DQ9XIYCacQj5NkTWbJTd201jhESQMtM17fuYZVv9IFJ+0sLZqgTvT4+1bpIU+cO6ic/yLx9Ek358aMX7CYpaq0To1cnRkLA8POTnWsN2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJnaXoy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJnaXoy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE33AC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790697033;
	bh=BAQgVpYuEmI4Fa1RXtSOTTJxvIFKBcOiOsLghPTVIlY=;
	h=To:Subject:From:Date:From;
	b=GJnaXoy7DgPSdijd5mIYRblT/ZpGuZ6dzLj6/mlG5fn9US3WzrpVpd+IY7rxsFUlw
	 fh1CwSpmMYXzHsxnQLYx+GFJoPuU/VUUafe3/VhhlsyXNluNZIh6cZcYqyLBi/8QDC
	 eDyVB/UN2OzuqqlE+FngZlUoQNOCt4DY47aHBe9wEuiyUHRL027rBi/wV8ZgVL1O41
	 O+3lKvxKmOaZ5PA4iCTeyuQQ1+j7X5fJdQYhepeJ9LFCufRMX46ycAUgrBusBuAO98
	 +OApb/DehjpJt4daKf1grZJEByjJt8qzOWhra3r+nPRBAAxRR2nJFSDKYe1wSxQGmy
	 xtjJ6Q33jnZBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB585C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069703369.23354.1196932100027595499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89e032918d09a45ad42b944e233b110058b435c6d9cdf41e44ac3b24fe19a09
Date: Tue, 29 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790697033
