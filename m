Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C873B71D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791465634; cv=none; b=LDDO9dFTxzY0hydCWzu17Ke9KZ2DHZZ6ruvCtYZeH6wj8QJfUygRNJExRTBOks7MK3haWvSaTUAvAY9ZIaaPyV9ufDwpdWFZq4o3nquk21e6tsAU55BYm1AoWYdo4DTQ8QA3DUPtnNFwwG6qZ3V39wIS4viGEmHC2N/rHU7u/0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791465634; c=relaxed/simple;
	bh=uzJbDqo3INYEA1u9Y/rn41rAM62sXzUUefleq2nBX4I=;
	h=To:Subject:From:Message-Id:Date; b=DXr/AzD7y3iOkVBPDafEoOgJA+YqlHQo+u0k7ktOwn2VllAFyTg7pzjPDJ2Cs78ii/Ug4ebBuIA6AGz2yryCu0RU4AYlfxeBwblNNEtzGjisIbJzzlWophRKRioah0TynVRZ2fzgjHWCDuuobpsijOeF3FcenfkBdyoQnxqc69I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsnvgOC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsnvgOC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5625C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791465633;
	bh=uzJbDqo3INYEA1u9Y/rn41rAM62sXzUUefleq2nBX4I=;
	h=To:Subject:From:Date:From;
	b=LsnvgOC1R7indqxml5/VsrCmNB25UMUAZh4+ERGzP/94waV2p77+hS9mUmYubDixK
	 OTEI97Sn2Gsex9tWgtcvxj05jnNg+ovC2VvMYTEoKikdPj600/8XtOeyG8t0oZh6cb
	 t+r8Mp+mfS67LuyLNUDYygm10diH8V+vK6l5G+Gxsc/JNzDS5Lbihkt+ksFjx9oet8
	 p+grQ6FTwcgH8+cqfPwWZH5QXB+6fpALK3D1o8u6+1IWT72gMdyDLHLjyRz7A8KBRb
	 WYMPJNNZjdBOoD6iDUkarvpl9s47XeyDS3N4U3Fy5FmQAritKBiNpGwF8S5PCz/ldR
	 ItlzQ6MQPVNng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE015CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146563370.18426.11294082912828716903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56dc58dde943d6eb1bea424d14387f4f4059862dd60111157a4c6c8b4eadc99b
Date: Thu, 08 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791465633
