Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF5B18DF62
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731000353; cv=none; b=KPXjKitTqUclucnLu6SZXa52BXpzkJ5UGUrvVqGYRyXvPADnFI3nNZOofbpNOOlHWi+Mt5xHzNCUrk+rUxOa/Kl9k+oTMEOO18rOstTBE8orAjwq8QW13IOI9I4rnFvSZ99A0atjpAYm5nMTWFsER0xCZSWjcUE5kOBGJukZBNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731000353; c=relaxed/simple;
	bh=cmS/0dpaRrDQgY3xn85cQ06P+QLo4qHqmU/YgW8G3ZM=;
	h=To:Subject:From:Message-Id:Date; b=fd4Ey5K1fAEShpAhWS7j/L55BmCjyBVMWgVnMe5Oe4jwksvkFJrSTkHQh980T2b8mT5HzBJ2sqYdYn/oYBcmnYzi+GU12kUmyG7zCaBUygCdJfZ8uNb7+Tt3CzMi9f3mJMUlnCL/B7ZKzkz1IlB3v47lZ9qYT5flItPhs2GAGQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBjSiPiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBjSiPiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7945C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731000353;
	bh=cmS/0dpaRrDQgY3xn85cQ06P+QLo4qHqmU/YgW8G3ZM=;
	h=To:Subject:From:Date:From;
	b=TBjSiPiNVf/JjFsuXpQ5Mk2UT9qsQ83znMtAYsHmWbfnj/ApGneCSr7duR3/EOtLY
	 twV4VflxQzFThYX1Zk8YUY9SS/ukQ8d1m0z8IjrBjVvTgjbw36EI3D9tAvGyLbqZrD
	 nZYLVgAexpkFm36YkRniQfsL51c7tpiAolKK2mM3zycAJR9TXuPHRTjt/7iU/4SYgw
	 N8bTUVy66yV3IdXzcy8Rwy72MBvnWoW7gLLFjIYXe4wSrDoOTt4iVfj/CcW3fz56Aq
	 KxMVEWwrQp3wBj6gjjSMtDgc4kYvQAzPoDdCOvFLNzXG0dRbwFzSRfoiKC1TLOSURi
	 QKUXFxBy+sL/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCBD5D672
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173100035360.12326.8129061709025492894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20bed8079067037d152d3731b2616464bd91d141c695288a921cd232d25a53a
Date: Thu, 07 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731000353
