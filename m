Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDF4381C4
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767479634; cv=none; b=CZhZI+o7AgP1n59uhOMX1O5f4ISxK0swAaxvGylsvkL9adufhsyy9+PY+KnyV+VcEDZlCbCkvr3eAkjvN46WqoKhu4thsAk3xKUzmmr8WAnI/VmBRKOyiLqGWzGZ7V9hQ/ZrlwJNrU7Ns4nBO5Nd8zumn8vKXtPX0RRlkqQD/20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767479634; c=relaxed/simple;
	bh=HZ/SPN+Zk5yCdCCRvLH285VDjN3maTE+FAVUN50OjqQ=;
	h=To:Subject:From:Message-Id:Date; b=d13TTbbdoLf6HZlwBtxGTBwr0rheqVtXI3NqmfBSc2Wr++Weiyj5TdyQ5q1BS2fC0MGciE8vjKknQ3SmPxz4ZFeOcC+8DCPjg8yPpH2F+YtTkgFpldDvilxbcsQAjKIz4zP3lw6IgFAe/KBCDSQoFQpqcVxYToW7saI5Moc7vew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOiUuf2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOiUuf2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76F4C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767479633;
	bh=HZ/SPN+Zk5yCdCCRvLH285VDjN3maTE+FAVUN50OjqQ=;
	h=To:Subject:From:Date:From;
	b=FOiUuf2HWTgAZcHg3p38QLhCTYDr3SUnBaunPBDVxZNFGNtGCuWDLoODlscch9ZRS
	 2ylXzmai5gT/XmZvLmaxbssWtForah8tcXCRWhgHKn17ghiu0p/7HDTMgzd3fkHnXE
	 Sk+kCY3OX1eVLPh0aI9w2nlgRX7+9+8yTpfHCot0ycpvudm0Ksj6kTUZQUbsmoj6LX
	 gKuq5Vj+Y+ruJRNSkxctmwbkzurTrBPbV+4YBJld7D5GDlaXMxw9CPvsvNbGCJUuW8
	 ygCHJRX2auGGWuFBgN0EcC9ePxnFCH4GcNo3kO/1j/q1SbPV9bRusiNWWKaKXzLZP9
	 B/I0krDOUo4VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96230FC619E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747963358.24528.7342628790946140212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3e60776b1eb797f5114f407f10e41bfd6eb43629d89d3b292733a4bfc5ff84
Date: Sat, 03 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767479633
