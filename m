Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F52B18DB26
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787497234; cv=none; b=S0sjVbSVfPKrx05+QbKIDvS07vLFO5ioXbz8Ryt/RfrqgYELzcZzahsaC1YxY46lE0hFM2ndtRhJQM1jDXAzeThBietn9b8qnIQzdwWzUs9p0PSnofuF9ERcwKim5SQbdXbeHY5CEtlzdih5Sm58ZTQxSvn03FbjL/03bh4ifhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787497234; c=relaxed/simple;
	bh=/HjUl9U94U3aaNj+5Aowdiu3z9/heHmB/x7VXKOoHDM=;
	h=To:Subject:From:Message-Id:Date; b=jdfcAUjcvY7bNK/KxbPNO1BAjTdV/E5YYtPHMbzy3r8u8g6DZeksm/v+E9HPdx+mF76E0TtqwJlxCYdl9IYLfRlPFaJ+Q5gZGcrYVCclVl7jfFWzSSoPngC+rk8k9K/+K8yuwy/cU1wskxidBz01uREf/u0+PTjGAjXvUUnDvaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSFNQRIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSFNQRIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF12C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787497233;
	bh=/HjUl9U94U3aaNj+5Aowdiu3z9/heHmB/x7VXKOoHDM=;
	h=To:Subject:From:Date:From;
	b=SSFNQRIsXNBexmv9bUf6jG2l6/7kSaBu1B6ziVOh+ymBhvWSTzaym/LZtYaxVBCzw
	 bPypzQARSIrpcvdVyw0v+9jaLnMr9Oe+ledmARsaCUOCu2WWjBJfs61m06/2mBEnor
	 kTvtajlKmhvFbnOpm2e68nTkS6Jk2rzOF19waHc/l7LY2pMBbYP2j5Pu9X8Hf0nszP
	 WiN9L9UkeqClxrg71YB3+YHn7l4ViyIg9aH8/+Cn/KQGAzm1yMCw5fDlDSFiF6k7yb
	 ABFRdj4frr2W+4/INzINOf1a2VWSYrbsQ5Kli2Xuv+3nfA+pdMz8yiopw1UQw0Si9m
	 nbn0fVQRGgPKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6C1C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749723369.20691.5943301505340173440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e99bb4134aea0f562f876a174d752dc3140ff4463f66005d93d7d196b45601e
Date: Sun, 23 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787497233
