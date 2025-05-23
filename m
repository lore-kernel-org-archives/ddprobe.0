Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7271DF75A
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748044194; cv=none; b=oNj75ngL0rZYKfeytdZeqmdga8dJvubzxIHYF7L9eS3QwfQh3xvxEZIqUE+Dgi+0NVAQ8eMUm68J8a6TTCB3fbbnw6xjMyGDmZYXsLklXsc7uEutZHdxl5PqTLw5fcDYPUY48hqgpB4yfXdVw5A/9dAN/HVrsmEqQFxIi4VFQkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748044194; c=relaxed/simple;
	bh=mC4KqawGlmOy1jBasikdPuTaROKCJ7V/SSV12qYPHGk=;
	h=To:Subject:From:Message-Id:Date; b=M2VgNcqCgOocSBKYXrJJYRJexhatd9AifQFeu4FiWrj1vp+P4KnwwDHdAJC81PWCdLh8wR8VBN7MTHMUBAjXn7TbLmYF11GkkxjjE7Y+IoLfkVr/u0jPO9phCbBLhiVQ8STCnYaCfZA5pMenyBz0xb4Vs3K7DdfkK91KL89FAu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoxdLhZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoxdLhZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D6BC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748044193;
	bh=mC4KqawGlmOy1jBasikdPuTaROKCJ7V/SSV12qYPHGk=;
	h=To:Subject:From:Date:From;
	b=CoxdLhZqRusQMRzE2tMNWlpCFEtdCXpNgZ7bJJ9CuQyCEEY4QrsZN06vvZnzVmZ2R
	 iGqQ+k3xrevVGjXJVi3tjjYBNS608HEDCFA0znfEZ5/ibym2M97gEUQhN3n96ckvHP
	 6ofRlNLGNxUBu+wVr144y8qpkbhUJToShTlI0WHUdrGO4RcLpgYxCNBI02k7OIJ6bb
	 3mSaMIGvQ0LxgWjznkGrZqasD3YpSOb5viW7XduVYaTTSxzT92Dzp9P8849RS/BROz
	 Us5rRoLQ6xUJk1eYXRlHvn1Kp5nAujDDMqXmPpvsChMyBWlVGUmaYWac6aSkl2rXa/
	 Mf4d8HVOsE5lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177EC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804419357.12702.3920075570359439122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ae1b25421fc96e3e64e25e80c94917fcbaa911a356fe9af87847f8804b8a08
Date: Fri, 23 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748044193
