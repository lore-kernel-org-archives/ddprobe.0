Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739153C3C00
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785361234; cv=none; b=CZjurODKoImGatyoHOTsm88iEWugJArRWFwzJ2OFG0G5UvaLntMqbOwN1mwSnZs3rJOKaIHTeVaQeJKqMAzx3EXu5dAs/C0Aw7BPD8Tx36KCkgpQya4wFNTmwklhnG3VF1y39Wl+gsq8F+aZ/YDmP2aRXXoTr14C4ggJ7ziChp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785361234; c=relaxed/simple;
	bh=x9DR39oM3rPG/FQVbAJlQvFKcfMKMAFeQj0mx2zCJK4=;
	h=To:Subject:From:Message-Id:Date; b=Ykg8OzXg9FMghcZviEuyX4lBjJBo6p4nWGLIgNj1nmxb+9+d438v0tm+cwDQOVP0Y/L5/97PK/2gcIPnrRHFz76JZqa1JA6/qZx1Yti1nixVc4XmW16JwNPdh6mOfUAyPaab15CBTGbrrUxn9Sli/QT0ivYsgHy/M6uSVxi23d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqF/NNjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqF/NNjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6524C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785361233;
	bh=x9DR39oM3rPG/FQVbAJlQvFKcfMKMAFeQj0mx2zCJK4=;
	h=To:Subject:From:Date:From;
	b=NqF/NNjC4tP7GD2IuLTklSUpojcvtteszivOopSivR5CWf9anCA0c4+EdaCQ1HmF/
	 tiOV2sDV7K4MUpWka4V4g/Jslw/IHe4clini+DQ7ULJQnv4ERC6wL7RvuOmsTkdBXu
	 OjbyDk58bQ56OMBeIFNZHJT5RGPLzGGCSTf0CWEfm+6lEeTI1mbp1PjIRICZcAGz2G
	 qovXfL+L8G0KpgU+Sg71PqEFLcxIRH4yxpgQEFwWBZSV8wWlkozaSzQaGDXtaFvIsj
	 lMj0bIh9vkp8EiGOxwn408/i87rYzxqmrw7aC+rAtbGPlCJaHPGCfq9GBplPx9Xlgv
	 GLcP5RmYbp66g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B917AC54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536123374.28333.4906649600398078051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5f7674fa84982031391d111c0be21fc67a99ba91e2bd5fb21039af26e7f7b6
Date: Wed, 29 Jul 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785361233
