Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443DE38944D
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786551634; cv=none; b=WUJGrg5jDwe8FytgbPi7DELzIMjIOmqdHEaTG3zKW/BVmiwa+B3WREFJC6tbp+I2q8zNRN56Wc8PNgcCb/IBBFt7el1A1qqYpdzdxazR3FoFS3G+cxn0IBZMNelQn6ySz2OA2ii+CtLxn25AIOi5RNpFWHFtnVb9aPveiCFWod4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786551634; c=relaxed/simple;
	bh=BxL1a2duoTZkQlEZ2j7njDU6CViA1gC5PLjRj+7qySw=;
	h=To:Subject:From:Message-Id:Date; b=FRWzLR32C2QZjf6O1v9x5kpJkrSlvKq/Z33TUsKxXppAsLU2cQrEg0WymwZ9DhR2oWU+LfvsLEFekJnKHKYGvoPrdpouEjyede1lCNQL7VXGx6Nyhbo+LE0+062EAsoIw2nRpHHcEueoToTWQcBag44zqKxEAvq46P5h1hnFnv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpMdcAeV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpMdcAeV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4C6C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786551633;
	bh=BxL1a2duoTZkQlEZ2j7njDU6CViA1gC5PLjRj+7qySw=;
	h=To:Subject:From:Date:From;
	b=OpMdcAeVkADqPGtUERKy8kPLBThoqqLAO+lqJd3JOes932Or0SJk4KqPsV197EGne
	 q2JsVvXvw+BTXI7B6VQyTcjnM8ODPE5IcPxbMy/PuHKSfZ7AodIkLPKukqa66p0fvS
	 Ld2LO02AFIynaRQmPs7Ocg+I+YY1oXeuH7fZloOuWi5x6ftPld0GLLY3YGF+ufqjDU
	 Pj5V4XzRHyf4FFshGJ1OjbKYBsfk5DkzeBzj20x95RuCtlJOHTICaAA9SkJMbiNofq
	 MGSwdgj3n7jxyIK871fWbhWdAN7rr1WQsYjMeAcx7HcOgJcnrFAg37GXH7f6SE+BdK
	 cVTDXbrAjM46g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B76C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655163368.3591.12038458469430332892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff1cd824cbc36c812b42849fa0a638350385bf48a2975ef9541c6b9e9059ec9
Date: Wed, 12 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786551633
