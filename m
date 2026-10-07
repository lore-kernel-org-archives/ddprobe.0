Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B4020D4FC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791414634; cv=none; b=qhYxuVext/TZaKiFefQdVoceO4CRYi6xag7cDC/sgQ+cU0XanzWQgd2FKit4a4QzPKLY3JH0bi9RJcQi7GmGScjLTJ2tXjpItWjg/fIeYjh9lnMJLIqELSc8JUHuE7YNmof3WJRPUQJn2q+FGnN8xFA+IlhLGkQvE8lypRTZ4Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791414634; c=relaxed/simple;
	bh=C7GV6VydaH60jGgOHJzB1R2Yz7fxvk7ijP9IV4Zs6+E=;
	h=To:Subject:From:Message-Id:Date; b=YOAXSNxXfjvrbA8DMNr9ah9twSmoJ0X4KkLcmQ2uMfiga0AA/SNFURoSZq/9bgzgJa+GZjm0EpbqSqhs8BX4tMugZnG+fINP2E64rCoMQoVQx+sdEJP55K5bpQBZgGVM/kmqUqq8tdhYXMf0N0lNo65vzMq6CXZqkdqnly1l7gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9Q4KWaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9Q4KWaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA99EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791414633;
	bh=C7GV6VydaH60jGgOHJzB1R2Yz7fxvk7ijP9IV4Zs6+E=;
	h=To:Subject:From:Date:From;
	b=Q9Q4KWaqWUvjcMBZgBTf9TQjgkEQHCSIYXGiJpPT79DFMk9aqFWR5osv76FWeVm39
	 rmCXCiVn4FvqyT1VwMgC/EYCCiXPHuO8lPGt5bF98mtw2ev9e49FdixSoQvIkhmnMN
	 d2OVXfSysi1tist4echI31lQjRl+C+kQiTAqk4O2wtDl+AJhRJ26isuen8echYhoZP
	 8P2v99tYTsSGy52q71a3PfZiJ63QCtna4/Ce+5cPmNheLefKMC+hgSiGcLpOu8um8F
	 HsI0IYSltEi/4CxaOIQUr9uTSPYPbmWclEdI1EAO7rOIt1djqeAGt07jx08SFeiVHE
	 x5Q8wcQEbd2vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1250CA6009
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141463369.21764.9430220872564369367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8944b5cb6ffcc8422f53154ced9eb426472ff8e3c2371f438bf9a1848a75fca0
Date: Wed, 07 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791414633
