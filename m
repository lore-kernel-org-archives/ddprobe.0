Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F17C4C6C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768751634; cv=none; b=tKzIEpFvQE8mpOFdJnSdopgdS7iuz5CVFLAZpntJwJgHUlvJd+Wsif3ru1scJG9LDaHDYOncl34PQiwMynjmAaFg90WDQWmR2jhOqUHzWEkQm1KIaixmX9bLLDAdtwnhLWffZar2NrmvDQixW+8K61+8vWDPMXkjWCpsLSJruas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768751634; c=relaxed/simple;
	bh=hlsJgeihHXCRdG/tAq5fBKmLtRsmGBbs/kP9lNlr5F0=;
	h=To:Subject:From:Message-Id:Date; b=C5W/+pmgf51qW3jVkMpTqGYLHIOSwWcrr2KDavC76881B+5guH14ECwxeF8vRvYcBvzMoPdXL+2T64oak5y5K9bkOHodt1eOPLixWhAu1luYneNo4tuEi0Q0h4KQp1Rj1+TAmorttG7xttYP9Pg9G9lWnirjdHvdl8Lf5xhrUVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emwt75ou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emwt75ou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA6C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768751633;
	bh=hlsJgeihHXCRdG/tAq5fBKmLtRsmGBbs/kP9lNlr5F0=;
	h=To:Subject:From:Date:From;
	b=emwt75ou3vSKsL8D2za3aLHHAsJQE4/lu5ZxPx2rMRXJiUktXgYaxK+3uUTgco8gZ
	 /2rKINGJQ+19wfbwwRdmeykaMhDoShARyAVsH8sbx62VBBqG4lAx+tvJllki0FG7zT
	 1HjQ0ktlDVnhJE1tW16X+IMsSqkQWbsuMGBs6dau6GzLKbFnq3/WOu+3mTnxS5dZ4N
	 6tqWPVKEgJUgSRfCnnOJhabg+yAF/u0eUwJl9oPCWInmnZL/IKGpk0sEYsM+/AmWEW
	 XtjS3H3ftV6VcPEPfgReXD+s9umM3EZ6y+Q2J4NSy2JszvLUZ7AUwyGzZzy5H1+9O1
	 jGwfC0UmPbfbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92848D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875163358.9714.985063609409670881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58880ec7520464537d36ad5bd8bd3201a0c613a290479c2b745660c3f36f74ff
Date: Sun, 18 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768751633
