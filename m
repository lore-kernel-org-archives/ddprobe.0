Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED138287D
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722450954; cv=none; b=KtnOFYK7iEh7+9ehsgQJlENs5SsXGFIu7J6yx9+0KY4Dzxplb8T4mkrENNqDx0yBbpqSPQLNETSXIRFHLVlU72K7/niaznrUL1NLeWY/cYmtnX+LEra8ZSR+3SvAg17lW1+/iHt7UobXa16sJTA7oj2F88iy7aFaC63uegPaIks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722450954; c=relaxed/simple;
	bh=anYgI4rLKB4i0H5bpQppNKjGhFWhhIkyIIOlrHlY2ho=;
	h=To:Subject:From:Message-Id:Date; b=uDnfwQQQ37LjQkkPN7p4pFJH9ioR/CCR/CXvv1HnvBNdYjlh+QMleXw8M+MMx9nESYYIReZVGCYdHgEBaCDFqOyxO0XGsQK4Uq1rC9aftdT15/Ipd94HQnwPqTGbBMljhaITEwbvApWBnsOCeyi2Nk9ePkTzIiCreYCECSHpMHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmIKZwmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmIKZwmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4D5C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722450953;
	bh=anYgI4rLKB4i0H5bpQppNKjGhFWhhIkyIIOlrHlY2ho=;
	h=To:Subject:From:Date:From;
	b=FmIKZwmppZtXWm6pwh7lo5H8UsRyshyikw0H91OsvvgG4GHKP402QGKAyMBTSR6gG
	 BBr1lkxV8ubnZ6/+3JsexIQe09nrQCSjy+dD5C26WqnjERGQ/iQkOQXuCudXQ59jjQ
	 gvuN8tog98e80hqLEN/BhGocB55jomo4ESYHlKMk8J0z/iYkNr1iTS3f3ID6tt/R4T
	 XLQOmSohRyRzL9QQnUqMdcvXNup2XrnIng5tl68oCeTqUtEcAJJa4ehVj5BO1mCvN3
	 +AhubThxNvx1aWsTFuZxZEhWEZNvw/pt7cQQxNFx3mn9ak2EAoQuliMK9fUVhPWN8g
	 btQltrCevuo/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CF1C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172245095361.8215.14453727026436108581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6816b3f5b8af312c5e6a1bb2fd9acf9ceb699a1fb349b1bd6fbf35708cc664
Date: Wed, 31 Jul 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722450953
