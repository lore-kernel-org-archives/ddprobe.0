Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205FD12C478
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730369154; cv=none; b=Mwex6BqvjarQaBaG32qmWLS9YN5iJXFOsmO7LT/bVSPm5dNLON9WcI/Ryx2i0M6EPEOD9bd+8rR1YQoK+KsDt9ZkpPC+juxy60puXjqQ4yqsb8FW4MTag6yXPkhOZgOSOs3fLFTt8BZqMT8WU5x9BvU0Gh6YF3dTOP9mKWGdkPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730369154; c=relaxed/simple;
	bh=/MSzQREkQ6166npucGUz9IXt7UNE0horjbNZxq+1E44=;
	h=To:Subject:From:Message-Id:Date; b=lNVUv4pja59ibxrPUB0nBlif2Ap2re5tM2vy6CqLoz5QwXil2bjatWn9pICo6b2qXZUIkaSKpFXyc/ywoC3QGTVLfoz0tU70VLrMiLqUwSOx1sDfk3rK/kW2Ft9Rb7UNU7Azzenbbl8rV4W0aBEAFb0cjMF2r2PufRyZHFfoddA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJcMlQjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJcMlQjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9D0C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730369153;
	bh=/MSzQREkQ6166npucGUz9IXt7UNE0horjbNZxq+1E44=;
	h=To:Subject:From:Date:From;
	b=mJcMlQjKvH3996eBHIwIafSpPD0SHQdM0Hf+wn1yKepfFm/btlQPvc/fd8x2uyR0e
	 ZrSrl6GHw/F4C8+qvPSIzDs+6qWQNBPFkf9pP1tx4qnNcODznfeOBObWcfPGAr56bm
	 EYWurV9+iaXZWHjpqlROVY/Hw7ebd3jAh/7AIxNcpTEIKWhQf6rzIewMrHjR94ZOr0
	 va+UdzVZl14hE3cmnrWg9YWcsCx8/NoYTyfOiAUQd5ACySu/lVEeVTEO+D5wD+ohpo
	 SMsqSCIZtgBQxF4Xe0PMF88FBM3+ooDmyCSzoKoWGApgfkU7F26irAmFupG32ZmynS
	 vl2uxB0eJe1Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DB2E6896C
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173036915360.485.156664141651628705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8394a02b53f68f2f94887e1109162137455f22efeadfab20c419578271544a7
Date: Thu, 31 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730369153
