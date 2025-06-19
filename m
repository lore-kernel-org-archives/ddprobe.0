Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D6B24167D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750315195; cv=none; b=kFrIks94/EjeTRxwtPrrZLDyfWNG9P8/l/qQof2brLi0rCnywqllULOb5cGT5N+RTFFiVxWBPVukhHuYkoUl0b/KW75ACg8zO+2sBDotFOzlKhUcZm1F9D0dlVLFZgV+ewWowP1D58RoW6XQmpsaWbAvmOmoLZZFHu4wVu0wnBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750315195; c=relaxed/simple;
	bh=IWWGOfmwBdr+DX3pnYZPIkq16eJ8moRPa9aXEA46+Mo=;
	h=To:Subject:From:Message-Id:Date; b=bP4+MFoixni7OP8x/TcaAJhheMdpOAhbWblZOLsAq+jf75P01fmChEnwdSJJ45pjDaMEUEb3+tjMnZzFv1nHxAX4BFnc2NzUXWPpIJgcR5aCFKIgqmlbzsv7L7U2G13DYC8GE2uyb9o2RBOkOMGwlARkuJKDEvrUDATgqveyrDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iq72vBZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iq72vBZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A721BC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750315193;
	bh=IWWGOfmwBdr+DX3pnYZPIkq16eJ8moRPa9aXEA46+Mo=;
	h=To:Subject:From:Date:From;
	b=Iq72vBZh6S1qoQXipr8y57qrtFM5z/0z2YEIpJeyiUaD6ResR3Vr2IoN2xZaOfRJt
	 rgXVeQWt3HAVyLG9Y+5mX5evR4r2MpM1XEV33G6rgjqYbyn4d6Pqaq04wnznSe9dCM
	 0MPkDSrCADTCNGIPCyDw+UFn2MhPL3KgfA0gd36c31ynrjMHLeOib3JmY4/H7G2FoX
	 ExfrhPwCg7O0hruI8IwOGjcWP9KzlPy5VvhiyKG/puwPQ6dNH6l+WwTRXBszPsHGSO
	 iSgeRENT5GIVcF8nnj9STrmm4jUqCN6G38o5TTng0GaPENDYrzF6oi80vf+BzLq+l6
	 ICADwwJHeqV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B48C71159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031519358.3669.2855535944424388545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0956e46ad834f393812859b639e59d0bbf343a9094846fcf038f8e95fb7b68
Date: Thu, 19 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750315193
