Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4F5385EFE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769148834; cv=none; b=SSagJXn+pMM4pirXt3bxMfDcvX/EZPlB1cCwqKYVNDM6cXxMWALbtMmPlSXmEnpfsAme6g7A/AEuHFm69y4lzroZ/9WeuVmwTym6ZfTYmMF2acZu9PH/0KXH+fZnIz/0dBjPeOy1Ud+ULQ9Vp5Tr/m0CuUcRrJ72QbizQMFXaeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769148834; c=relaxed/simple;
	bh=d5670ef2bKMCec9Akkr+x8bVBfmt4BOLuux682uC6GY=;
	h=To:Subject:From:Message-Id:Date; b=ifmSW+BZgAcJUbU+hZntikw1MhXz/lgDs6u1EKmbiHpJmH7Sd61BhmK4yBXACgGBAez9JeONaWMjsPa256opF+t8AV+qkmxmZ9hCxphBYEckEG6CBpzpF2QHwEC7oevvLFH8jBgDCcdkHnT4oSjLhcK/Pba39F+1YdTuJ8muHk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8j4E6UB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8j4E6UB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43D5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769148833;
	bh=d5670ef2bKMCec9Akkr+x8bVBfmt4BOLuux682uC6GY=;
	h=To:Subject:From:Date:From;
	b=E8j4E6UBtTGTe1q1lO0IeTvCI0+gEvFKYVXuzahTtaB1PRRcK7ryW5dz0CmIQQ8I9
	 pYQXnnVfb/6owoCuMYQpZsuaksPNn6yass4GDoTIaz+il9FO8P/YJd2szl9lRlo5ZF
	 aqIPXOGWS0+RPsWCshLzTj2szKhmOpbPL6quuKvUgIVEm2Z/eNU16cY0+LtU9TEYwF
	 KD6A2e+PDJ/tpP/2S3dBJ8O0JfVUrkV9SoZyzh6HjEj51fTQ9w/FaLKP5nXdjrEbsD
	 ahjhHCIhIhnzK0b7WrVW9KdnCZ6xCc04JbhgfB7Il+BpGofZfwx3Jg33hcrI5f0QxC
	 nN8KrMjzNrOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8FFD6CFDC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914883362.24778.17532422481030957565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c69095af7ffe64b5dcd8fa90b5966314476906143a70457d498931b4f106b05
Date: Fri, 23 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769148833
