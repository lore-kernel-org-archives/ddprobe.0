Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7E121FF4E
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752875994; cv=none; b=itKALYIi834lfZp+zsKprYVgL/8+JxZXzioje9sfbzV998IFDwaNCeYymnZYDV4FrK40QQTJlEe4NXkC7Hv1LRMLzNgaLHE9EkgxobkVCtxyy90ntyBQjZIx3MO/cNWb5P4R2wwtoyL4jFGINSItgyqagmQCcAF7tIHeZqwAvBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752875994; c=relaxed/simple;
	bh=o/AM97+x46s9NHi99QomYlyU+fCsFfFQIWQQ0iTXT3g=;
	h=To:Subject:From:Message-Id:Date; b=WkUmijaZBZgb+BdThh06bgVx1MT5a+soLSr3/Ef6rp2oIRXXjr05NRzUOyt6ia4cD0YyleS4KjNtQPzOTmW8RcccqEsjx8eYkQrO7ZlvkZYlhaR+xiw751HRcXcUcjVIgKaIaoL9sJJzZRxsqsrd8m43mYclcl3On7rn7vVUToQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWF9LRaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWF9LRaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0644C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752875993;
	bh=o/AM97+x46s9NHi99QomYlyU+fCsFfFQIWQQ0iTXT3g=;
	h=To:Subject:From:Date:From;
	b=OWF9LRaPxA09ymSisGeIXjGiNObt0Yw7NzUBreTXyORwiX4Q+sHW17eTsq69ELXqH
	 HHngm5J8pMiSCW5Y7iOLCWQB/speus3pP7QudzCFYpjc44OiUR86skFdLb6TAotMQc
	 l/oMGeJ/4ACS/U5wZVrO+NRXnFJF4Lc8Ymrh7rOGvTNQ6/NuadZ8CwT+h6bs1C9Cp3
	 GN3WAGrMo55PlqSPrD0hVoLujqXm1iWAuqpd8uqwxuyGJcw3ZoNZfA/KZK0MyXqecW
	 Yl8Xp51tRdFjNK9gJk7cONYd2/0vNm8I0FTjQTDWpT2tX9MGItCgUXsFZlKsKAPnFn
	 pT0xRznezO2aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA2C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287599357.13021.8951986370453640518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3a47eea0e3206f6741f61a90c9d5a9fa299d36a93472e1a7eceeee9f68ba0e
Date: Fri, 18 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752875993
