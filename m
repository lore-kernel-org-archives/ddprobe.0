Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332AC30D407
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788328234; cv=none; b=fpCuoDQpQ5xr7xGPn1jD8CtM947+8wWpbFV422ijl0DHaYTRyq7oqFuvWbQi83C/acq6WmyQQvpSGwrgoePEyAEbAHrUYVgtq5QK78Tvv0IAYXsTqXNlzd/7ujhiKi2mJeolgsegITYO9gCqVk9vas4TEGjDYTjvez/V5461HGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788328234; c=relaxed/simple;
	bh=9wh+xUoUAA1GxSgDP24IDFMG6NO/7n3nggKdObrwWt8=;
	h=To:Subject:From:Message-Id:Date; b=GUkWQZUDpvPemCERfGJ+Ou5/0K8sHE8PQzZhObYk1H9NrWlSc8HLKk/zxyPy1W9XGGOFI686cpZiYLRXi5VMWnGLj9yxKcxX6VM8pj76GKdaz6jPim31IEI5++gHtbsJv9ySYfk7Lazt4j5aL1tgmHw3TAm+LCtuMFCKKpo/O6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyhlFs7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyhlFs7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC61C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788328233;
	bh=9wh+xUoUAA1GxSgDP24IDFMG6NO/7n3nggKdObrwWt8=;
	h=To:Subject:From:Date:From;
	b=hyhlFs7hsXQwWJWMstsgbYwqZ9AZt7g4ltmAPlt73dB0SRYy/g4nY+7X7h8wL4pwd
	 oGcTKFJRf3NXwzqDTDdgMpt4y51A1b8BdfwiS54PgOzh6TQZ38SnXCfZop8FwU9QQ4
	 +xJ2zJN0s8OoAuivV2MAHBucK+6WSyPXZ+bgBsCLE4IPpEanUmWuNriNGk2sVmYUFI
	 EDyuU8qWz3iSEEPq0wFXC59ad7/mtJX60zQXrka1YWPP8x/s9gwasQl3yM50H07gHl
	 eqtUPQ1hHHBElFxbuL5q0DnCOd9u2wfQD5DssgQdnbG9ZEJGiYOdc2kFHdiepo6wJo
	 9bX1DbsgzZfBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB291C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832823369.10720.18347642041714129005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7756e34827b2410da9c2b77c76638de2d0dda99c76259da8ba5216bd883e5688
Date: Wed, 02 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788328233
