Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8C2154C09
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728732954; cv=none; b=Cs81Ys9n/8849kvbTIXFnp5FEr+UcsmcYit9zELVbFi5fBfygd4tQ5FPJUQel4AnKSzXqzCH81TkJlrVlxk1IneaWkok7+TgCj3mgtes/7JoI1B4nJFM8azpf4YW/O7yYetSGMfK7vnFvHvHvL70llWU+yj1bWvWhHUfgsfyCvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728732954; c=relaxed/simple;
	bh=SN7tFG+NyzFeu8sbqJGgSv2NFQdtgbZHHbJ3qVlvj5Y=;
	h=To:Subject:From:Message-Id:Date; b=j2/+V2JLc9bFDcwAWcD5Cwv76VIGmlRx7SoUlU0oG/JVNFVK2gayslAcil8QhDfhz0n9gcmfpaWP25nbz/rZNywjywnmFIlqHf4U9AvL1H10BPB+aqYQ/Eh4Xyffl7VXPMq4ttQZaio+9BTnxeg6uZPIxab8w1Hyy2iDq6B0qQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhCJVgkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhCJVgkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EC6C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728732953;
	bh=SN7tFG+NyzFeu8sbqJGgSv2NFQdtgbZHHbJ3qVlvj5Y=;
	h=To:Subject:From:Date:From;
	b=IhCJVgkXYKBYQs5d5lEHVD+AjXC6uAa54K+TtAwVqINbKRNqW93kgUAPPXEP1fOlb
	 oDBvORRfzfPNXco6aobG9kl0K+KdBcyIV1niAgF0Ws2dXaSIL9uN9W5QDx+VCxXymm
	 zCn3nCDzdAyXT3hnIP06wSPkmjJ3hFvbb1DGxTPNKdYwDALPggPeGmPvgF7MBSNB3R
	 rB1lVvrPA9+fPEXbozu6R/aKiVhDmsnack7aCds7JkF9akCj/h2NUTryH9jr4qV7Bm
	 B1zRILN6b1Pxc7+eofcxklK7sp8rMXj7qVz4XNwAYJX54J/lCRRdb7iLUMueSCF8DR
	 1pOXW6blyCocw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14C2CF2566
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873295360.20715.3397292197230734511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cdda84b98b0b33cc6f69e07756861bd46a2323789dbb288440cc49c379da5d7
Date: Sat, 12 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728732953
