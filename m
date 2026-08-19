Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7A9346AC5
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787160634; cv=none; b=l3tsT7xYx5Cl0sGV7aD7CLbtOwDHU5NipCMil+BtuhnzM0a/07qGVcjYSsUfRMd+GZenp9IHTM4qV0EW0m3NXNbDZZVDWrNrF2hgXkMfSbGiFDeYMWP85spaAQbOanOt5S8eRPsDzDEi3HQVYUBGiZW0u0gznIVu5wD3uzf3mls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787160634; c=relaxed/simple;
	bh=/gzjZdSRew6gF3g61YhY3VclZrn32Dyx2WjXrPHWb4A=;
	h=To:Subject:From:Message-Id:Date; b=qkcw5UXQnE5vyWaypa2kTtN5Ycv1YY6xhs9JX69nXc9QRxA9nQwnIWXkeBnOkF0rnpmj4PUszKC8zj2GVlEMGxHZdvZxPy9pHDNCAo0qM9OTd0I28egKYaelYttgARsREcNV0mljY8eDSCj+TaY8IyamUswSltEt9XGU4gJXjMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdBc8boN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdBc8boN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9F8C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787160633;
	bh=/gzjZdSRew6gF3g61YhY3VclZrn32Dyx2WjXrPHWb4A=;
	h=To:Subject:From:Date:From;
	b=CdBc8boNWRscbRN725txTxmyfzmigJ1VxdN7HjnLMycHzBvbcPq7DrQPOjAlbKr0w
	 5X78fP5PniVQpQ7OQzqIw5dXWDT9pduFNM7iQTQ43yzn9UNVDx5Nw7pXpkgSEafrlB
	 YGpsEd2/G+azjxXZPsLYUtYqlc9zsDlXtFgLk4YF3jg0qNiuEnOvwFr/FBg5HJxWpW
	 UjNw4BKlBxH8JzTkxIFpPHyMUJWE3NJVlzuu4t0h08ehFS3NWJfdRSOB2055J7L8Qi
	 8/+B4o1zlxvRlm7OgVPxg01A5jKKqxkjLk2IrSoncfbiHQ1FicYxmHOWLYkJMR79oi
	 XPHH+VUfETcfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C99C5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716063372.26648.8468799296621217774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d64a0987450a6a90b924a594d8101ab0bd2bcc70641a21ccc236d0ee5a8a394
Date: Wed, 19 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787160633
