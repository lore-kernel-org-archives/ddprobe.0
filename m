Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA993CA4A4
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774289094; cv=none; b=d4+2myqrbu1JqDclrwbYeYua9nBEj9oeYQcgEDKe97aMNgJs3kxoqb/Y4pxJt96E08AlxUj6yTJM4pwpODGNdSP1OFkbUcHdP9t+LfmEKXSMgaGHMhdb+XCTiA5RXZy6Stbs5a2/coxNZIQCcnzqhuvOYm8I9xnRB9wR6tIZPoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774289094; c=relaxed/simple;
	bh=yMxfu5AqsWeTA7FQoV9tHxSQNomJ68puSqkqaGJJUGI=;
	h=To:Subject:From:Message-Id:Date; b=LC6EywNnoM/EzaPXMjZQ6xCsJ0OZE7tbwyBZubtrVQiYNKkLvaqZQL4pf7/+e4slCNB/fOSeVd7uQTf5wTHIWgovYyQ7Fm2Jtk4eVg2SXzSmvjv+eP7MB2SR3eoLRHz2NsDqW0s15Jbi5NoB/xwHEY0TLuJYJTGyt9uUt6j7e8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRzA8OJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRzA8OJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5006C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774289093;
	bh=yMxfu5AqsWeTA7FQoV9tHxSQNomJ68puSqkqaGJJUGI=;
	h=To:Subject:From:Date:From;
	b=VRzA8OJCVYULAzLy8NudR+2xVt6a2E+rwKWX7SjiZOxJPOSoR5K3ay8nUpFeojWIn
	 /ky6Ig94QhAoyJoVNilfoI0IwRl/K6QN9vOvqlzmAVsUn26XtSYAkgainwjMjx2oLT
	 DFbbVFlLv71pWmLhW5kfBGfzZbBMxXSmUhebgWYQSjrtdUScw36+55j2aZ77ZeYnKd
	 L0LGS4h+LEVQXaCxCDhTMpFDGtDV9nWoi3HM3kDXV1mKM3caVHeQ9znWiBj6aIOIkX
	 7pw2JfQEU7wVX1k7S4F9N3h1YlzwuWlSiPH3RhM5SZcFwPM/kwR/dCXNc3wRo9PE2u
	 ks4MIKU+CqOUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FB7F483DD
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428909359.30051.3101751280221412786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd95c6c16c42a75e603d736cf1b926ff7868e31930082fa3c4e6b7c6d0388e9
Date: Mon, 23 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774289093
