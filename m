Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFFF2236E1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755680394; cv=none; b=EyzXlNxVX105DwRk2ZO/h6muu4ilybux25E6OyQEXXewGd6zszX3EW39N5LBZ8uzYrP64hWfp3lUjxmu2Hk7CqwV/Ogkf7+jU5MWaH5Pn3CNSGLSgRlZd4xz/78ivkPqbaphjyJvGMHNi9MsdOvp86E4/xt1GZnHs+IqJgvjo8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755680394; c=relaxed/simple;
	bh=2hwEaEJpAotLbbqhscnt82UNQe4ZxVN6ubK+raZu1uI=;
	h=To:Subject:From:Message-Id:Date; b=lssHvB7Jg8jebTdhP0QzroY2fX6fEHQki6Qt4xD1o/lMRD52M9RVGWjYjvWDTe3cDCgK58PqILSE4khnwQKtFaL/CmrVMVdq+0CVNFmPSQIgx6O1JnAptePoZ6kEhggmQChGDhPTVQ7h3wImiXxHz6LLkDcV2NWDxcq2VlFtZYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Euue7jLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Euue7jLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0413C116B1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755680393;
	bh=2hwEaEJpAotLbbqhscnt82UNQe4ZxVN6ubK+raZu1uI=;
	h=To:Subject:From:Date:From;
	b=Euue7jLAgUeULNIZ1I74XWhyu2n+lpE2oFZuZ0ItcPEdI4TclFuu1/XLhqllYmrqc
	 5qfziwPCG6DKfQYutkcZuXCaaDrHARpoMR9jGwn3kl+pQ8Rrk81TDTmMXw8OS0JeLW
	 ghBULtqUb6Psc1yD80dkYKXEnk0M+ZiNg1MCgZoKRG5WIi/PIYbV1A3hdGLK/CEyWy
	 qs2QR/F4u+bSkIAA8tf0ciZU8sPpoOVsTFcuZZTS+PTeMV4KpvNiIoJ58RzCWvQqoK
	 0kUOnqHhhmn/YSlOQ6T6T6QdxvJY82BafxlbaiqH0hrzF9rbVEbrR910Oajh1PP4Ry
	 i63Gyk+iEx05A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC2ACA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568039357.24764.12656586228567227517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eba205b8dcbf904af7fb2d7be6f4623cad0399eebc3dcaac919b5f031d69bf8
Date: Wed, 20 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755680393
