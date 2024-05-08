Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D2A8BEC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 05:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715146344; cv=none; b=Dp5MxGd/ZLF3qOY4Sf88B1Vnta5DR+jNq34TohSKfrgpruYypnTIFtpc9UuBcc0OqvHr+z1W9FvHktgMFnSQX5bnyeYH17T4K8tVnmUrzltVk7C5+rLnqxRaQpW/1RcIyZSlEEaKrNj65iqjEdF/WpWjhqVWNSYgHj3PCAq6DIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715146344; c=relaxed/simple;
	bh=ivHF/L6ZSrYKyDacd2sI3+Pl1XjGBx3/a4l8PwM6uSs=;
	h=To:Subject:From:Message-Id:Date; b=sPDYmw5SaZBa454970ZXvJIJyniu8tcf1l1t0/vwXEBX+G4Uq+iUbLmMompeGmCc/nDLaGrdyUxVs/5fiiTVZ0Y/M7/De+OK+n33VV9sUuuJsqIw4YQ2ICzCQw3rrQ2qO88VfcXsTaW5sJLpIBPJF3LLUxYuHd4R7IdrNWUxR/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz7txOUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz7txOUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE068C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715146343;
	bh=ivHF/L6ZSrYKyDacd2sI3+Pl1XjGBx3/a4l8PwM6uSs=;
	h=To:Subject:From:Date:From;
	b=gz7txOURFsuB8HTI2gxZsInv2TWixkp2OPs+dF9LupVzcYpae6mCPbvRVKHcPAqSM
	 6tw/rCJ3PawJ8h6YBsvNA+Ttdv15F25eFnj7D84MxNY/Fgy2UdQxmyP9XvXrMHhKEa
	 3Egl1fOPX0jPbMX8eKXU0sCIS6DVqEi3bJUlIXqOByiYODoK7vtugy2Hg9F8Qoc7Oa
	 A+TYUcYCAqDxLJPF5RKVwNcJywl42M4KEVehB9Pl/VrY0Y5j3aYnoSpXRRXC9UV0+n
	 jyM47laLalOJShg+DIl2dqQbfGqXbzSQj7wfsgBR4tFBr9TgV0SY2JB1EeOTGqa3Uz
	 malQOPWrcPlsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9EF8C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171514634278.27073.4049368533429452501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e3ad91ade51cd82365ebf66d18e171f237a76bcff9c544ee90ab06acdc6867
Date: Wed, 08 May 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715146342
