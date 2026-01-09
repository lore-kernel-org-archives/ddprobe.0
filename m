Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D96333B6CD
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767957234; cv=none; b=VsGMOehbeViOibOjgDly+96eYIUOa6+kFUnc5aei43eQErGGsFrIdf3BdgVuGE0o6k/cBvs4fmbpmiG2KUV40a5SPOJO3TCwFDT0lh2BR8dJuXQvPva6tfvqyz97gioLEncPcGrwUH2XsacP28rVAt0lRFj0yngx5QWhfql3QcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767957234; c=relaxed/simple;
	bh=ZwzZ8MXGc9Bp0SWm5DgXOS3p1tyGHCJoBp/JLcu/Dvo=;
	h=To:Subject:From:Message-Id:Date; b=bEoS0v9vRAQy09ngyS133A7qGBiBBTlCazLcHLI4C0rnbuVsO4eirUyNqXZo9TKCqn4pzGKaSFQmauWc6DyTTd8BRJef349QH3bdfNw7lQ3aihJGYctQEbA9o8UNdzud17lmeMLppQQPRGUZFuIyWmUYJU/M18DHGipSiax6HBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RA4Cu01s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RA4Cu01s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25F4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767957233;
	bh=ZwzZ8MXGc9Bp0SWm5DgXOS3p1tyGHCJoBp/JLcu/Dvo=;
	h=To:Subject:From:Date:From;
	b=RA4Cu01su/DWZCMYUJD/wwbTM8RkSSTDmFxboOgse1t3/xKx17Zlu9CjzB22HnRVC
	 U67MS8qmENbtTVLnXaIIZxUYU68EZ4Cw85iiBqlgIsB+4WO3tHkM952TPYar2o3fE+
	 9Ws4wTqHWOFbicT3l82WewOyt8L1+a7yJ7lldakf9wePx5rb150u9cYA034CeluytH
	 XHSKtgZ6fXR0T4iTg95W9FIiXYja3myfOgGCHIo90frbSs+8CgiQfSoHwAsg9pL+RL
	 UVQMHHLP8yMVA7d5KLKwsRpvZHrYs9v8sEjn2/DpW2s1R0afGVdZlJiuyilQCaBTAi
	 8yPj+kp2VtBhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E2D16812
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795723360.5306.10148427010126319366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9126f7e4073e4830979d775eb94635d7e60f9bea7152d86cab8616e284a831c
Date: Fri, 09 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767957233
