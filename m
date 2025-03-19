Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1BC33985
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742416794; cv=none; b=CfEDzh//7CjHTlBI1K3SM54GQCo9YvwTJTMAGjNfprpoNcjFQrbS2I+DIEtIfBkTcMYBxNG6nSvJ/QtFOC0i7YwxMoNvrAqXPwh3MFrUFPhqR9L7LsiZHITWrgl7pYGg6bKyIlOe0AihSUmBeyDxhwK0fqLZ5LsdvoMkyMIeq4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742416794; c=relaxed/simple;
	bh=nXjWhVYKEk3Sk9ZY/ogkuTCIGvYcOOojqytCv8NJtQQ=;
	h=To:Subject:From:Message-Id:Date; b=KfNfy3rkxf+R5yi4Q/1sc+m1p/ql7iYIBgZI2nxhj9k0rfV7pwy4HtJhaOkVudZZLQL1PM1AvcPu5x7JIxQX2yM3gfrzhsiaayG32FUHkOVoeO5FBxDWFWkf0B5SFDD9UOBxDPr5aBv9iZtwMlV+qkWyQMu13xoySaxM7K6JI8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbUsIJto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbUsIJto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AC1AC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742416793;
	bh=nXjWhVYKEk3Sk9ZY/ogkuTCIGvYcOOojqytCv8NJtQQ=;
	h=To:Subject:From:Date:From;
	b=MbUsIJtotWcCf2vtCgMH4OFtQDPnOJ1eI37eba/ndfyj+SJQV1PbUdZQBDrnu6eWg
	 H4vggkD2muTyxm8vMZt7kKqPERFXIJIy0QjJnb2zLuC0rQGXLnmk+LfFEiHCcyZ8If
	 5cB4TMADlUHIAOk5Dm7nstZbaB8mhO6jztU6sYFUhCgrjZrStOP4JFD2aiNe01KZrt
	 HHddkLif+8gRPkb3FuS+xBm+FSn1pKgQZ6T9KoxseG3Q+XGk8sdbOUD+AitlQZFrRp
	 h2qbX5d4ISmY/qNF9yg1M8mieRZ08NwfxccnCSashVGOxyCCPZjBundQQKuYcvUVdo
	 kBXOtGDegpsqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926DCC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174241679359.3091.8590801376023127248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175c3b80f4feee8996c05e3df39fde589cbdbe89fa16cc9866f846abfe16023a
Date: Wed, 19 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742416793
