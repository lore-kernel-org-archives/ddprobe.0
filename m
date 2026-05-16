Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DE22F12C5
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778957434; cv=none; b=to6NmZnmJP9ysBN0FT5K5h4XbfK7CJL+pwcqnuWq7+ddoNi08m9PFa01IKZocN9fFTiHt2BcqjdmeJNeGlJUrcTj9jhRG3ACkR67Jt3Hdvaap+2SZ1vJMLmq3udSy61klGGQcoQtWJvN5er5/t5E1MOiKwfOJW3T/fNAcLWp0CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778957434; c=relaxed/simple;
	bh=DEoPtNvZYNz7CKu8AIK5wm7t+QaE41263FQoYmrd6OM=;
	h=To:Subject:From:Message-Id:Date; b=dsjhF1MnNFLbUzGTnBtSeOX+lGxbVOWU+6XeftuveABoPjI7nUdkr9iN8adznG4bKjLkjcT/x9MCynYe6mIK+G/G4rZk39eHhFEBRQ+Fv3+jcbwIqBrKH7udG8w48OvWD4FtRjEoYkrh1XhoJnW/16vEA4izstvul1/2QgUvC9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpgzuzOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpgzuzOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C870EC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778957433;
	bh=DEoPtNvZYNz7CKu8AIK5wm7t+QaE41263FQoYmrd6OM=;
	h=To:Subject:From:Date:From;
	b=MpgzuzOahCyRamgMWyrzOX4Juh+CnM2hjIT8mMOt83nVzVhOGcjL1ZY9PMMuZWTmH
	 kYX0B5gv69lM8WSDffEG4huD6YogZ2TySoI6Swf4r/BIkAM+kSsgBjGTY6eWVpkzZs
	 y1oLU91QLSF4kND80i19z44rsKDddKx8B/bsWzhROg9YpFslcgYPrQNJwya+YztWpf
	 L9NoG0yS5sWkTrUMZNd//qRQTOHS4q4uG6XBjunlDLodlCUA0J3r1QAmuIfBaG+mB3
	 uiJyTGQDH9kYHJcLgf/e7f9Ef9qcfrpLIbOF0wTgEo7dYw+hWEi2YqzkwUgGFi1t4f
	 lSysm8YayqKhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DF4CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895743371.15349.13005995604648719679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93e6452f1791bafdabfe5a3e1013cd719f88f3f38d7fed489a93d391b6fa82d
Date: Sat, 16 May 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778957433
