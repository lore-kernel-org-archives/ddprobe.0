Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC6A19E83E
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738701954; cv=none; b=LpnXXF/CBVr2uTuJnS+/d+JUK4Btgsl1EWKYxSFd30O6LaZTnp7aLHLhFEr76LTBiFN8avT8JkO30bqKCF3aTXSoORT1bFGlGZv+xJhNri3BOmpwuXa5iQ2Dmztic89YzFCCl7aZja6MtXLKdK0kAf0QPHVvEJl/Padz0za+NGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738701954; c=relaxed/simple;
	bh=HWftBYU5LsILHB+0CrjaEwuUW3R/9WXZrJ5AjK50Jog=;
	h=To:Subject:From:Message-Id:Date; b=gs9IQKyl+nFxScLZoSfcbJnPVHlxna1DojLHUGWRXL+AwRaYwpkMvX8bbFIXoimNfcXY1JhEIj4+0VAqMpB84pA3D++4Xil9xaGqjKqQMkct6EYXk+irF605RQ0yo/Z3L3ygrksEQLXQhpekA+NRNi6oahMn37YK+j7m+0yUs3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4UhEIT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4UhEIT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26ABC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738701953;
	bh=HWftBYU5LsILHB+0CrjaEwuUW3R/9WXZrJ5AjK50Jog=;
	h=To:Subject:From:Date:From;
	b=N4UhEIT90MZSiu1KsUDH9PRrDjYwUBzOQgVJPULUjkHcuMIEGmnljHj1UC3DcuN5z
	 RWjijYVEChfMixRKjxZMmd/ECQulgMgiQdSPvG+TIXnTAOFOewcQ0om3XfYPwOdCcM
	 +WliIO3TPjY/4Skoa4sEnDf1eNJwbjVer3q+d2W6OpyLouNjR1c3y4/02CCa6Qv+nu
	 lROT9yw23NgMcC75NqgSMxSc/u3XYmH/OG3ERNu4aT5DPqeTeQklLrtkb+9VB48crN
	 nAg1MruFs93ShsWDod7H+DrFSTeXSGQkZKx4/5YX/GT1Crtmhf0Cx05USAGLG5me2+
	 kl7BPVX6kGpRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3766C02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173870195370.5410.8257563899052697551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0882481a6151ed97437595525d5141c0fa28c721034d741b9cf919151119389
Date: Tue, 04 Feb 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738701953
