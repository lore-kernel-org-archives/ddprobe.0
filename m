Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0376E329376
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768846434; cv=none; b=oMGDnAzeZ2S1kUBherMX9fZ/WZEwGPpmSbksMc8U67kLOH7idKmbThYjhlbqwiYmxOlNzUNmQX8tQDcOOcF4scbiaOitdK/jOHJRIB6AOmTV7gSlT3KN4GjLU4zOsSa7M4Yc/XExB3sWIwdrkY6faasVPKjPo7NNwvwXQigr6jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768846434; c=relaxed/simple;
	bh=pYqQn3vMFbvja1/lyWkJgCHNLS7GXZBonPdVjkgJY34=;
	h=To:Subject:From:Message-Id:Date; b=N63fT9YpwZt/djijBHv8UU3J0FaiN+iQQhAD88WIigTOi4jex5kgL8I2sJkA60vVt+OGikUlVFFVNMIvbBPLh+u2DU8AcHK94D9Z4X7znBQnsd+MV/pnUWt4qmhJgdHXeNW1TAn6glk58M6Sjz9AAkClLEeuebvIbZz9nvkGy28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrIttBTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrIttBTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E455C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768846433;
	bh=pYqQn3vMFbvja1/lyWkJgCHNLS7GXZBonPdVjkgJY34=;
	h=To:Subject:From:Date:From;
	b=hrIttBTTyJOwq7m2pigkiswo7JXxS1HvocJVOT4OqZaA5yJFjr6e1qx6WwA2dWR5h
	 y3iZEDLjk6C6t5CvR/dHcm8Z+3vhBrgBXuTa03wRgLKpX8mck+PkmslOpyE8HsWej0
	 uGn+9x8LHiNeY6rvAjodoWk/q7W4NgcKY5x+c3r9/PaWxc3DtfxPXe6MvNVx4IUt+X
	 FZhBI6fT5L0Z2t9F4FsV1fm5xy0n9MBUG0GlzN0XVuVF+b5zvmIFMJML3WOU+aUn9d
	 J5JYPnxKHEa7ry2Ic3Jk7UWAnFht3iWUoAq8jizjmy37HXH7JEpIXDtqCPjsxs1UYY
	 3v9kH3Rjs9V2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90729D29C50
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884643358.30797.2766298839705944495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561102e3633b61eb6f5d7874c8ee0e88e2eae79707fb25d32d807c9f33df821c
Date: Mon, 19 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768846433
