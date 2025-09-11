Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BA92DEA9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757593195; cv=none; b=ueMDk8Ii+VZu203wl/0ozyI6zfzgcBpZlu0aroQyELnBJF5GFz8/CFvIGItZ20/yokByXpyY7sPWrc+wuEj2BHBB3CvBahbnBCQ0QeY/hOcrBdZKaZoUxUuZsaQ5O+s7YU0WZ3bWs69mneqfv3yCVJvQguO8S6Y20SPLVT0DFJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757593195; c=relaxed/simple;
	bh=Gk4cTn6rGcwSmsVlNqkf5FE3zWp2PLy6dGmYcQ+qnzk=;
	h=To:Subject:From:Message-Id:Date; b=nXLmHiyWk6UfhF4Ip8EKmYo/J8cpLYL1KhY07LFp7YZs1zs2ygB1Rt81a1WyZIPcuBokaACOPFwYz8Pn+OoCcnQkJNCpomE7Z3AdDOzfRRhegxIpQvKlXggczQHMS3lDBzy39YvpNNe/iP6DlYoBxxya3tu604A7fygXJu6NBtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jR+x5I5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jR+x5I5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E60DC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757593193;
	bh=Gk4cTn6rGcwSmsVlNqkf5FE3zWp2PLy6dGmYcQ+qnzk=;
	h=To:Subject:From:Date:From;
	b=jR+x5I5LF9KCJkF9TOOaVsg5PI8Xjp73vm+8aEBkvxVQw4KG71akU2h+xmz3O0sH7
	 YEYOhKal2X02kn0eQ8zBPa2gJiZ/aMRGyeeMANRqq8GsK0Ey8Cr/lJMAqcrIGGGmzy
	 1UjURO4fgWBwoxTb02Lu0ZhYEKEWZnH5L/47iDE7h8Gr071s8LazQy1W7rCdFeZwOj
	 TpmRtQ6ZQFucSlV60g1kHFmWT9KEkba0vrLtVD88hFjegcMS3iLrt3QCdG3sKqbOCn
	 y685rEGUvTEJUclbimdcM7OAs7VF4QWF/de4URpdKBpVd0pza6oWhI8a8XNi8gVzBH
	 lqUXrFTQ07A3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB2FCAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759319357.12240.7581660787843612996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6de966fe296516c3ded8b99a4fcf67c6e87eaf1ce0bdef40387f9af2762ddc
Date: Thu, 11 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757593193
