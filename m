Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D7035E949
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781326594; cv=none; b=BPHLm3fdddbcm7w0iJgCHkV58eTCS7M/QL5//7SL0AnRtFU1aW0OzmcCtjQ2xbWSupsy5k9hBfPMrIGrDI2KPzmNgzOk/cQBBWtCX/9sv5ECwAw3MAwHvNh4P+MxIyTNlEw9yPxzdyApGcG4Nude9Y9VodPW6ExEylkuq9vYN7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781326594; c=relaxed/simple;
	bh=7XtwamWFB5vIQVCk/vfpiJcDOjPY6d7rKLXH5tjNV5E=;
	h=To:Subject:From:Message-Id:Date; b=ksXWHa+qylR/uXL5I/c446C8Tv8FUJyufQA6aQtuArPsFhjItcUSpiq1dIEbPrdwtgsWFeE1TpcOfh0/TabMbMr/j82A24CumdsxAGn1Mh14G30aS8gXIzWlEWqV0W/+RRil582xh3VrHF5/r9KieUV88JyknNYnX58SjZXJk9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvYZhcNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvYZhcNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4989C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781326593;
	bh=7XtwamWFB5vIQVCk/vfpiJcDOjPY6d7rKLXH5tjNV5E=;
	h=To:Subject:From:Date:From;
	b=HvYZhcNoGvvBz7STNBwUtxClO88LLFrxK6DqjWW6UmrlSWAwxVQay+Bz2Dn9nC3IY
	 LIU85dWnd1s6iTfnaOWb9+APVs4MrVvq+NFWnEmhj5gznbbrRp0BKT/D6eZlftc8Iz
	 tsnPZ4TAZgEZ/3SxVFGjelvVFcM5dwFAfxtO01Js6Z10cnjF4y2DyecwMou/+lNz7Z
	 QIiR9UlvjWT6o4X1yUFAJmV7dJRukCXCokxU7Fwa0H6W7JW9P9Kf+8TtrWkEbtk9g4
	 X/FWBF+8oOiqZNTnz3+kKGNCRoTti60iO4LH8TtBV6sPS+md3GygRAbkUx+vRNf6+p
	 aJ0cl63gklPUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DD9CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132659368.28947.4433270374909222306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05841c8324cb88f2d2cb43a919b1d57be6d55ac1de34e8434976dabbab1ef58
Date: Sat, 13 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781326593
