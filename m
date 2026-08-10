Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D9C345EDD
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786377634; cv=none; b=bUT4/y5AtDGPUMG5C386BGDitLmTTOGQUYiVZoW1TjR/XlolurU7jtTTgNgD/ha9V/7MX4/lPXsjFcrujlttl1cbC7vGcA2sSA9jJU/d52S7LzTIWxvyIfRKbKZI+MPLer0RRzNBYotPqAG4zjU7Mkt3H4MmTCRwLfLEy4oSwgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786377634; c=relaxed/simple;
	bh=aXMgy52BtZuE/DhxrrYafXi72x3DvJHLUyBGSdEt5So=;
	h=To:Subject:From:Message-Id:Date; b=pwSoLcqn5od3KccBPThOh8Gs/s2QOFkF2wS6xDDPZYlK0di/t1Z8Befs+n73sS2ob+TVLHmM7ic+DZ5b7tQ7qDzq8md7M6i55dMFS4lf7qBg3AD096CkQOpjePZfi1HpqNjtgdhnu0OoiNJubzXIw0VjGbP4kvR3D1qrLtbnZuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOvq+pM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOvq+pM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA647C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786377633;
	bh=aXMgy52BtZuE/DhxrrYafXi72x3DvJHLUyBGSdEt5So=;
	h=To:Subject:From:Date:From;
	b=MOvq+pM7bppU/E0PnjaNWVbw//AZtMYS3xw3bhcADuLa2hEkIVxVKaMO6dq9o3uUs
	 ifJl/4352rWXodzc8yRcNbsp/5no1C9rjlznhz2Iwokr6+EDkcNGfFZ8p85h0/Tmsg
	 WTkukPZ2FNYLpakDX0QbvYxMVldZ31Kz25U1/6u5DobzLd77QHqn5ctYf9Wvax4kcT
	 MDV4ehqlcawy8wEay4DBZb5nKguH5wXORRdnAQgQURCcLwjpTXgnyFP12Pv/PXVHkP
	 p0IcSZt9rtDA4CTXftj1F+qiM00kq3ntehT18+67IuR4DLgaOFlfiW7nM6kH0Baxcl
	 Vnmx7qkhqelIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4101C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637763372.25013.2217086575165530623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6f5693b3d0ae6fb9297c9c76a3340b786066d64f9e1b96ffcd96e9772b6bbe
Date: Mon, 10 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786377633
