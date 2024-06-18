Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173717FF
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718687363; cv=none; b=dtFfETgusJTaoy+pM6Olv7gfH5CUQJGQ5qgI6RCEO6aHOi8ueAtxSzxbWz67S5iftELRqavKoXQbBQs9YIzaOiP0N0uh5Vox2wKVJQG/SxY7k6vQqZxWzw2AFTKj+DcYwGX/PiJFhAh/MMgIwAP7u3YP/jG/MWQ6ZBwQwhFwTSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718687363; c=relaxed/simple;
	bh=3dEJmbXKz1cHnrowX49CbP6KwNbYAkD2n+pSEj9Q1TE=;
	h=To:Subject:From:Message-Id:Date; b=rZzEApOoRmdB4B7vuKLxbWIGVe5bGDOtZgnHkQexx3ES5DxMYo211IXKK2yGreyAFDO+ZHtdXGT0QNXgcMQdgCXdN9xdQyLVGcW9TmnSX2mjBHUrp7N7roVJ5rN4COAabIy5Kv1AIQHEOAtOyCIaGZ7u6UUZXINIeAuyFJogbG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izCtpDVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izCtpDVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0091C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718687362;
	bh=3dEJmbXKz1cHnrowX49CbP6KwNbYAkD2n+pSEj9Q1TE=;
	h=To:Subject:From:Date:From;
	b=izCtpDVC/m/qV1b1YDNy7rJCqxSj58Dv2WIsio9N/RaQ8pFtHA4Uj3MFuWaTW8IDj
	 EzTyjyVy45CCxY7Ikb6fe0KLnWpR/neMv/J/mTxpTltwBN0/BW+ONyNfjPLzstw75S
	 YzQBQXFe3QIV9GxRcLpM+E/64KxCFSwkRyJsSqw6RYqIdMzQx/b8jBBULP/nQp7mDY
	 Oq54ZPpwtcDQJGuxuhUcFb0BN2hcYkO+TRB0Ezo7zczupOgaQ1k4Ordr+3ZtFRMtr1
	 i7dJAA4rumZe10iMNahQ9JwmydBZpdVmxNnB/Mppid5tSTzsl6775Kpzj5hETF89Ai
	 CeAJKsWMFPk1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5466C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868736277.24088.3578529118588089419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5830b54acb1322121a2b650eeb59b92c3d69fc13c2fea4bc468f701624f1177
Date: Tue, 18 Jun 2024 05:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718687362
