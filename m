Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675BA37DEA9
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784686714; cv=none; b=s+qSDNdTsmAuhBweeFL/TCP6aTHyiA39UuvVpCeRDy2OA4FR3mK6Z+uC+IC+5Li5d+UPMdDglhELU1KGd9UIErfQ+aaQ6n+rvIFnuA0gkDMTWT2Jv9n9RMYvX2LY6Uq7TObiCLNRSJMWHKaUHPopILv3ORsPJtV5f7ilAwlzYpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784686714; c=relaxed/simple;
	bh=Y96m2Oy/AHwB42f7YKhWMmsjdjamkJBZ72jeQSroVGk=;
	h=To:Subject:From:Message-Id:Date; b=XgXOZLdTacPXlT07ShMq401r5mc+9fuMytDcTBsCQg+9jsLA09krp00h8OU3pCcoKwnh6mCFiCii0+qv+ybnek9geWgEX0z2Z14W2zWTR9+zx5IZHnA6xxYR3UcXzsdfiBACuYtB5Kwmb0Hwc1TJ9OONkVC900ON2LiMn/ixa8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOajPZuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOajPZuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FD3C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784686713;
	bh=Y96m2Oy/AHwB42f7YKhWMmsjdjamkJBZ72jeQSroVGk=;
	h=To:Subject:From:Date:From;
	b=VOajPZuAkvrsiDZNZjW91KnAcUbdlPigqk0PvB8ssxCByr/0rTfZtmjXr6ZNqPu2D
	 p1srxKMXa1cLgEZtXaD+inwmrr1FEYNxMTY9xGJP1aJVp+/SNF4QVWPw7L6O0mGHLe
	 Bouh6nyG3Z6XTd5zwGBBE35JcUrZ6YA6EdJD9KtnzfQjFlWL+jhu9ucuQxzBRGwx4s
	 drBzmqhFfeJ8RHWt1Fx8xoux1uXDnE7KQdHQkBJ7wIPjS1D8gcpYFIlGoZP5ZWlQiO
	 uV+FKntv4xxNVMFo/Y+p8iutgCOyPYYIBMmQ9eX7hpUXtBEjgDfggky3AWONXIYG/c
	 HU2zYpEdxH2+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9B9C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468671369.3075.14664599483385975180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcc96d0b8276158ed751a2ee6d54bb45467112605c1c8c54ca249efed6bf88d
Date: Wed, 22 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784686713
