Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1968720D4FC
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729886754; cv=none; b=cGnkx5oP/e3dMiCWekzNhe/0ZTkSy6GbS3stD0num03NCqtiEziQXSg6L285uuGqUGMAjRAT6OWgHCa0KQWYzBOLgJb1Xkemzvmo9PF9aUeXCe8CEtPzaHSeur4ZjAbmM6kYJtueqWg9owzhRYCcbbVz5HsyFL9AzlxBqI1uVas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729886754; c=relaxed/simple;
	bh=6Apwyne3lrBYIv8j75brSnjsfHFF0kdhib5pWWbKepA=;
	h=To:Subject:From:Message-Id:Date; b=nxLsDLjTVldtTWkNIDQ0oCdzEYxi/D0Pxh3Y7O72stFWvbdxUPzTaS2yyD2uIYeajKOKo9r0icYobGrCE9ahXSjjBQ+P8W0xmo3Y0kA6cvjsKCy4mg8KKIWM664cU7/6BExaEOpGROdhJcaGdujVmuVHOkdZZpgvpKXnXydCjmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTYAqzm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTYAqzm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD90C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729886753;
	bh=6Apwyne3lrBYIv8j75brSnjsfHFF0kdhib5pWWbKepA=;
	h=To:Subject:From:Date:From;
	b=qTYAqzm8vEz0/54R+RYuXXDVQ6NtF82MLyG7dCLaIhB5ekYbz3aZhVU2kn+vlLpfN
	 0Hgr+Ejb3GBZiIicpEfuOq8cpjgWnDmMBvm4KHXOpLbKDMz86dTgWXGZFvs1I3HyRH
	 6cqrQZwod6ifDqqNRhovcueoq2i5Hh73xJNP9wcQj4tpLGJ37P9258u7o5/Er2N1ZX
	 BvN7hfMApKNt8VA0zpQlDM4N8CV8FMz1nPTU4wA5YUQGRqlmnZbfwA+EbcXUoZFIJR
	 piAGotjQxQ68YVMSozI+eiHL9rSVkIck7MUhFq9nDblUV0gfMFDWJYVZonSVBYBiV2
	 1OMKdzoKbIW2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98634D149E8
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172988675361.4310.494463581465536636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e705a92e05e52cb22b67868f0925c5d1dd7a5e495f515a69f873882d343946
Date: Fri, 25 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729886753
