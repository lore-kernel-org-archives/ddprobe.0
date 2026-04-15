Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA6D1DED40
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776280654; cv=none; b=qzMlnKGO5l8dvsvYg5SG5sv3pXwCDRFs4+U0kr0HvVtzgOYsd9VxFkitFzoM+sOFir5JavJ4CV7K5sA3oarNznCRHL0rjZV87GpErKmDKG5yl3iKdiFaoEv4PpV5qFfxtWsmsB+sq5/OscvfCpNoT6lUWzB4F6WHoWwly3DZev0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776280654; c=relaxed/simple;
	bh=rV+S9BH5cczSxVA2s+W60SZ78jRvsiN1ewmpyAU6lFI=;
	h=To:Subject:From:Message-Id:Date; b=ZBLGf90gOIx7erlcLa3PFe7+vnVHeGmM7QZYa+AtpyWnXPwXxcF8Pw1VyCfJTaojBKW0bCtNRJpjIMm3izVz4WwobZ0bo/6wNWVKpLpFRifxiecwSoNg0JgIPnV88cp2Jw0/rRiJpOFqmSsWdUJNntiUA/U0bIW1uuaViOC6oQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOTxfiID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOTxfiID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3A8C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776280653;
	bh=rV+S9BH5cczSxVA2s+W60SZ78jRvsiN1ewmpyAU6lFI=;
	h=To:Subject:From:Date:From;
	b=LOTxfiIDXX/Z12KGQlWNOmwWN/LRCNwjcHQw06XpoDJO6Ehu/adYOczkXq1Q/W9J8
	 BoiDx2z+WED1D6VaXoxWWdXe4UFqfqQCQx3HV7PWPIfh7njUO/HdrvEqjPP27QqQNV
	 IDp4z2E6ej/2uRCu+fIk6FDztZV6ey2RjB37jqgZy3A4ez+pzZId0qugNJOcp5KYUX
	 jbyy5Vjj7hi4kzNtSMwYQQfObhMxz8QjdvWZQ1tfVrkAY6t0zG4gvpr0AjhDrWQjHC
	 YKWJ3S6mtjlZPedDKjM5m3YmGMd7+sA11YNY2RjixeuLsMYu38mkyUWlqvK3FWKceH
	 H/5KRPqT6higw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7CDF428C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628065368.24844.2714387593214332837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248cb053f95013be9572e31613ee6a8b22a600584c78618ae60853d72ee3d7c8
Date: Wed, 15 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776280653
