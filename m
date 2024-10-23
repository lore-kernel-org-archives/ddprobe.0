Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5C71CDA0F
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729700754; cv=none; b=MP7Mt32EVBKCw3MklIO8aG+czhQQ9YIUIP8RGP8b7TRqzgr2whebU/0Y8olKnNZXPqEE5hCZHu09FLW7+hi1/vzX1WZ/9nhPgIt5U6XlA4GnHWoGSwBzWnNqu0D/z45oq6MhASUi0ukvE8GjnVf4c8IlZ+9d7YJEMTR411ByhRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729700754; c=relaxed/simple;
	bh=t6PWN+05oysDaswC9/V+TfSOLoy4Fu9Zh0TZa3lbMJ0=;
	h=To:Subject:From:Message-Id:Date; b=te2bgjbxjRjdhgSm7VeJh/fp5zesOnk650zMAeDZwZRoz9IPd3kX2GF9fvvd7bX/EHdEQDGKUCLH1xsWS3JAhn9WnvpQWV9eAqSTU+6N4H+/8FyGIdP5pxnkTa//yKwCh0E/Rgcf0JwKtvWafs0xLJF/PGgDp0EWUqt5cIb4dJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2FPnag1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2FPnag1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA59C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729700753;
	bh=t6PWN+05oysDaswC9/V+TfSOLoy4Fu9Zh0TZa3lbMJ0=;
	h=To:Subject:From:Date:From;
	b=Z2FPnag1WYvuzJbgxkIXqS6vh+ZqcVQ2pCDTCCecLIzSOfMZ7KouXHkmhSmSSkx0q
	 MT2DJloYb1TkGXZ2FUWcV/nUzl89jiL0yVKl84Ef+NyX0MJiykEew8K7iXdrnP/onm
	 qqBURQ9OxLzz1M1swB3vCEVXhI9Im1V4iN9+Wnt6JGWfHpcYOcCYjy4t2awkq841n5
	 fC5SQRqJ+6/SiwPvF7T7l1LQ/9Co4ewY5Cemd8Xm53U7bzmLBd8+UzdIoju2syKWTO
	 SQVAS5Pd92uRz/bPDHmUgjx0VF/18B1ld3LO2gEqBz/iiMifwI+vSk0NQFyya/8qFA
	 blL2HNynv3+yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9541DCFA44F
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172970075360.26232.15129008106206993539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c468f194d44401ed07a1d666b84716c8d4f18e472a3342842692ee791c5d496
Date: Wed, 23 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729700753
