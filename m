Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A20A4086A
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728817554; cv=none; b=YAM1L4WS7h0io31XAJdusnR4ptIp0fdcCP5AYaObqrDDDqzGLG0DNhDyZbjAaJ+N/0ppPpXVVnyiyI4+K9Q3tTS3i2AY2rdEA/jc3ozD+R+t9LVBySuLIEFVQQbD6XykPrZYqbiLdsHtwsxm1QBU1ln1dYDPa2H8Fj9z3S6I4ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728817554; c=relaxed/simple;
	bh=MJESeljgRWFzgM5CuFEbiIHday7wCqkW0EU+5QVoSeQ=;
	h=To:Subject:From:Message-Id:Date; b=KEi5wi+WMeM/yQEVjVHslHBTdJPJLJptiQpl1G2m7Bg+K2g2xrYqWPGjQ1+RkHp2NTTAF74yumkkgc7Qpk9e3XqZlcoUpj0jLxM7/OB84DgeNRHeCYEYm4Kyo8KBE0yJE9aOoskGBOn4IfjA7VBifKh+Xnzp928OoiDjNGSJ7a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQQTZloa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQQTZloa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5E2C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728817553;
	bh=MJESeljgRWFzgM5CuFEbiIHday7wCqkW0EU+5QVoSeQ=;
	h=To:Subject:From:Date:From;
	b=iQQTZloapEXs6hjS5ZiQV+M2vsf8P9ZTI3ZamebY+LPjBI32tbJarpnScN3YOW/uQ
	 3UwBNMrlRvamOozcAXbGOXmINJ9BfTVcA9DMhy/TaUe8ArVNDD1mFSG1vtGYqqwL3D
	 l8B2I/ygf7/oiKHZo22oc9eRUtoSrliCqkjNR4enuXocuUWyvX585QbOlrY+iK0e8d
	 AlpW2zLHB/s3oLOhRnyByNBCJuTyHEZ3JgRBr9yZj0dox4UWf7FDB6r2sCddhTfZBA
	 3pBb5MGcJ2u6jmAx2p13Xo/hzoOAxkSYN2TRJsp+vo+WB1WSzOFFETICuUkzPqF5nl
	 mypvmBVDGLfhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F89CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881755360.19519.17257762627541317237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc6286751899349a7aac257fed540d86416b90ef1c0cad9bfc448f3a4f4de8f
Date: Sun, 13 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728817553
