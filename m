Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886F8ED9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717832243; cv=none; b=Zr1nnxsBVGjT6DXAd++womlrJ1MI3s/3BfPfecmiNn1rLNezk4HB8A8glpkaagOj0y6tjO7gqS2wopwaNu/ysktxyv0ICJDLIK0p3Yc/iTZb3WMyQVZGLvl5h4WOzW6rotiDZoFAUv2P9M5ED+FLpHodSxe37LjIsKO6wcFKQG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717832243; c=relaxed/simple;
	bh=FPGy6WPXVOmdHmyBrFlSffHtrLIBsI4/P0wjBmlkrRQ=;
	h=To:Subject:From:Message-Id:Date; b=fYgg3nohsvfkWBdFfguOzDDlebpNeMjrQmcZlv+LWL9QEBbuSJfwfLYB9TYB8Egprw60KwOK5+45jVWn0MFXna5ICpqeTpMQ5Gz2cTapFx5hPEa/TqjfWOcI3pxvE3nz5UtUVeTevBzZqFxFyAJT9MLvJuIHqSx52JsBhGNOGBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJVnFLih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJVnFLih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00FADC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717832243;
	bh=FPGy6WPXVOmdHmyBrFlSffHtrLIBsI4/P0wjBmlkrRQ=;
	h=To:Subject:From:Date:From;
	b=UJVnFLihpOc+3qbT9EKWaPE7ies84ZIbPcro+9D3iRAH0TiNaRppXEj9P6/0A/6JA
	 pDIgoBqmK4MSVgW/Pjty97BzNirpivS+AtgArz2Vfv+/i+lxzp1Xqf9nqm/GTZ4Z+O
	 s6R8Fq+1GNmcEmNN6UH1O4jzuDbZub7zCsQ89RhsWyUTliw8SpNDPo4W1mHq5JgxeC
	 Huab1JmkdXHDY2fZr4SvUOhrsA0SCqSIqeY2e3hsVgajv+vjXEUwHT3KyR1ZS55kVV
	 K2eoYCViV7OOQqIC0dpgFyYxqNBeH8fqRG9OB8m1xUQqDOEAWDNdYE9B96GruyV6wt
	 SDmU6LVt5CkLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE723C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 07:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783224286.11816.9972334520843164330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460821e15d0beb519b00d4fe1698ceb8acee4fd236e660ecf5b4436575c0a182
Date: Sat, 08 Jun 2024 07:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717832242
