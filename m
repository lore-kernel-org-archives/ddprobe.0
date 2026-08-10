Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501153B0AEF
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786354234; cv=none; b=ib0Vi83f2UX/UhcEFr+8lLw/BIOl1rAKgns5EMrslGuM6CIHgGLl1drEbifNb7x+fVVU++PHyDK7K+iIG+Drun8sfjegbHe5Quu/2QBLYzwzlmn2aV67iQxTyZJk6wp50kMzMdHn/4COZsELqtOA4QL5BNNP0rgmcEy68+N6GbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786354234; c=relaxed/simple;
	bh=MyqdUqoLXQtk03mOXchNWkZ/FgvABO4QWJBARqOzToY=;
	h=To:Subject:From:Message-Id:Date; b=YR9d1p+uJyTa7Pr37eqEhsoDUDtAf5HBTfnuZeCC3buQ3wV8GkM417GkkRKPRy7qKRGiJrHRdn0/l4bWdUoLhPQ3vix5gXtNZwowlNDESok3hCK3bI2v5CyeU4CC8l8ir2Ib6NJRLuTb06j814n+9Tvfm3usdiyAHxm+SKYI608=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puJ6s5Ya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puJ6s5Ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2923C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786354233;
	bh=MyqdUqoLXQtk03mOXchNWkZ/FgvABO4QWJBARqOzToY=;
	h=To:Subject:From:Date:From;
	b=puJ6s5YaIHed9J/W7S8dBueBpYY/89q6wypFJ/iXgVJAOjngewtn1JJDj8eJboSJe
	 mE11aR6Nrzkge0sz1ILzmxHtG4P7841Gr2obuUpuBb27lFvMvMd3sliIK62v5nJfoh
	 07goYV7XkJmib+85DmUq1eWoOA1AIXdzJCpD5fbdZGO696a5LpcZfGUiWNsJKpQzrZ
	 DSOYCJLYmDuUXEEzhPjsvh7/GhfGafEL5CpMvhuZU3uExHkSSU11b79fOquAvuIwug
	 BCQEwuwyxKh5692k9KtQdOJYOSMSitWD+ORqOd+FZlXiKYHbUGtR202QJ0+pZ6gJyR
	 1Nlmx3H8uolMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFC1C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635423370.5474.14566421419510193103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364052227a7b918cafba242e7e884ccd550c51010064588c3d0f9e205e2aca86
Date: Mon, 10 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786354233
