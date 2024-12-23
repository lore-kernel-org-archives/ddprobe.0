Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276D613C80E
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734972354; cv=none; b=mQysRIvxNJAdE2UP/sRm+x/JnXWBPYavyrF3k6PsFho0HUF4finPu+3h/ZhzgKy3uVuBlabridCytPwoq+xjOI9g2oMr1Ddi12F7SGzSRBgBtu/1X4SDB9+qWNLKgS2PHiH8U0GZaeXTDIIW9Ubxl6SfwDk4FQYD83Klv9oHhbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734972354; c=relaxed/simple;
	bh=Ooq/XQyYA4Y1/rta3dJvS5ozHyr6eMHyDoedD2uR+N0=;
	h=To:Subject:From:Message-Id:Date; b=a7+2gsSER505vi0TMQFPEE+sYJfiiqwR4zq9xog1D3uw9jK9EFp+OaLIb+e5Ftq/dHZ6uSVgkC1dToHvS79AtSu9Cv32pTtOdbS6KART2zIzz3V8HkBSG+DoPTaqI9bTEjU3Zqz4o4igFV9KlhVYbnk8lOv6HvNKzN9+hfr3ZlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B07r0dXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B07r0dXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8834C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734972353;
	bh=Ooq/XQyYA4Y1/rta3dJvS5ozHyr6eMHyDoedD2uR+N0=;
	h=To:Subject:From:Date:From;
	b=B07r0dXGPKljUmm/kSWW1xN7MN3t3aMxBfQe9eCSdqXU5up7ph6KTCzydVjtJ1AuW
	 Qw+THmLYIR2vqho4wZ+cumFZaXOy80Z0FGckN/qnWvqHirqCHbTJ12a+eZHwUClRAL
	 0BJhdcWiflQUHk9TKWoVsw+1xBEHErqpjc5OsLKy0EcrRVc8+iixkHIwbbwCGjXb3e
	 fa1Km5LrkK0rK0lbBTAoCYASKBXm9y0Xayiv1EBCnCrRkNcvJ7WStkWSv4kQTC7aou
	 fpJ5x2ia5nmVehZIbaS61Rt1zs+ijNqUbVLZsSv76TUDmMvVbPAH3O3kal2fT7ibUm
	 2NHQ04Q+QuZUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93525E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173497235359.25562.5172152397764164892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafc59631b6ff0cd663a4787bea06a8b6be1438c0f7f76f8fda1a2ffc5072112
Date: Mon, 23 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734972353
