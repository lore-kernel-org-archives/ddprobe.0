Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C883ACEE1
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787112634; cv=none; b=E9PASTqOVp9wgSqPKlBDzNmTx6/HA8vdITC7hZn9lZjvVmlUV6ZIFPgtoz9hQpHiohcYj7sjCPjlPH5A8CS7xMd3NmrWASaKBM2huVovS/qKOh/NycCKgSxzWrDcBeO8cySjdGlCNwZusJ2+EpOhih0HhRukWX4b2ZdRegvFABE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787112634; c=relaxed/simple;
	bh=kE4yFR/11QUJVa+m1dfZYGARfEbq7D0V9P9JUVLstr0=;
	h=To:Subject:From:Message-Id:Date; b=Q33Y+XsBkWQJC2xlJ9+Hdi0D4v60jAUD4WdMZyQBxMXxd4Kt5esLgmlIQbJQzgJyZ00hLkg3aPoG/52D75RhsqhP1+ST7cclqe+OXyqDNCWxq+0kga4l2CPmoe5S4RfMTxp7FgMzuHG2WWBKb4ZMsnkI9Feg9AV0RWqobU0sXIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTJqN6/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTJqN6/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3A8C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787112633;
	bh=kE4yFR/11QUJVa+m1dfZYGARfEbq7D0V9P9JUVLstr0=;
	h=To:Subject:From:Date:From;
	b=DTJqN6/b6NMDbg//bPL9J9VA6n+Td6g8fhPMrcyNhswA6+itvXMyYVlki2UeDXv/m
	 PndyUGsV+PfGOZGQ0pJloUv6S/snfvG6czryFNl1CeRokyncgFiLoAj05DIFi/17ze
	 rg3gCbRFO8NdB+BhGVsmOhCxGpB+PKLezLSJNFaAA3gg240XJD0/KeM95/GN9aoC1f
	 06cNLiyYHUJAYaYyUAHHJZDufm/WcZU9WoVN8LGRnIOm4B7M27NK2jmE3WwAAKHrpk
	 oXfibm4BxEZ6rCLESnUZLuw4DieHVnpp9DRGj0B+g0xnPR3csRnYWPJQXQIu0MKkAs
	 XAw+Xj2B+ry7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCDAC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711263368.10566.8580661896926493594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53cfbbec8e7d4f357224298457a09ecc3558d38bc7e14f3d5d2fb81c6c405d4
Date: Wed, 19 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787112633
