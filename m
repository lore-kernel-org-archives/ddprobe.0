Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524975CDF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782372454; cv=none; b=rnM6VU4i+e1AgAtht3NEh9QtjUo5kKJB4u0gN6h3CwFe11Mx8pZgX9f49XVhkWudlKDOKCaAzcjmH38apqhNH8tIMvCsvFt0CbTWj/RtKHOiOG4q0ZWyS8MHEm9PrtIYelBlm+81zc3QuHzhLKVDpTVjqegzv3IJ7US9OaxutDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782372454; c=relaxed/simple;
	bh=cXbZ3iIRADq8OusmfAHvOieKRAj2SpFUItl4NGLrJZQ=;
	h=To:Subject:From:Message-Id:Date; b=skMPG/R4UJZABG7uro3SYOMZxATqK2eNAYqTU91kH4Yo9VZhDxtvB0FXFriNyPDWOz4olHBOTHFxiGRSCDLdNI63JDqyFdWuZY/ZKLdl/rHq9GgmY4r5omcqK9f9e6JgP6fVXKBthbDoE24BVCTmYjQaX9u58g5r1ilaAHnYgrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWInlS12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWInlS12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12A6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782372453;
	bh=cXbZ3iIRADq8OusmfAHvOieKRAj2SpFUItl4NGLrJZQ=;
	h=To:Subject:From:Date:From;
	b=dWInlS12+V8kRxq50lTnWj87r681ka4po1nl4fEqYbvHibhktQqrCb8IMj/EDu64s
	 51/8ZxjZ6cIzmD5pGN/tH03vRTKAtYu9zFylMmRWP4NwwZvi06xMScax+Z2ZFqkcyL
	 Fa1dmoiI5paC4SI15extFHDIfGv55LQp+1xUNeyY0AbUi5xKSA1PjQuOIQMTVoAG3q
	 E//nUh+1HojriwxRQ3qEXcToouUlFv11xTNyoDnZ+X1/Iby1xc8GsGCordDp2Qp6VP
	 G+8OuEfzGTfHD2v1I3mxz0ry0Bz6woKmaIgp8/d1bZf9gDEXZQ5f3cynLQbIbUxl6V
	 JnGGdUFQ0Yz4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C4DCDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237245373.31569.9578788466507515154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b806fb12c7313488fd02f1a2f45c24200b6bf4db7db084a703f674d179d578b
Date: Thu, 25 Jun 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782372453
