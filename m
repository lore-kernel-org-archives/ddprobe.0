Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC6518AE3
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773879294; cv=none; b=feLAS6P5+pCcSArrNA9ZTmFhsYEXa/L8X+mYjDWjPyAXfkZrwoe6mC0teKzEdUQOUqjaQtR9p611xoquOsp7h7A+8ql6tMU0coLrAc9+oeEXutA2sAnnvMbtPZmzcG1EjINbRNkelpqK0bzLjFG0UiVAElm5x1RDQZrWATGzhGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773879294; c=relaxed/simple;
	bh=qYq5mB6vGh5GXWSlFcbOpA877vHzdtVxQhXX2k03Ye4=;
	h=To:Subject:From:Message-Id:Date; b=m8DEHsKNT4t8ub8M+hCM/vu6w7+A1nK6HWtIzmkq+ab6zyX2PUgYzH/kQ/Hzd6L8ceIgAIZ3I/5LKwxEqbEp40cJZkY8PNfKisgAYzltu6rnPRpPImUkiicknOuFlyyV/b0jZzQkGY7zTGgaNUFZds3tg6xS6RWkEM46R0EW5M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7c06vc9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7c06vc9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6412C19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773879293;
	bh=qYq5mB6vGh5GXWSlFcbOpA877vHzdtVxQhXX2k03Ye4=;
	h=To:Subject:From:Date:From;
	b=h7c06vc9lJcfzE6TxV5DLT9VDJqGeOa6fZ26vUaW2ycMOmRnWwIexW/adJCCHqRpO
	 G0rENwauGseOSaJ0zjQL/Ei1eywFwuIabOdt8aflk4rMKiMboD4Bz05iFxJIjOREIr
	 oc/V/DfPh5wsxcajaBkg20fYpAUUEycjFitiiBbgL6qXMc9F+XXYnjLENPs2H9YQkZ
	 u68M9vRm3DThwMFAsnriLfGFL2r4nXbIKOQWhjUyBj7MQswTW6nvEVu8sc4DxWhgQe
	 CqfUKQ+dQPB5cVHdpX2/mAMfK4OxHhcWvQCp9H7BWH7fLiUWdwtOWmWNCDQ/yoH9J3
	 H+I4SgvaPO8fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA51088E58
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387929357.24401.11737289255647549332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55acb5d049410da6a5f38f4b599e8603c5da66f8df8d05d8ac5b77e9f2cc9df
Date: Thu, 19 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773879293
