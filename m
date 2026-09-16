Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CA851D514
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789569034; cv=none; b=bdVsIBYQoGUu0vUTqid0C+lOm5SipM8VcOqvbTdNezuzrVael6Z7LctNaOhqenFwqLZitX0Dr6Wjj4Dgj8LWQBSO7FyJ0+vtpQUPwvd144qNW0fVWv0dX9ud8LAKEr9ooCA57WaPCPkFFEaIh4WjqY3c071cMTCtwIgHQixvNg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789569034; c=relaxed/simple;
	bh=DL1pEjMaz2O0ydOTp7LEERPRe2NKZLzj0qe7CbTHE+E=;
	h=To:Subject:From:Message-Id:Date; b=tfLoEhAcu9IuDIFlhwBcIu94d31cIz2G/9GlV8p8xdgtUnYM5ps1+Md7dHxO/QUwtFodiy+JtT6qivZuBpfWNLKuvW0dK0Sq/tqxsRoxjcS1Nuz54/Zz4gp9OqwrqQMlvXR24/aSd6q/Nzx+2Uj2+PxXo+PUtB7zZ1uas/rW6OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5aQG5gS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5aQG5gS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1515C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789569033;
	bh=DL1pEjMaz2O0ydOTp7LEERPRe2NKZLzj0qe7CbTHE+E=;
	h=To:Subject:From:Date:From;
	b=e5aQG5gST6IvO8Mu7x74OdfG/3MUS0m77lUgsTJdy4Fj54LFJdlXuhLetKoX4e/HH
	 VjMHv+AkHK1CxoNVxtYnHWcESBvYRCf2JpQ6XP1lglyX1usEQ312dpRBQ3jgL3Rynl
	 Cv3DCwUOCjagvlYIXtXMKaqjSy8xAgcJrpD9APr6gQVEfFYljimC0/gybinzAcozEp
	 QgJ9E2YgLdj7Phpmr23/h9YgRaCddCg65eoPCp+4GmwSBCVlRp5AoUGSTYc2YOe95i
	 Jrc73Wx170B6Yk4t2CgMbAunhyjYTQuM7hrW4g2MTVVShyYyjw+xHyiGR+Fy/juNYG
	 5N1LtAt1Hkrgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB5FC982C4
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956903369.19022.14807898691198823660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e32fd8329c22c34ac2307cd909dd610af852fe0a2a70e95137aea0f5f012511
Date: Wed, 16 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789569033
