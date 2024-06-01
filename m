Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD7818643
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717223063; cv=none; b=OZYqqUBSmvNcRrGr71feR7RnZkTiqqkZclmIRuZoW/LkdQ3eF9RfYNvgBw3t7kIhYHiVH06S7uQrT/qX8SXSNsqKniosh1d99ipcTGVFJNRTqJvSEiejc1bVuU3lBHaZDskSwE2aqaPS0y2y+J+I/Bqd1fDkIt27Mu0rKzWXq68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717223063; c=relaxed/simple;
	bh=Rb3QVaN+9c8R4SP4vjWclgMN2GIbxC8+pbmC7hxWDMc=;
	h=To:Subject:From:Message-Id:Date; b=jfyqQrBFZkpi3vgedqmxR6h+BXjNinp0xt6/hgqLFS9ilpqR04ithuS9UyuNopWgrQ+UsaJtSIvjxdjs7ITXwCpR7GK3e+/iI11mVzSQ6R//V/f/jkZSxm6EJHdieA7s/JKfpWdRkhMrLuKjOXCrNA8fdYwubMZj2op8oSX4MR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEAVQvzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEAVQvzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31D1C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717223062;
	bh=Rb3QVaN+9c8R4SP4vjWclgMN2GIbxC8+pbmC7hxWDMc=;
	h=To:Subject:From:Date:From;
	b=tEAVQvzLW4Zoc+bLedv7Dp8x+XtJvEvqyaN2KPMG337Y6X0Jwluh78bRDZuerXGHD
	 rxlC7a6SQAd6QEQINy9XIox9NmcR8ytQX7C6PctFA/UHMww5P3fwGJSS9yN3lJ7CAI
	 gVYxhgUe/wAsJ0KVjqIqL7V2csuS76tbIsnHbpjS+VdR5mWTa96R8J+VxzFdB+9n+B
	 0cLEv1m/Ir42O0oCRDjOYgOoiVCEbkAAPveorB+vCSMLrRQvIaIyBV7FCUJ1dA4dOF
	 YMAsp9W0EhMlanpZcUux3DT2os+yvgAFc2XHGUvI2a8fPtG0AY30ozbfoDACTRgAfH
	 gCQEsyUd7LTIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBCEC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 06:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722306277.12510.1803737201837800165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc35c5659a7d7b4a8a0c36f1172bb0338297bd4309a30dd60650a68135015eb
Date: Sat, 01 Jun 2024 06:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717223062
