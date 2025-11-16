Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175DB21A453
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763260854; cv=none; b=jlmv5CD+krfi91yn+d3gCjQqLVFmopDtPyQ3HhH1TdYHAiY0lLdOQdxCZ85ubjMzMTCJGCF/EjJCPS0ruHuiMpz3OiLFTT7h2cof85E1rMvAhWDhC7++1b7leH1Srcvp3fNxDlJubOO1qn2i36hP6c+IpsXNoMzGA0uB/AhCteU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763260854; c=relaxed/simple;
	bh=WW+uBSsxWBNBbRrLVmZxFq66G1gJbkXF99FG0FIEYdY=;
	h=To:Subject:From:Message-Id:Date; b=Na+gg6020+LBVJ37R8cC4fevoqWtFEDOa4HfHtLauY/0hdAWa9lDM85SomZ4GFsmiLCg1DtLqtplPfXE/xQczY+a/6NQFO9dR5HQ1o7gtsbzjOt7oAn3I2BFIPzwM1AD5MJTl3TETBq4NrJqhfPBdc3XYKlx9l5ULv/wO7OoHGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uE4plhEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uE4plhEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FA6C19424
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763260853;
	bh=WW+uBSsxWBNBbRrLVmZxFq66G1gJbkXF99FG0FIEYdY=;
	h=To:Subject:From:Date:From;
	b=uE4plhECCRkmAZvIPu02+/O9BbAM6b8HCXrUFs06zJulVS+5y6I6SDn9Jbuku5r7e
	 HktT5yDHUObOYoXzeGqtiBISmxekR/xGZB9KB33FMsAB0edD/H26JIlMj4pi34aBZc
	 S4hS07AuyVWDjWUT4Hy/vHrspcvatVibY61/4nWStIQay4NJnrqtDO3EERvDE8ozvr
	 wPqBfFRPL9nsxbHFJLU9saCiEwZ0NsSUVSNIlT+E/4MEuq0ZZbxg4yTbtmdnm0rPvK
	 55XruzD5lhbK51LQmY1vYz3WthnNBuJiHAga7WCbH08gwGTRRgMm9gwFn4fzLmIh1d
	 vltv4uWgd7hoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97583CEBF91
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326085358.14715.377982714988378836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ca2f6414179212f6cc53e20db3dc3b109a2a7064156169c1f133dc329f8aff
Date: Sun, 16 Nov 2025 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763260853
