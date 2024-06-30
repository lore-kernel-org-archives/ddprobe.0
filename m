Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D92D13CFB8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719766463; cv=none; b=vFU3uIPUwbQFsAI1dBEqLPEuNcRX3OtjQaIT8jCqHbzG0L/3qXw9YUD+5auM5UPblASKCXHw7Nj/+VEjcuaV8PSDf4lg9mmblro0TDUQx1RyOfETH3yZsn0b1ZHyZnPseseY3HkyW9PlWWYtgaRCIXCcVuPc8oQNgSu2BUE81WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719766463; c=relaxed/simple;
	bh=cpIlF/wc0he1xySMrtboQMVR7dVU/DL3GN1rDZFytS8=;
	h=To:Subject:From:Message-Id:Date; b=MaBAbwqZ36tev+aFsQFS0bqcSZjkhBom8f+b17PMg2CTIPhotNCLMV5Lqj2gOqf60mtsTXr1g8RlumCkY5PjnOPDlwRmyPbqFauYQ4sjett8pd6/6GSd7ySZVzLC3HK/l8/7V2YCNWq6m73o0VYShhuYXU21etfOyDfKySIr7lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvvU75dd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvvU75dd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EFCC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719766462;
	bh=cpIlF/wc0he1xySMrtboQMVR7dVU/DL3GN1rDZFytS8=;
	h=To:Subject:From:Date:From;
	b=MvvU75ddnflvb4zVwpKpRSfPi/KY27LKsYSSiQH6kTRKSZNs6qlefbJTJOJ//MIxh
	 FHWv0hjQhpLSTVWar23Juz4UvpsXCJFHskhmyGGeLRGNpwHctVBKYMh+1WsB7sQTTC
	 d4SGfnFDzahv4TCATabWnyxpek5If9hLCC4MNDYG8WI6onP6lX+TTyOBvimE77Dh58
	 eqT/LA2kIwaYWm+0yHVIr47QkF6AtsdKQZnUxlODOda2369wkfXokWKNJ7th0gmkD3
	 AilbuSy493Rpv1Eam9kYHn4DEVZU5MTDvXPxCuiMIEXUQw6rvp2ny8GtwULhrnGH3Q
	 0EFO+guX0YGdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64B7C3064D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976646280.25453.7186665526196836490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3da30c41082ec29c7a68f8a2f35eb284cded7996585a42d87fff03315c1d177
Date: Sun, 30 Jun 2024 16:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719766462
