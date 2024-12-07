Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B8522C6E3
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733565954; cv=none; b=ErJyAhyy7QxZn3HrJ6DfMphTuAFHJLVjEku+hvsLKaENVaZwQg1ovJ3711GtC2/7+L1ZVyb4NDfOrHmaJupa3dO52ng4O0YuzINI5fgvvcR7Zc0X1qrtpOOcYa+ZfIYSEE5cXSpsi6YssZ2gxGiXL+8MuMUknEz9zO5IfVxCBBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733565954; c=relaxed/simple;
	bh=L331EkZZ/0zUGWotlGVBcRWL/SD1yn1zebKPkI0uqUE=;
	h=To:Subject:From:Message-Id:Date; b=Acq6+t9u6OsVBqbyCpmMt7t+a6UNSXwzXOy+Bpz2HxGgKQISuceKFRP/MCqV8B7pQrhMJXYGuzCwqmHU4DGaSsBCKCVmgndIAqRtfGhhrEehmsI/ef0kKOKjsnnn5aO6K5LvPEpzN6BRhXHqD29nqMgxDV7p8mi1IFn3FMW3OvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EltmjvK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EltmjvK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB1CC4CEDE
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733565953;
	bh=L331EkZZ/0zUGWotlGVBcRWL/SD1yn1zebKPkI0uqUE=;
	h=To:Subject:From:Date:From;
	b=EltmjvK0oAQeGNB+kyP/eJGAxl+BsfX4dgBLaW6pC9GQWjcahOpXhiRxKeiIhpfQ8
	 J1ploaeJfrszlNHuXWyHIJ5+uIw0Au+NvyTIcgxKTm0onzCh93XpvjdphaTLA6cfij
	 clgkLeuTOnY8F/BpMeWiQds9KEdEYmgGDAxByekPVH8VB4hlTyYigCAF+mq+wuFw/u
	 bQrTBgVn8Bx1YU1F85Mt/nqlWLOlsoI7AfauNozvXOgGkuEtONIx0d81caDLDPIeq6
	 QuT52MHTKKllBBHEecvRnB5eIEBDNHAjrJgeKDH84ADAITDIM1cEPQ/lEuhMpp+tiB
	 Xdph3RCbiT8Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B41AE7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173356595360.10330.11412707944179655851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f63597ad3256e1edf68fdb75e3a1a0c41b88279f5193272385f1b68ff6998fbf
Date: Sat, 07 Dec 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733565953
