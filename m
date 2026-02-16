Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F04B2E8DE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771267494; cv=none; b=s1M0tkscLR6u6yCkt+et7ORYU9Q7ZliQ3tHPBpc56wEnUc61+IY1AKHtMzMpeKZ4qJH0gV8GN3GGsQSVfn+hoEflBhCEF4mKA3GPB53zoxsyyikD+I/1vQgrihY0EIA0ipV6KVI5yGjxOWVlwRVWnDweMOewFS4Widu5WEiM7HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771267494; c=relaxed/simple;
	bh=g/XzvAWN/oJNzFtgoEKXOHzn0hvMOFCki0tflVg8zg0=;
	h=To:Subject:From:Message-Id:Date; b=Ip7rX53dS8AqGY/FXAtHQk8WZ3gzqWw/Cq6xJQ8QOQMSl1EkRNmCmuG+xmSkw2Q8eeMb42e9lqkRMEOZk3sA0hJJLJAOn5wyu9zPkymqJrqGG/12jGPaiXr9o4faZDBBfxrUGctrLyZSChbJN6tosirKunX4+ACZ2ifhpFVr7os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAcbukUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAcbukUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A166EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771267493;
	bh=g/XzvAWN/oJNzFtgoEKXOHzn0hvMOFCki0tflVg8zg0=;
	h=To:Subject:From:Date:From;
	b=vAcbukUqszwSO1qk7GWyMWzfiCRKOC/xWEYUsgqEBc2RDuDXThjxLRBIQMHRGZZRl
	 RLv+f0kxL4gWvjOEFlAA7kMPSEppLV/SfZG0/M6G20KSK7eif0ycb2undmyzr0l2ww
	 d1tS4M+bJc2PKJ1KX3i3g1QuDF0yX1aa6gmjrj17wMKm9hlcrdllRGbZW+2nfOMqC9
	 4jrhnqG46yj+Ip2qTFdrBnEyDVZsAruSxW7M19GIDsigUvjVC2uYjWNPkfJ07R6uoE
	 0eO/UVmvqLzOeJ7ohP9Yen3TMKDaWidAcWTc/iZyCRHHsC+m9OAwe6woQPcnKBJiHm
	 Pem60JNpifCHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91530E83820
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126749358.17569.15588755696908600109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4779017d3394295a0c87a112c9a15c36465fa532246eb441df34708a384c1435
Date: Mon, 16 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771267493
