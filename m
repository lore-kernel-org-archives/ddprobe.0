Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022A422EEA
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708334297; cv=none; b=aeNPbVTv5axXx4aj96c8Xr1abfhcNL9G4jTILOnQmV1xu3qR/4NQla/K/J4b/njVFDWTOLocwqjHXHe7EhNuB7Xte1IIHZ5y4NY1h4EQgA3BAXm+rIyfKEiRyrrZQYjF4m+9elQd2JRpzNjbFcuRlixfR/5/K6Fh0d71APy2cY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708334297; c=relaxed/simple;
	bh=YyUYj0EJf/ow5JS/QB3lGUOoZIotZH5mf3Lm7IhIvqA=;
	h=To:Subject:From:Message-Id:Date; b=sI96U5ki8/oQ2N992t9Z+20HtgCOnHjFG3zHbsKxKQ7obix4ogbGEqqFBDiIjoMg5LDF+qLSnKfSFZq59w2XQPgivvyjKQmKftE/TLo9ry9mNbj/fKLDL99Vr2AjSACy1c/tCEefVgpg/fYOyLHBZY66TKUjSExeEILsRzkio58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaIiyAML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaIiyAML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79DD5C433C7
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708334296;
	bh=YyUYj0EJf/ow5JS/QB3lGUOoZIotZH5mf3Lm7IhIvqA=;
	h=To:Subject:From:Date:From;
	b=JaIiyAMLC14/VIbWMkh9gXzEIQ9nuvuZBNlO3SY5T3J5GXjce+cMkG6yi3uOlu3ML
	 zkZtRK0IU9VyPuzIrBUpYTmvA63im0ITjXieEX/TZBXta0e8iOl4jkV/Ith65L+RU/
	 BXcMBCR2uaudVEA8e1IqoMKsltKkdZ5wv+AFkfojbsZyMnn/XRlre+ChFK+rye+bSw
	 yS+3nHrQnkowdi0JsStuECcQSA3uPjIDSFLKaS/ocmigg7CLydfKwRRtlldoEhyThF
	 EnZxMIcGSJh7P7GAarHAlBFV6etBzOKoBetsn5WNbIvyaCEywJuPUAu052TEVQxXwp
	 XGO6DIRgSNIpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F54DC48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170833429638.18766.7480636305328628171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83157ebc79d983ef3dff183f64474e850babd2257fc813e109263a35caba5c09
Date: Mon, 19 Feb 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708334296
