Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C6E2857C9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753943994; cv=none; b=Jb3/9tFfGFB0w8DG0woSJ2uzbZ4+PtGI604AIjk2a915jqpjnFoY0R8wlOLurtakDCzwFAQKz/uKjWlyMhZh+lTVsa4X+8WM/gwSEMyWSsgOGEzjoCqVv+8fcpzRLk1SRVF70KEGK4xcm/C4BHVVw6+SAnbPG0FlG8fZlpo1YB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753943994; c=relaxed/simple;
	bh=rZWZUm10mWE5CVu5zOfeQNh3PXrzbRRDGGl3zKCHc18=;
	h=To:Subject:From:Message-Id:Date; b=FL8OCVkxXOpjjs7nIePHSdJ49bXP7w2Wpwp35pAhLao9u74w/x72TJWX79vXEEVg1gY7qZ7dK/bulCi6fYzkuz8cKJBNg6ohfzyV3MJAo+W7OOdL0s407SprgRp93fHewP//K/tIl0Yy2yvUREckoZY11zn5o+DIqKmZKuDicsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHLoZCmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHLoZCmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D906C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753943993;
	bh=rZWZUm10mWE5CVu5zOfeQNh3PXrzbRRDGGl3zKCHc18=;
	h=To:Subject:From:Date:From;
	b=nHLoZCmdf04AE8/keEaC9oJ3C7qOuMPvNWDNNDMnZvlnRKpxkC+z61Zg+rbvBVWtO
	 bylcs1GedBLjNLJr7z6mzdCqNJfBB9WQJ4n+cplm7956fh6fDNEkaSSqvNODAHbThh
	 AhsapHMrLBlGMlsijZ4Q4UrBg2EslXUegmEOoCg1epQ2bnTQDl1klefMvuLwWtH4Tt
	 pEtizp0q1XCVC2iOgqm5n9cp5DaNB+C4xhVuh+WyW6jbTaGNIwfZjz9zB9lqkdLsZp
	 Zrrh4jlb2iV4U0ljlKOZ4sewm5ABP/TTDebmYdGHThcLlxfAj80if+28Zztqv7Pvjp
	 FKSkWcPpQGdKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E117C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394399357.30823.13037099191455978656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1b5a22ec7198449edff84e2ec5efe0fc71650964ddf6ad01d30e0eee50c371
Date: Thu, 31 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753943993
