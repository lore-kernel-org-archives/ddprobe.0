Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37ECF34BA42
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759124994; cv=none; b=RATgKOGzrOdB5WPlXi/uZbjVmNlZnmp7UWYVYIHnDZKhWicUuORwaxh1XN6hB/ir9SBKKRLD/UigfTMxXUXrwwT5qIVOfMmJ2ZoJ0q75epEc0LOTUtPv+8KGKI2JuTNrM/jo1z5HpHgJLYYd9dDQTYRk2kuZxH3IzOQs/Bct9n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759124994; c=relaxed/simple;
	bh=TZt1vez/J/fq6ygZjAbSb47negK4qZxguzUhmztalYI=;
	h=To:Subject:From:Message-Id:Date; b=X0t46b6nWktZQluWXjT3QV4CabQPAHnR0gNDwzlzNXj7UOeVqAr0k/58Um0S2X15vh7D07xjv0USepQaOMZBLVu+OhBmNkatj1dMZb5Nw+0rwKmn1Q1QAw49WoFyk76cp3U+7VnuifmaxcmHwRUPfBPf7C6t3LeUXpB/6Mz8GwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGqunHbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGqunHbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AC2C116C6
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759124993;
	bh=TZt1vez/J/fq6ygZjAbSb47negK4qZxguzUhmztalYI=;
	h=To:Subject:From:Date:From;
	b=EGqunHbtEtaJr1MWg8bLmcJxe1J836K0TfcJCqqRP14I0UP7a3FAUXWH9egTM/6w0
	 9Zi1LUkD8K75FZXMiHSksn0MlP22brubdNzJQEVzZk9hZgZdw/cnz4oHkUxesw9CfX
	 /WmBKCMWBGEm9BSqmLgxqdIYQNSKQ/9p9fzaOTOSloog59+B0ZfHztEol820D+Z3om
	 MCLNYjqQjAO7tQKPiy49YD+8IdNn9Xh+/o2kVzsNKAXWPMC9s4RMV4D6i6agkjdQtp
	 +iENu38jtliwlDnZCWfmCgNr2Sq9RzOcF6+RXU88SiqckSM67fjSKlQLJ6k9XRkhho
	 UfkOS7lF0+HHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D9CCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912499359.15632.10602366136683273821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b7bb4eb15cf3bca3616eda744bb9d977cdc75d5176cd776508ed974891cec1
Date: Mon, 29 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759124993
