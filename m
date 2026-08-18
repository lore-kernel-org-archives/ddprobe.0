Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D1D3346A8
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787061634; cv=none; b=tBwNTsxjTp4hzUV4bqbkPNPktcP28i4j4nKG7Q56mQLdFoFDiZ91iR5JKZnjktIrjDh20SXNDQIhJ0CXOOcGlJ/p6FHoIipRshGEzvoAEgiGkPNcKgMcicBlmdHoVJzZPHLJCHfhh4BLKflj0wRU1+OvOEJ0gGRTUNopYLX9FZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787061634; c=relaxed/simple;
	bh=GXR0hv5ECDf1/BeX+YXHoQeyBCdg9EvA6HWmgaxU1gc=;
	h=To:Subject:From:Message-Id:Date; b=YD1epQx9ARKKr09kGR3UllQeNO0uONE2m1ErzW1nOQLgi+hgccG/aRdk9gx0M7n41C6m/LgY/0dsTE5t08gRrqT08KAGfHwkRcyodQRd4NawiPuDevMPFhwB4t/C5IyXaZLxEjN95DcHOAI81zsrKQ5BqC9+oMjfrCj4rnEulxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ypoy02aJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ypoy02aJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02F4C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787061633;
	bh=GXR0hv5ECDf1/BeX+YXHoQeyBCdg9EvA6HWmgaxU1gc=;
	h=To:Subject:From:Date:From;
	b=Ypoy02aJ7/o+8ofcqpcVTwm93jWESnEImXmmjkAlQN8a2F9U5GfSHCkl7Z9yIRo3Y
	 5r+Yvq8vCWpZ12Nhto45ctdF3zufGMgUN29/fKnKNgaIx+kbqw2ZvFBntJkY+KgHCY
	 NH0AQcYq1FfhQpvrrLo0Et1Pv18Uo3DcKTYyV78tCAFxiISfo4+LS8ZOYYmRKkMgFW
	 nY9MhxtphZ402QrrQtM6tmP030p2S92ouow7rNam3ZlwQ1gyP9AltxByXeFjLcNVpi
	 J23VoQUbuNzVyUb4qcpnUcqdW4ZM3u+/fmBPuuxYw/dqPJ3OAqiWiIxwKEKWVimubp
	 yowtvhZhHe15g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4E6C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706163369.11871.10643421707127127265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e92e5994d609c899c4b8c9fa751de4fd9161656e3048a18eace133536390506
Date: Tue, 18 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787061633
