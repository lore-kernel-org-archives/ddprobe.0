Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3931B1D5ADB
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733388354; cv=none; b=DK/BvXJ/7fgWMAryWw+SjauX3TMjyBCYvCJa8cowEtH7qvHtIvLDZ4dIlz7DtLSq4U5REsoP4b4LXJEj0EYS8UtDLcV0h4COajUHtNN/YTwe01EuwYc5BesNrkSRpaTiZTyBEAqRyCWp+1g9tv72zmz53dJiaKqH51iJxtCLjp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733388354; c=relaxed/simple;
	bh=65U/QwSo2+mbcqTU10hcEB/XekMGGYCg7DLq88G4VdU=;
	h=To:Subject:From:Message-Id:Date; b=g1aHgwn+nH/ADEhwuvuf/KeGB3XgZrpSi1GMkYrzbHdskYcHn/XQRUSl9z5Mon5p0UGpIF2AaKxYqnIfPtxzE1EM2JYFQS6ACO5pSLrODZOGqvmnO8X7MZMPZk8f1Fl6GRkXRunUXpvnYsG44mJp5VyjMVTDsJQA2WwdEyZkcQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4mkNCCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4mkNCCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2548C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733388353;
	bh=65U/QwSo2+mbcqTU10hcEB/XekMGGYCg7DLq88G4VdU=;
	h=To:Subject:From:Date:From;
	b=e4mkNCCqkYlRvBzG1oMTNI9bNQu2dsCQ9y+fbgLA5humO67gqUv/3+eYgKUelS3wl
	 elN1ze92fjl2p2r4mA9now+EdCzo+TH9Tckfjj5wzKjZfgpaKJOFA/oLXOqEeHdhUn
	 LVup20hkGImnYY3QSqz5C3AMPZXo6KnJmYGIfUeWR436G8ZLRVc0sGB4G2nqnGKU8n
	 Tk5w7KNsArQ2FE2i5gI/pc6N2hjTjltWKd2ZQR0A5nsH6coK5t+Uz5vlJg1TJkAb8x
	 x5wk60ePHbmL/7xe1bBL61KgDhCf1Z5hIdwGalFhycPTgiAQCfSa09S19Df3P0atoi
	 T0kAFJ+PBhxeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7E1E77171
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173338835362.28374.10660052310233595943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6a86921ed516c396ac4f48a7625167a2c4800055121c7e10811b36b4be21ba
Date: Thu, 05 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733388353
