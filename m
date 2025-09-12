Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2635B168BD
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757639394; cv=none; b=iZkvcLyxHHDM+tKhZZ9uNIDPQ/7BeXoJxz/e+Au+JAQwHjUJXLmaRnhU7gvUQeWpSXrz31kZadag0PAMhXacV+MCHul9kN2Dft3gl4s2fhHVMQJiU3W0rCF9c6d0wNxWd9xGRYYoGcjtvp56tYVoTYPy3tkr0+u5Oo1UwWoJxgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757639394; c=relaxed/simple;
	bh=HhFzT2FjxxvQuWUOZJLQNagm2vrIGF73yp6tpgi79dY=;
	h=To:Subject:From:Message-Id:Date; b=W27lrYzTC4lAeVkXkPVgwg58WU5UDLJTjf+29KGiwP5EbaBRtwyPyL1hWCGzmcF4+ouEMzjqpVMy0M786iAJ5qlWaqo5ZdC9EC7JM8zDAsxwRnvsLQrpHFddo8MmvYQCzHDZ0SYmPEYJ6jSQteYeWvRipLGjjJrwKTXbrmA6jKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTrdybTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTrdybTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4725C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757639393;
	bh=HhFzT2FjxxvQuWUOZJLQNagm2vrIGF73yp6tpgi79dY=;
	h=To:Subject:From:Date:From;
	b=oTrdybTb0/qKCCW9Kj7OMDK8eIUSXGMRiTJKsJyKHLhAmPdrvUPJbCPbyTn/ESO2e
	 kR8ddREbrV4vsYOxyc1ZRxtOCs9/ysmLYcLoijfEskW7GQzkLUcgK3OeNhzABXNko5
	 OcPDY+Pms5d0I4hTAH9D2h/1+aKGtygKnxqZWA9wZFkCO4VBVBqSvSJFazeCoT4Hjr
	 i7E5knwRFk1fojbvWvYZI3tBRhXRWYPlemEVNfD6a3LyzRA5/TVoZboT/gHNqAHDHr
	 U/HYsJnPWpvtMYSu4V85DcVQIxNixBGHwlEm1SMAuXXQRTpKCzMyt1r5OpPvBOqUsB
	 /z7vUwZ4UewlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95158CAC58E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763939357.13794.11806056805966597816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc799ae4aaf6d66af2fc00c42327f5a1f12cf6b3c692476f355e336ff5cbccf
Date: Fri, 12 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757639393
