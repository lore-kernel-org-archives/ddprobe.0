Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65583254B8
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788378636; cv=none; b=FRnO3JnXoWw2908+UxmqyzBYRFz+923aELFSj9K+Woj4zqdV+DTIhE5aEVhJ33MjZIAIBdnNpg8Z9lIZeZ2dmKJixP3DhHrjnTP6zqlqZ+Zoq5rtAc1SXTEp753ImqV8OnvfYBYq/BMO4lptNTPotxSy8rE+FzKt/7EELnrlISE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788378636; c=relaxed/simple;
	bh=CA94CeXx+UcM4lj5FrnIjFXWTgrZ4DEqWtezww6mrU0=;
	h=To:Subject:From:Message-Id:Date; b=dhhpdDUHymFLRDjDge3BxS8SZfBwrFPLdJg3Sb1FLxt3zP7NnVYssQjPwXB8JqJqNGcG0NnRKeqkaIYyKEsITbk3VkBzsSJUlHqTAYloclygOV5zxulK2u0+tgNNUIiQHLw9FACeKAFqPGAdSoVATq0wBRe5x3myWVR8TujcQiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVcA5bZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVcA5bZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4DBC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788378633;
	bh=CA94CeXx+UcM4lj5FrnIjFXWTgrZ4DEqWtezww6mrU0=;
	h=To:Subject:From:Date:From;
	b=XVcA5bZk+3FHWUk+a30FYGff8pHFhHFRbd5wiN/+EThFQ+UbrW+YuCu1Bt/BwIQgx
	 Je2ySxDY2TgKXUOWsRMFcbFNi95e5Hcr+RQrXIYhYESMow2ZDu/kQ0L5WalKnFx7fv
	 VFJjMhcTtNhLIXyoT7qZnCkkkKjmVTB7hOBmKCdmWrIkNSc3PH0SA9gcHWfMD3uwQP
	 ipgL8dn0kQYfiddcisgW42El5R9jy33O1P3SZf6U/l9VLnh6i4qxnRg9ssv8V4dqNf
	 co8HzRgpLLxAUaNRll+eg0/U3gY1+ECbeSLGA59658ODzgN1J6+JfJT0BFo3Gam2ID
	 2nymugGBFs/5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB325C624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837863369.11730.7137698802406775364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e3a27a855a6fdc682edfada58160f81808ea3b3b335d92ea27ad89bbc120e2
Date: Wed, 02 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788378633
