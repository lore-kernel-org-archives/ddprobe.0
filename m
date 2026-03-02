Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B75938F254
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772446494; cv=none; b=T5t5fP8zPqSDCx9yC97F6/l4WG5FEyS3qQbAWAPsAgW3iZgriOF+gBxs/hXJHeGeQ6XnjGjwhBYnrFBhjCbbJhmcu4T9xfHoeP7bxS4FG+7Bg7nv8aBE3Sf3ayzThVVHCLQKud7q0SRiHJAtDWJ3f/gGa7p9BJfQNpMI8TodFMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772446494; c=relaxed/simple;
	bh=KOvFg+v2MzL/uFUbwoWeTAMx4hi9NefAn9GsidA6jyw=;
	h=To:Subject:From:Message-Id:Date; b=FOBmYOijC7MrErqMhJUvUzr1BQsR7kAzQ5fshu+48dui9GyvNvqxdfeHPVMNoZXVtnSq3/qrWu2FIA9YcmsZKI7gpl8Rik86CxTrDAil3mlsQq11T/GOFP22NqDrELynzLmzKap3od6X2WudQDwAHmv3Pxm0VNNXX/3qjvp8TRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8jEoDG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8jEoDG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E08C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772446493;
	bh=KOvFg+v2MzL/uFUbwoWeTAMx4hi9NefAn9GsidA6jyw=;
	h=To:Subject:From:Date:From;
	b=t8jEoDG509U2bObbQBxml3wKMVL56uEt4ntEF2XstmOie5DPNCrmPE6QEqGYvPNSz
	 rM+3umeCXlJ4h27+jQCr6Qwc++vCOjoBfjPM85WeuofvIa7Sin5gTxvTEv0tK/YWWG
	 UaQ/PxQOxfMRYRsY0+vfEGGNUZ33F4cLDyGqKDJVTXLe9sqBNKzzBr1ibZkkUF1Bj+
	 bJ03QDjgbMPJ1ISpcTmxICNX4bDdJXLE1/PmnhVgOdRh3g9d3XY1BHHToCWXJiUuA5
	 14HxeA1lVdDjYBIAwhHl4Uhn8o+AeYeqtnwYT60bLJrbIjtaZ7vGnvbf8DgDO4k8th
	 NQVMtJivRF2XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5640E9B342
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244649372.10645.18217897803491524157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667d5ba4040b7939373b73602a4308dcea054c2359f611cb559c36e626d7112d
Date: Mon, 02 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772446493
