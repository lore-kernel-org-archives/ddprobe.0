Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1049530C63B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772763894; cv=none; b=f1InLDRhST6R6SCFOgf1ROp5SLJM7vwMNiUvQw2hb+I/qpnfzUnYF1DJ6AwjgdAozUfOVp/o0YzEuIZpqy0c87gpJ5ste/hM/nvigbUVqIlq8saZ7vmM6g9U9to0d9a6lg+kPH2HNpldU6JoDoElzP/8mpzmGPCuV20SoQlOxWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772763894; c=relaxed/simple;
	bh=R0KrlELJCd4jwDcyQjXtIK/CzMMMHCFOVR7HyXhDkUw=;
	h=To:Subject:From:Message-Id:Date; b=O9F4kQaBovXjO2DWjkc7gLmXgjKOhatZlPHimf82LnwdiTR12OHqW6Q1e2dk+EXEAiLTCFlq5wa5v9QzvdvSOz3KxgeLSfY8NqDtKKnuasPUWhRfpSnYpZmskGSNlwKQaXxMoBvtyioh8eJe/CtymoHy7tF/y3h+tHGjWyQEZms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkWGeIRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkWGeIRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BD1C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772763893;
	bh=R0KrlELJCd4jwDcyQjXtIK/CzMMMHCFOVR7HyXhDkUw=;
	h=To:Subject:From:Date:From;
	b=OkWGeIREVU4B/pMr/kAYgpx9uwg9jw9fjcaaOxQ+ALPaj8HTEJcsqk83GU20iSdFd
	 RTn9jK4r4ISc6J0OT+Qaqo01miuyrm36r8ldtM7B4GZgJeMxPXGOTnm2mpGO7v/3Bf
	 NE1HWPpP0PHtzT+bwJ0muYVCIsItXhQSGpWl22Jn7NClDGweb8NpqnFBd/yTwrf1Eg
	 qBdWSNxJ8BDZSMj2x2zpgNDQoCNPbMtCcbGCYe+6XyFlX1MAxZf9SXXA28rycfVGR7
	 rXCTQq2Lu2HxD9J7eIEJjAk4V/5u4CZebElRVhuQ3rC/lEBjSB0VQEn/5nP5yTq5Pl
	 iYCeXaVLHf1ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC71F513EB
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276389357.9662.13019338810819207780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e14c45d2ba6f8ca8d8f816e068345949d092e3581726d7126120b11ac55646
Date: Fri, 06 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772763893
