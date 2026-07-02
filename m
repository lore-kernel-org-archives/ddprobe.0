Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4109F47ECE6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782985714; cv=none; b=gEQ5DGZhGz3HdWyuQof3/6UREf4UA/EClYjfj+cPUE5VpWZmtGKbp0oZpSSimdGRJ6RwDzaRt8A4rSxZraUFc2T82p4g9YSycpSojoKmbt8JMJTt3RUVLgaBAjRJpaU6BcBowLFBy0aXWWAaKJEBRN8bAE0BOAhwM1LVJ6p9xOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782985714; c=relaxed/simple;
	bh=u1Tt0aqCIUevFnVXTBvyGHwqKgiki+srnlPixxyb72s=;
	h=To:Subject:From:Message-Id:Date; b=lM8rSbnsHI7wv1KUwl9F1zKpmVrpzkWcxcoG50WXhNy+2lC7eX/GXD/PJBakaVAgxj85sXxNjD5Y4FxQloaNgouspIxhaIJ12qvB8aioNeqasN3p60K71TFHTd2zm0oQXWwHfW4oNNfoH0sri1V6C/xq9bVIxizRt1Uk36R/2gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIs4uTzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIs4uTzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA89CC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782985713;
	bh=u1Tt0aqCIUevFnVXTBvyGHwqKgiki+srnlPixxyb72s=;
	h=To:Subject:From:Date:From;
	b=FIs4uTzuzijiWRpnByVlWMLCuQhgkQqnb1wU0CsBxF7pgM00zY2TzvPr2QV0Rs4T2
	 bvxLNRxLKXw50lAbqv/Y2mE0tKLY+8GefIxceC/hTafUjmGWLUoXrDD6UjGQNKoZsc
	 hqF94qIdNWHJhYck5E9CnRDQ1CskOnfrcRsX2/ojFpYe1OseoPxuGjB1zwu7ihm03C
	 9lmdgm3XvACWbBxhoBkJrytu6dgeEY2mSpKS0B6DKqv8kD6NsjTeBaiuNs1P4XVhya
	 rHHHmRnz/2r2u46UbSjLPRAMme2/QfhNQjqj97uynOKaIjBSNZF727CeCRYPZrVEhu
	 8qxr+XdbN4XUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7A7C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298571368.14469.10130616018474603705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16efc043be2344667005b6aee8a927222ae2ebbb1165cf4aa960afc8fafa2658
Date: Thu, 02 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782985713
