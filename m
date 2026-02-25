Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEF73115BC
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772045693; cv=none; b=rs32Sng5Uvy8wpy7QqGxJ4Xo9FQEnYwhseGpm8r2/ttnPuqCl4/RKk9c75SrGSRIZrnC+5vVaq3kF0kW0r9LfJMaUbRrRZbmwl2UYeNdW6Op4qkCz9/r2GViVYTDbyLzb5DgSje+cqXBcoWFuHOvNPyigPDthRSmaXxDkxKWBDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772045693; c=relaxed/simple;
	bh=eLoB9BDDWF9yQmOHVY1arRACqsn6bMJmfGe/wzdOuzE=;
	h=To:Subject:From:Message-Id:Date; b=iWTpgvQG93xIpDc8WwyUu42gMH++FpUsAFCmty7JYDzBea2Ms7VlNge0cQf7PHKEm5Gjh82ChtB2BcM6KMcDkUvnD/M4JhXwGGXLmS7qIf0me4zvV/EaiWwfnCoVSDdCkT8YVfE63Jp4K89VldnhPUBZ40vfFD+pmqAVrQWZtHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRk1qHMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRk1qHMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B8BC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772045693;
	bh=eLoB9BDDWF9yQmOHVY1arRACqsn6bMJmfGe/wzdOuzE=;
	h=To:Subject:From:Date:From;
	b=fRk1qHMPdG10MJy45tiqNDY9adbUPk7V8ewAPS0O0ESTTGc2QY6weZWGN4WtXO56o
	 G7xDi35rVd3SNPRP6xwx1GaxnTaKM2JUjGsyAFVcaOxbg2ypXvzYxPachKTblnvoit
	 OI+KKMuPzKpCn594pKDsW/D9RBFMf7Zsc8IFlQApR7BznGTlk22z9210lkEuAiol56
	 x1c+9RqOPJaL+NTG/FCTTAHxDsQKW4hk3tN5XfXyBzd8k3QxTFwyNDcbCRZ+TSQ4vZ
	 exurJUK4MRB2BLMPmdxbGlFWqj+0OlFc1aeCIvfIaHkOYaKKehgM6q4ZFfPxdwNjMV
	 J+zuDemOVETbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97755FD377B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204569358.29823.10912143113903889069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19eb8795c85e1f4762c6361b8b3ed7f15f266efbfe192ac0aa944bff9ebe1788
Date: Wed, 25 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772045693
