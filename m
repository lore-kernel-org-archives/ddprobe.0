Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291D12DFA3B
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761853194; cv=none; b=A2mwRleVQa+AXFMjWwZhm1Np77xq7T5LRkBvtAldG7uNYPAqvSvA27QVxAixFz0Z8wme0kpsq98lDCouPtHjX7iGtIbufOad41mREO9aqiHFnCRcumoIS0CcR1d/kEdbUbeZYTcD9IZAJY/yd0ckgoZHzeBWeKAPqqR+GMLKR0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761853194; c=relaxed/simple;
	bh=g7v6+JnAhcSCCfWT367tqgy011eOfRoH9YScGGxaQd8=;
	h=To:Subject:From:Message-Id:Date; b=cBTgmVAWmu6fIx8EHuwPiUrxmE9ErqCUigV/WBROG4b3dGsTyynlUDe4eARdziQPsW/lkFQtjE22S+pocjEV0t93Z4x63LsdtItf/UtMKOzTfQyMqFn3+zvKH7pAxKgNPEIS/U78gpwuKYE4I3Kz0HS6r7e0qtCnKTQwebKvVMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCCXBSJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCCXBSJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD5DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761853193;
	bh=g7v6+JnAhcSCCfWT367tqgy011eOfRoH9YScGGxaQd8=;
	h=To:Subject:From:Date:From;
	b=kCCXBSJIhHfWmDJdb0HmeZk5Yy+aWsdJNLh3peVS7/fFSeX9tMBSpHCtRvySsJLkF
	 bKpNpDJFJLKc+/Hl5dvbtytfJQOvie6kruxQrQ0gfiMP2OXDO6RhNctgGsv87GllVM
	 gyQCdbZ3Qr/6YFBmfrLGscU50BIS0J3mETvwpOHC7ebdsIhmPCmbSMn+2v6kvTHiIm
	 7Y7hkt2n7X3vm64+hgj9VLPp89sJvWGElcGnjPJ3DvYacukZwwbu1o+WYIRUd5KmVT
	 gsk8mCLcTBKtoLOyoIi8Xfh2kPL1hOU5pcok4JZDw4LRbvYMvG0ukB1M3KvBOF4R1q
	 1lQZAvvJ40prw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91436CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185319358.11895.1206648453606879161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac976bf088815ae8c85beb3fca9ec13dc36adcc71152ebf6b1b2fe6b3f229bf
Date: Thu, 30 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761853193
