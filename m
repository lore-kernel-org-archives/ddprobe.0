Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C454224AF2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782886714; cv=none; b=cgkBO75DO0vSyq05Q9HjalAbP0wY9dgry/jjn1HFsffdcyd6/3q0lOQqiCB5eEdj1kTGWM+zQuFAeqxi+3XQGQ0e2gTVqPWV/om8EnbzUhugio+UGG50skbNRmKZHQK9p5lhvXC01ey9/V+qx69K64QloIMWGc+XMvb1zCTKLUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782886714; c=relaxed/simple;
	bh=Fimg4fFjl3klvHwdW4O5kvJC9zkPb9q110OUTdD5tsY=;
	h=To:Subject:From:Message-Id:Date; b=eEcFETjG6ZV96LcsAz+6ef/eEhDjpext2Brs8o604QNlLmE9SC0bNxl3C5QbHmA3jR9Mk8VqNWEV8YYmVVZdGtXjWbBv8GhOfCz87+aycvyjRAWtnYSGg3PcxppAgPoTQ5hkNegB4X6Rb+U5X06+BBWH0S81YptalGhizIYpZfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jH/enpzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jH/enpzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23DEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782886713;
	bh=Fimg4fFjl3klvHwdW4O5kvJC9zkPb9q110OUTdD5tsY=;
	h=To:Subject:From:Date:From;
	b=jH/enpzkH6EurJ74H0OoQYLOGEokM24rD686UZycLsrR7/oq8NfhkQDI0VRV/k3/k
	 8Ns5e0t56QgKRyUZPyYdBYcHNxZWscDJY+AQV5ZDl47dracaoWedp3QYeITKk56mV0
	 GjnqxspffqZctijHq8HYM2oc7BrICf3/JoQrkdJANGYA1gsxcX6qSbVpkc7azlm/iQ
	 AELvZ2kGnd1wJmtWx7WLk4ADrAUmSrQgSKxGkcmzSY6c9LaGT1RRjGVzMWG9hKt4Y8
	 xgXSg/cHGC3T/dP4qg235yXi6LJO+a2PS9DZbndsaMf/I/9RGj2tmivsOLOpCNVrf7
	 CEEVJPfdvtjHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A06C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288671368.10070.3131609909505611997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db9546a87ea290382f405e3c862b0629103937110d7df0f95a52e504e7b30f3
Date: Wed, 01 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782886713
