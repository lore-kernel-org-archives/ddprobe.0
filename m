Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2E8DDC0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719599063; cv=none; b=oFaWz1M8q11wnCRZFyGV9BuH6pwtClaBniuD3OFlhcdof15VHBtfWDuCIlUnAANipcxsRy3hFEctdzNgfNof0lc6KJsH0lwnCc+WkJ2wZ87b0Et9jF687c4ouPKr10/m0Bq5BJ1EdzF+XQLQJWFSet4IO3aG6GiNEn0tOrkDbjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719599063; c=relaxed/simple;
	bh=++2/eOj6kyHRPK9A0t0qK6LgQDyc7q/TgNRFPB4gFTM=;
	h=To:Subject:From:Message-Id:Date; b=cK2CNfZyR5wAVz+JqpReQIw2XORj39WnkoAWxpITNW9EPSwlbrX6Er67LWToS8IiZsRfeSexK/eX9P4EhQjvJPEw67ZOyyquWPjVZd1REjqgOLfYIgKxJhFoEpQ1e0jAqJycxujzRIzXamdi2HefuPBBzLD4ymdOjuXg93UdGoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPXODWht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPXODWht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD3CC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719599062;
	bh=++2/eOj6kyHRPK9A0t0qK6LgQDyc7q/TgNRFPB4gFTM=;
	h=To:Subject:From:Date:From;
	b=SPXODWhtt1j13F4fHC1K2g29iHSbZZNE/xc01Pn1i0svPp2rT8XFRgFuDifkAxFfa
	 /Y33da9O1VDj5hzWi655l5eROZmNwzapbBJxmGO7+fnhyyFLOBU52vfuIRRlpOblHT
	 Xu3l37zAfjJrO1/RJQs/ybcuMV30RdpqJcYWt0TAd0UTtm5ZmkRdSmmFPFK8bSCbr/
	 gn2N4WHGIB4p+C0oYxicDKUYVbCGpwDVOTyVj2qbyVQTrhRhyWA0UwnUf6ybfsOyQh
	 1i+Xa0Hz1wbjjb9pkQEytSzIjGaOON6SA7B2b9h1dMql0Q74Yh/Yb/mlcf2JhXoaMH
	 icZ1ETxWjyz+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1024C30658
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959906278.24593.4072395899684734396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8995ccc03afb56fd7e79f10ada65e0010a01759c88a83fed1d510098ffa544f1
Date: Fri, 28 Jun 2024 18:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719599062
