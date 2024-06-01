Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B42E1CFBE
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717232663; cv=none; b=gA0zl6F6jcVToPJvJLeCv0BcfI/2KeeRZizE1tvq8/0oV7CvhWvzQIbshOEgB8Aec9mwfcvv0QvjNeacQpEDmOEWTyZTYi95BACJ/T8NNKNqmHGQcN/SXVKVnfgQdujCBpSeSREoYmSa9Ilp031HsTA69rywg5NOKW34HDg1R1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717232663; c=relaxed/simple;
	bh=3Z7mGfuOHfjWn0MwXhKO6Tra8oH3p0Hp1YMNyX9RqOc=;
	h=To:Subject:From:Message-Id:Date; b=cjjzG7ZCf9IYjTFoQtQf9iGYwsUa5ZQlWvC0DRiixZuUeLLPH24BP93FKfAkwOBz+chRXFDn6EjVX2NI3y9JkqWcZZ1qj1VMxA4ywX6FxtfvUeW431dbRqJx17S0gnnJb5ckMEwYMksTMktrsuqhysogmytfYsYLZVfjM+/c+zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Su6R/7kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Su6R/7kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 061B7C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717232663;
	bh=3Z7mGfuOHfjWn0MwXhKO6Tra8oH3p0Hp1YMNyX9RqOc=;
	h=To:Subject:From:Date:From;
	b=Su6R/7knQNlw9C5rLNzzs15u77SNxA5yZDNW5ezsE1TJ6W9uZObcwLY/L53zbzA/q
	 jFGocm5O7JS+Gpg+1bddNIuvsgh9X3O6JeJ9MNAP+m6luWvJ3Is5koeyo6OOlAwPfD
	 AyB2yK/+/c0CFEeCphMl526p/24qfMGzeQyQ4oOq4rF+XatZsgo15Pd5XwKZynZEuP
	 VDhcPo1cNuAOM04zX4oaaB4SH6d6myB57NoID3Du/F5+ln5rfSan7K+gmOVGIYVvMR
	 MFhowhPXlsCVFkUmPYhFmv1X6Idnx3Irf1qICDinXX6bY60HSNaqpWeXlrYA3OwP4w
	 LnSYxQ52sP8nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0A98C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723266289.21487.12516561210603309226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23185caa9d04bacdf3b1e137ec1e9150b09bd654fcd340198d0b705b1c2d9357
Date: Sat, 01 Jun 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717232662
