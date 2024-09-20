Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC2D13AA46
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726833354; cv=none; b=sZHAyKpp6MrBJwEuT/w+YqTjatSsJ6pEEYCmlS/dOQyIIT8P2G5IiDAHI1WTV3iThYrWSry/NrEfQBB0Mwzn0wH/2zF75S+wTTXRKF7GfwZy72ANZjx1i5puAeikGW25r+v0cgeqQ1I5h7RhKAvLq9+9lzdoaSFcKn1SD5TB8E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726833354; c=relaxed/simple;
	bh=smyP/sr8oC0yBrzE7Ol/Lu+xz/DqEL3kZE1zP0VY4UU=;
	h=To:Subject:From:Message-Id:Date; b=n//0i7dxsDQTmcNLuAG66KVqOi8rms3CRu7LYEDhpF8bYKnFhAyKDfiOlOo1NTwFSoQoIZlzKMKBbi4Paz2x8HRezLlFa9r9j38uh4w59VMxCRElptEHiERkV4tJcZkHFsL4iwzax2PNKvAvUs0jFDOVCCkaqIDueCkjDY8bKsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smIl+APd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smIl+APd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5565C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726833353;
	bh=smyP/sr8oC0yBrzE7Ol/Lu+xz/DqEL3kZE1zP0VY4UU=;
	h=To:Subject:From:Date:From;
	b=smIl+APdKV3haIRS/DZ+q6S8ZKDBH08AfQtepX7bsH7a/IL0HiM5NS1kqOqO4bycs
	 5wm+u62cNMj/xShYR81V91Uxygu1uCoRZOS348EDgBD8SHTzeYbebOjnAlAMWVG6LT
	 NiyeWkV/rW64haGYRhOm9f/5XOLqR0F6k9cgK1NrgQM5hVL0Pab6ZsbSRVzca0VDph
	 krUCNMYqNuxrwh4UbBNi8fhX+FuMQf6wFUMCHVB1xsC3ZSsNF/CNjlXal0ICpcWhOh
	 pT9RTe6VH/J7b4MaE8mMIa8q+A1hvGWRKD/iYhpiUvGVIJ0b/X7qzpbHhkK8hpoSGn
	 mODHtnOg2VSGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B5AC7882D
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683335360.15563.11088727928319989096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de01289471cdff5d4ea77b3df3d53982a2d6c9c595f4f05c7477946655c4ccc
Date: Fri, 20 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726833353
