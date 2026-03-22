Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA41B221FBD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774169693; cv=none; b=oPYp+3d3tho0jC0ETw4Unf3S/cgZ77h9JrQtPkGbjcib6xINLqxST/s4BunsVeOsdzFbKXj3DJ1JRCbevkg8Qf8O3lgeyy4gyE9oNS3MhnJtg1DZG4ntZBj1tfSjr5G7KQ8uuGXPgTJSYNXxN2/hxSwprgvtnPM1LcaKccK5ZM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774169693; c=relaxed/simple;
	bh=f1/QK5r8K9FdlEmHPKhawL+HzHIOVqfK6erhcGylhEc=;
	h=To:Subject:From:Message-Id:Date; b=OXXvneHUIljBk3UcKZsEjm9koRB1raZQcXYxoOgRrcCnlGKwVSmXVCaGxUwh+KETwopfMQwsr5C75JS2D3kT4HeGFAXyGoX0TZzUMlPFlgjVmBzYeI2seOXlz6sPXRoR/D82pXtaCtzx9wh5YfPcW/I9oGYUHJJsI4BE+Rzpxos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTuDsdRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTuDsdRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4448C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774169693;
	bh=f1/QK5r8K9FdlEmHPKhawL+HzHIOVqfK6erhcGylhEc=;
	h=To:Subject:From:Date:From;
	b=kTuDsdRLm/0WRi1S9ibta2sMmzWqtM7fJcuoa1iEA6mspXZvS8ZYkq2FA80iJgmwm
	 5aOLJQYEbwkElouJ2rQtIjuH4lonZTjbZYvwXIGLGiRNXMQlpx5dAuQ/S82/Fl6bFg
	 duW1c7kTeh2cVuYAjRSqcJaZPVcQi/Rcu7sA7kewa+DBee63rPVnxzEDSswJnZgmu+
	 3nOzm1oa4L9qpYPzUKKbOfxxo3wFpd6gKQ7zMckYBWM9JjH05+JxcQLrp9FyTSdQdP
	 sn5tFQEl052dac5Ns3xLmokv2O4VtU9YcxaWZfvOwXqeErvsW4RaWRG9Q2lKpnmwTI
	 gUcVjTjJjTmLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926D9FC72B1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416969358.15599.18429834386987486735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300f988934b6d69295f9bbfae06ee6e820ac066c5c377866e1ffd8944bf1b396
Date: Sun, 22 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774169693
