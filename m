Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485C7200CB
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725688554; cv=none; b=YwxTegSI29arzAf0SYwsXKCneb19zJTqrDIcgt2tEp6UQMKAAMTIpu1b5/O2GH+br3YdnbOeJvSlSfUu28GQzljGpTaTdA2wzXbyjiBL9vqY6WEOHp7mtYXFP7ErTTNsxde+Zt4Z5kyh9+oiEO31dJwv+BIGBhUkeyqrA7Rs7wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725688554; c=relaxed/simple;
	bh=NiRyAj6b8ibKP0t8LZsYn0OGllCw8JaDSw9KdHSKrHI=;
	h=To:Subject:From:Message-Id:Date; b=LqBHIjaSz24tEzFsx/lxSTzk1MYCXFuykrBNLBSL2XhenVsn8BFctXzUbihPj9JUF7gX5qslNE8bX0ooWWlUvZaBnr+kNS/pmU3cUuYFF91/9zq9HYkDHtzXTERs/7fycNW9msjUVjYujh6AYAtYpRR88IDEuVkE59oKG37KykE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY4sXl5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY4sXl5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB96C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725688553;
	bh=NiRyAj6b8ibKP0t8LZsYn0OGllCw8JaDSw9KdHSKrHI=;
	h=To:Subject:From:Date:From;
	b=BY4sXl5c3OzuBMSMtrP6hqVmw74R/Lo5nrRqZc66BURBAhu9Ev5L4H05QMOURwBJ3
	 GFbF4Q1hS9t1P3mXCK+OJd8lFFpJo/N7eNNpPlFflnQ1EU7O9ueMfgiCPcO3R5x26A
	 jR5c+7UfeNWxXV0weN0JgXENc1QdDH1/7HwXpRylskNHfrHJKQXC7omDwsKDbWCVH5
	 SKsqh8PA73TSYKu1LY2nSJpt5fII+MXoWpNOJfysRgF8n4rhHxhRq3QADWi8SEKjls
	 N4Gklq/sDeUNDBKj5EoQtgLDcNhnjpaJPTCFjJH7Q5rLV8Gpmn3bLgSYurdUaLqj0e
	 M4IwXDzhq8Bow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B30CD4846
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172568855363.14175.2981185680000330483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2106b9d1949ebba227e406a5b60c8defee457ccb6a365768f9c6f2980cf5f9
Date: Sat, 07 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725688553
