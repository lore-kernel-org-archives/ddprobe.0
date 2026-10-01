Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77C152ED38
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790878234; cv=none; b=TAA3QaNpGaqBSOPNETdPmGAMcPAfq912HBca2LRfEYfNtKlPD2oygAuV/nfeUcOycYRP7xfUUfaCbPn3JmyN8YFw0QQmD0SMnIRQUr+xUApjVVlzRAK3VuVPzIxBtYG47cnEeioOtjhFXCv0KRVD7vtQ0O6Q7LmcVuVuUsUgvNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790878234; c=relaxed/simple;
	bh=eUJ8cPVpCthUQ+A6T7JiEuKD8R8SdlqfSNL95f/oD6Y=;
	h=To:Subject:From:Message-Id:Date; b=pmu6rMqupD8N+E43IN33CbcIWnh4KskRfzN8BmGdz5N57zaeOsg1KH5StQkHBE1PJrY4hnakZJFlEw2/XVA3ERf9iU8GAIDPvP1awr6H9lnDw07eRnWQbuH2Z+NoUgZvC5U2X8N/2iLxbQvnK9Be2qJNQESISVCcxnV1ibgqUOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpBQSpU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpBQSpU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE15DC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790878233;
	bh=eUJ8cPVpCthUQ+A6T7JiEuKD8R8SdlqfSNL95f/oD6Y=;
	h=To:Subject:From:Date:From;
	b=XpBQSpU0iu2PpMGTD5CNgD+nBCcF2agVGr66JoJ2QLX8th4tcUaAFfu3bQxHiat6j
	 keiayeqk3u9TiqaomtO79coRL+RBbGYNkLnfT2ayTYnS6qm3bAaZSo8nbA36U1+jIU
	 5Ic9LzCvVqVprFSBInDNQhF4oTh3wtU4XkLdIxT5lNpN9h9PUhAEsU9GFeybWVuR9V
	 DLCB2gLR27M67yxJ3W3Aqrz6xrNXtT6oUIUi0WVKih9jDkfRw6ICzat3GbB0YuCAcG
	 sC16U0HSScwPrVkm9n+mRZsOq/zm76UNeEizLpDu/stVhBalDqpdFyfkJkrh3b0T/M
	 xveLCneWaA8Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F97CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087823371.18659.14788959856950916206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc19d75a62119540ef9e0642e8b546ac49f622eac07f84596c43b734e1d38329
Date: Thu, 01 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790878233
