Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08829395AF2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791232834; cv=none; b=gAfQdhN6kW3fl9wjTKlQCAkw81947C2inXWroYB3ZAnJzmCzbZ3MCELJQEvmhkMQqmNDRwFCUg9nIvyLckxlDJLV351sZBFc0YaTINRrCh8v3sHH8xEx4h5yEcKjRndBGtC6Sbpt7S6jAUGZ4IARb3fFvyQMh70pXZeW8GtpsOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791232834; c=relaxed/simple;
	bh=x4+CSOrFQDFf1GTVlvEW3YEDG79WrojOxsqKvpG6O+U=;
	h=To:Subject:From:Message-Id:Date; b=L2qTWHLUThFaQAT3RZ+95luYS8Quksxj+bFG2743qh073SY1d7fc6yVLZCdKT6bfnGMggq40MkHhhpZjQPYxTHq4wZwbWr7FNeHytcz8acLBLtLtbuBZDnT3kjzYjHv/PVIDbaJWHWgjvZDdS1ALYKW1OeMqAyXbhPQKedYnjyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEKV/b+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEKV/b+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFCEC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791232833;
	bh=x4+CSOrFQDFf1GTVlvEW3YEDG79WrojOxsqKvpG6O+U=;
	h=To:Subject:From:Date:From;
	b=rEKV/b+m94dpuXtZzOP+tAezQhU81piZjFc4cx1HQo7ksHuYuc4cC4fVGC9X+dI+y
	 2BMUT4PWwnn7sn6iKCHsaRW84D1Ig32dEXnSR+I33U/3I+iEMXj2yw5SudmU9LyYmX
	 SmO3NxiXYaghB2vOM/xiXStcwQb9X9KVmtsChFNFWTVYwWV8t0aW6Gj89wx86PaIKb
	 LjKblBHvCgoCX5XfFeiexGP3xW/pSOuuGWRkYKbUqBI5ZwUyjCrPib069bvbh9JNm6
	 D3ezlD9mRCemHCRcFF7kAx7clMdk3eDOZ0yEx0U8TiCGJx5lMO/0RC3OmTKlc7AKCL
	 GDzN0SsP38WHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC59CCA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123283369.2089.3690419601633007073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f59acefba3c4a4386ec7ba00e559125fe3d0c53bbb113ca696b1106d0fa045
Date: Mon, 05 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791232833
