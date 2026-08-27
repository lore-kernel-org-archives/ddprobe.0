Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3970515E8B
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787833834; cv=none; b=m4aP2SlNLEgXBVIghIDos+usQyJtl6xuOR06fGx1NUOCRcqwgfbP1tPZRYeS/cj7iX10UivlMib/XRBzV4nxFaOdxcL1Xr3MugTaEtND6Bkfk4ZduMZMj/OXZUR1AwGuaqlh+G+dat8GkBErl/9KHXocqfdzA9A4YG68oR9f+04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787833834; c=relaxed/simple;
	bh=+24IXDwc2C/7ee66rocPE9+UgZYoALHnNI7+xgzIIn8=;
	h=To:Subject:From:Message-Id:Date; b=Qng+GZPZHf2IyLWIkEbtAhGrvRxYKo/2/V3R3m0PumKXT5yUyp0dI1lrHKbx6zRP+22/m/dSoRUG/ImT3YJCGkPFfehqASQ6lHZm3SsWSFKBzSqiaUV32WLo0rhyFhnXctdVvLxdlymxOwS/UuECvsWXDwapZmBySyzzxkQLH6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Er+FvxF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Er+FvxF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC17CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787833833;
	bh=+24IXDwc2C/7ee66rocPE9+UgZYoALHnNI7+xgzIIn8=;
	h=To:Subject:From:Date:From;
	b=Er+FvxF7AHJimock5xPVzpA74spipHuZFKdHmGBGnRrl3I6+J6pY5yy2zhvSle2TJ
	 cWcHtKoH2uKCXmZMi7XVUyNqRvxHApSmo4tIKDOzK+B3vZAPHgtjyerrkxRa1Dy8v2
	 cjD5UtXk4e0TVqgZ1skO9HkTpqeEv8olkt/nUpSemLLmLRCAuZY8ekFUkUiij0a0jr
	 4fG6k1WJzH5Sv2vVo146gFx1WuW7yHgL0fQKOhaLz3UsJ5YOkPStjq+wI/QH5xvI8a
	 hoXQJ+x5b7FwmG+qrXQOaqrSZmXOwK3CvqEvhCrWlx4q0B1v7KiUZeL/FXzEpBXnoS
	 PGQ9xFlemg+cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA709C61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783383368.27490.15096169723599617022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5a7281e603d76545c3475ca8fb400462df95261cc9f3f4a77e875c24fe23a9
Date: Thu, 27 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787833833
